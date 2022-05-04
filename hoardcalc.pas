//
// (c) Paul Alan Freshney 2016-2020
// www.MaximumOctopus.com
// paul@maximumoctopus.com
//
// https://sourceforge.net/projects/table-of-tables/
//
// Inspired/based on the Table of Tables sub-reddit.
// https://www.reddit.com/r/BehindTheTables/
//
// This code is open source, please make public any modifications; either
// by emailing me, or posting to the Table of Tables sub-reddit.
//
// June 2nd 2020
//

unit hoardcalc;

interface

uses
  System.Classes, System.SysUtils, Generics.Collections,

  constants;


type
  THoardCoin = class
             Description : string;

             // loaded from file
             Weight         : double;
             Density        : double;
             Radius         : double;
             Thickness      : double;
             Volume         : double;
             PackedVolume   : double;
             PackingDensity : double;

             // calculated
             CoinsPerLitre  : double;

             constructor Create;
             destructor Destroy; override;
           end;


function LoadHoardCalc(aFolder : string): boolean;

function GetHoardWeight(aCoinType, aCoinCount : integer; aUnit : integer): double;
function GetHoardVolume(aCoinType, aCoinCount : integer; aUnit : integer): double;


var
  GHoardCalc : TObjectList<THoardCoin>;


const
  coinDataCopper   = 0;
  coinDataSilver   = 1;
  coinDataGold     = 2;
  coinDataPlatinum = 3;


implementation


uses
  dialogs,

  debug, statistics, utility;


function GetHoardWeight(aCoinType, aCoinCount : integer; aUnit : integer): double;
begin
  case aUnit of
    unitMetric   : Result := aCoinCount * (GHoardCalc[aCoinType].Weight / 1000);
    unitImperial : Result := aCoinCount * (GHoardCalc[aCoinType].Weight / 1000) * 2.20462262;
  else
    Result := 0;
  end;
end;


function GetHoardVolume(aCoinType, aCoinCount : integer; aUnit : integer): double;
begin
  case aUnit of
    unitMetric   : Result := aCoinCount / (GHoardCalc[aCoinType].CoinsPerLitre * 1000);
    unitImperial : Result := aCoinCount / (GHoardCalc[aCoinType].CoinsPerLitre * 1000) * 35.3147;
  else
    Result := 0;
  end;
end;


function PopulateHoardCoins(aFileName : string): boolean;
var
  lCoin : THoardCoin;
  lFile : TStringList;
  t : integer;
  lMode : integer;

begin
  Result := True;

  lMode  := -1;

  lFile := TStringList.Create;
  lFile.LoadFromFile(aFileName);

  for t := 0 to lFile.Count - 1 do begin
    if lFile[t] <> '' then begin
      if (lFile[t][1] = '/') or (lFile[t][1] = ';') then begin
        // comment, do nothing
      end
      else begin
        case lFile[t][1] of
          '{' : begin
                  lCoin := THoardCoin.Create;

                  lMode := 0;
                end;
          '}' : begin
                  if lMode = 0 then begin
                    lCoin.CoinsPerLitre := (1 / lCoin.Volume) * 1000 * lCoin.PackingDensity;

                    GHoardCalc.Add(lCoin);
                  end
                  else
                    ShowMessage('Unpaired { } in: ' + afilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          'n' : if lMode = 0 then
                  lCoin.Description := Copy(lFile[t], 3, length(lFile[t]) - 2)
                else
                  ShowMessage('n: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'w' : if lMode = 0 then
                  lCoin.Weight := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('w: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'd' : if lMode = 0 then
                  lCoin.Density := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('d: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'r' : if lMode = 0 then
                  lCoin.Radius := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('r: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          't' : if lMode = 0 then
                  lCoin.Thickness := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('t: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'v' : if lMode = 0 then
                  lCoin.Volume := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('v: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'p' : if lMode = 0 then
                  lCoin.PackedVolume := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('p: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));
          'q' : if lMode = 0 then
                  lCoin.PackingDensity := StrToFloatDef(Copy(lFile[t], 3, length(lFile[t]) - 2), 0)
                else
                  ShowMessage('q: identifier found in invalid location: ' + aFileName + #13#13 +
                              '@ line ' + IntToStr(t + 1));

        else
          ShowMessage('Invalid identifier "' + lFile[t][1] + '" found in location: ' + #13#13 +
                      aFileName + #13#13 +
                      '@ line ' + IntToStr(t + 1));
        end;
      end;
    end;
  end;

  FreeAndNil(lFile);
end;


function LoadHoardCalc(aFolder : string): boolean;
begin
  Result := True;

  PopulateHoardCoins(aFolder + 'Hoard calculator.txt');
end;


// =============================================================================


constructor THoardCoin.Create;
begin
  inherited;

  Weight         := 0;
  Density        := 0;
  Radius         := 0;
  Thickness      := 0;
  Volume         := 0;
  PackedVolume   := 0;
  PackingDensity := 0;

  // calculated
  CoinsPerLitre  := 0;
end;


destructor THoardCoin.Destroy;
begin

  inherited;
end;


// =============================================================================

end.
