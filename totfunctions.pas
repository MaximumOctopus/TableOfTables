//
// (c) Paul Alan Freshney 2016-2017
// www.MaximumOctopus.com
// paul@maximumoctopus.com
//
// Inspired/based on the Table of Tables sub-reddit.
// https://www.reddit.com/r/BehindTheTables/
//
// This code is open source, please make public any modifications; either
// by emailing me, or posting to the Table of Tables sub-reddit.
//
// June 2nd 2020
//

unit totfunctions;

interface


type
  ToTFunction = class
    class function FuncDiceRoll(aInput : string): string;
  end;


implementation


uses
  System.SysUtils, StrUtils, dialogs,

  utility_content, debug, settings;


class function ToTFunction.FuncDiceRoll(aInput : string): string;
var
  t : integer;
  lPos : integer;
  lEquation : string;
  lMode : integer;
  lValue : integer;
  lFunc  : integer;
  lOperand : integer;
  lBuffer : string;

  procedure SetFunction(aFunction : integer);
  var
    lLoop : integer;
  begin
    if GToTSettings.DebugMode then begin
      if StrToIntDef(lBuffer, -1) = -1 then
        AddToDebug('FuncDiceRollSF::' + lBuffer);
    end;

    case lMode of
      0 : case lFunc of
            1 : lValue := lValue + StrToIntDef(lBuffer, 0);
            2 : lValue := lValue - StrToIntDef(lBuffer, 0);
            3 : lValue := lValue * StrToIntDef(lBuffer, 1);
          end;
      1 : begin
            case lFunc of
              1 : for lLoop := 1 to lOperand do
                    lValue := lValue + (1 + Random(StrToIntDef(lBuffer, 0)));
              2 : for lLoop := 1 to lOperand do
                    lValue := lValue - (1 + Random(StrToIntDef(lBuffer, 0)));
              3 : for lLoop := 1 to lOperand do
                    lValue := lValue * (1 + Random(StrToIntDef(lBuffer, 0)));
            else
               AddToDebug('FuncDiceRoll::' + IntToStr(lFunc));
            end;
          end;
    else
      AddToDebug('FuncDiceRoll::' + IntToStr(lMode));
    end;

    lOperand := 1;
    lBuffer  := '';
    lFunc    := aFunction;
    lMode    := 0;
  end;

begin
  Result := aInput;

  lPos   := Pos('=', aInput);

  if lPos > 0 then begin
    lEquation := ToTUtilityContent.GetAlphaNumSymWordFrom(lPos + 1, aInput);

    if lEquation <> '' then begin
      lOperand := 1;
      lValue   := 0;
      lMode    := 0;
      lFunc    := 1;
      lBuffer  := '';

      for t := 1 to length(lEquation) do begin
        case lEquation[t] of
          '0'..'9' : begin
                       lBuffer := lBuffer + lEquation[t];
                     end;
          'D','d'  : begin
                       if lBuffer <> '' then begin
                         lOperand := StrToIntDef(lBuffer, 1);

                         lBuffer  := '';
                       end;

                       lMode := 1;
                     end;
          '+'      : SetFunction(1);
          '-'      : SetFunction(2);
          '*'      : SetFunction(3);
        else
          AddToDebug('FuncDiceRoll::' + lEquation);
        end;

        if t = Length(lEquation) then begin
          SetFunction(-1);
        end;
      end;

      Result := StuffString(aInput, lPos, length(lEquation) + 1, IntToStr(lValue));
    end;
  end;
end;


end.
