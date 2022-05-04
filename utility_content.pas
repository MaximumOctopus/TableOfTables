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

unit utility_content;

interface


type
  ToTUtilityContent = class
    class function ReplaceTokens(aInput : string): string;
    class function RandomFromSelection(aInput : string): string;
    class function RemoveToFirstSpace(aInput : string): string;
    class function GetDiceRollFrom(aInput : string): integer;
    class function GetItemFrom(aInput : string; aItem : integer): string;
    class function GetNonRandomPartFrom(aInput : string): string;
    class function GetDicePrefix(aInput : string): integer;
    class function RemoveDicePrefix(aInput : string): string;
    class function StringContainsDiceRoll(aInput : string): boolean;
    class function GetMaxValueFrom(aInput : string): integer;
    class function FoundWithinRange(aDiceRoll : integer; aInput : string): boolean;

    class function GetAlphaNumWordFrom(aStart : integer; aInput : string): string;
    class function GetAlphaNumSymWordFrom(aStart : integer; aInput : string): string;

    class function GetCostFrom(aInput : string): string;
    class function GetCurrency(aInput : string): integer;
    class function ToCurrency(aCurrency : integer): string;
  end;


implementation


uses
  System.SysUtils, Dialogs,

  totfunctions, tables, names, debug, utility;


// formmat:
//
// name token:
// $namegeneratorfile  e.g. $fantasy (\data\names\fantasty.txt)
//
// table reference
// @table_name
// or
// @tablename!x
// where x specifies Dx to roll e.g. @tablename!5 (use tablename, only roll a d5)
//
class function ToTUtilityContent.ReplaceTokens(aInput : string): string;
var
  x, lPos, lOver, lTable, lNewDiceMax,lEscape : integer;
  lTableName, lWord : string;
  lTableResponse : TItemResponse;

begin
  // $ is the name-token prefix
  if Pos('$', aInput) > 0 then begin
    lPos := Pos('$', aInput);

    lEscape := 0;

    while (lPos > 0) do begin
      for x := 0 to GNames.Count - 1 do begin
        if Pos(UpperCase('$' + GNames[x].Description), UpperCase(aInput)) > 0 then
          aInput := StringReplace(aInput, '$' + GNames[x].Description, GetName(GNames[x].Description, ''), [rfIgnoreCase]);
      end;

      lPos := Pos('$', aInput);

      inc(lEscape);

      if lEscape > 100 then
      begin
        lPos := 0;

        AddToDebug('ReplaceTokens:$:' + aInput);
      end;
    end;
  end;

  // ===========================================================================

  // @ is the table name-token prefix
  if Pos('@', aInput) > 0 then begin
    lEscape := 0;
    lPos    := Pos('@', aInput);

    while lPos > 0 do begin
      lWord  := GetAlphaNumSymWordFrom(lPos + 1, aInput);

      if lWord <> '' then begin

        lOver  := Pos('!', lWord);

        if lOver > 0 then begin
          lNewDiceMax := StrToIntDef(Copy(lWord, lOver + 1), -1);

          lTableName  := Copy(lWord, 1, lOver - 1);
        end
        else begin
          lNewDiceMax := -1;

          lTableName  := lWord;
        end;

        lTable := FindTableWithName(lTableName);

        if lTable <> -1 then begin
          lTableResponse := GTables[lTable].GetItem(lNewDicemax, -1);

          aInput := StringReplace(aInput, '@' + lWord, lTableResponse.OutputText, [rfIgnoreCase])
        end
        else
          aInput := StringReplace(aInput, '@' + lWord, '*Error processing "' + lWord + '"*', [rfIgnoreCase])
      end;

      lPos  := Pos('@', aInput);

      if lEscape > 100 then
      begin
        lPos := 0;

        AddToDebug('ReplaceTokens:@:' + aInput);
      end;
    end;
  end;

  // ===========================================================================

  if Pos('=', aInput) > 0 then begin
    lEscape := 0;
    lPos    := Pos('=', aInput);

    while (lPos > 0) do begin
      aInput := ToTFunction.FuncDiceRoll(aInput);

      lPos := Pos('=', aInput);

      if lEscape > 100 then
      begin
        lPos := 0;

        AddToDebug('ReplaceTokens:=:' + aInput);
      end;
    end;
  end;

  // ===========================================================================

  Result := aInput;
end;


class function ToTUtilityContent.RandomFromSelection(aInput : string): string;
var
  lDiceRoll : integer;
  lRandom : integer;
  lItem : string;
begin
  lDiceRoll := GetDiceRollFrom(aInput);

  if lDiceRoll > 0 then begin
    lRandom := 1 + Random(lDiceRoll);

    lItem   := GetItemFrom(aInput, lRandom);

    Result  := GetNonRandomPartFrom(aInput) + ' ' + lItem + '.';
  end;
end;


class function ToTUtilityContent.RemoveToFirstSpace(aInput : string): string;
var
  lPos, t : integer;
begin
  Result := aInput;
  lPos   := -1;

  if aInput <> '' then begin

    for t := 1 to length(aInput) do begin
      if (aInput[t] = ' ') or (aInput[t] = #9) then begin
        lPos := t;
        Break;
      end;
    end;

    if lPos <> -1 then
      Result := Copy(aInput, lPos + 1);
  end;
end;


// =============================================================================


// looks for (dx) within a string
// eg A blade with a carved hilt (d6): 1. ivory; 2. jade; 3. soapstone; 4. ebony; 5. mahogany; 6. oak.
// returns 6
class function ToTUtilityContent.GetDiceRollFrom(aInput : string): integer;
var
  lTemp : string;
  aPos : integer;
  t : integer;

begin
  Result := 0;
  lTemp  := '';

  aPos := Pos('(D', UpperCase(aInput));

  if aPos > 0 then begin
    t := aPos + 2;

    while (aInput[t] <> ')') and (t <= length(aInput)) do begin
      lTemp := lTemp + aInput[t];

      inc(t);
    end;

    if ToTUtility.IsNumeric(lTemp) then
      Result := StrToIntDef(lTemp, 0);
  end;
end;


// looks for a specific item with a string
// eg item 2; A blade with a carved hilt (d6): 1. ivory; 2. jade; 3. soapstone; 4. ebony; 5. mahogany; 6. oak.
// returns jade
class function ToTUtilityContent.GetItemFrom(aInput : string; aItem : integer): string;
var
  lPos : integer;
  lInReference : boolean;
  t : integer;

begin
  Result := '';

  lInReference := False;

  lPos := pos(IntToStr(aItem) + '.', aInput);

  if lPos > 0 then begin
    for t := lPos + Length(IntToStr(aItem) + '.') to length(aInput) do begin
      if aInput[t] = '{' then
        lInReference := True;

      if not(lInReference) then begin
        if (aInput[t] <> '.') and (aInput[t] <> ';') then begin
          Result := Result + aInput[t];
        end
        else
          break;
      end
      else
        Result := Result + aInput[t];

      if aInput[t] = '}' then
        lInReference := False;
    end;
  end;
end;


// looks for the intro part of the string
// eg A blade with a carved hilt (d6): 1. ivory; 2. jade; 3. soapstone; 4. ebony; 5. mahogany; 6. oak.
// returns A blade with a carved hilt:
class function ToTUtilityContent.GetNonRandomPartFrom(aInput : string): string;
var
  lInBrackets : boolean;
  lPos, t : integer;

begin
  Result := '';

  lPos := Pos(':', aInput);

  if lPos > 0 then begin
    lInBrackets := False;

    for t := 1 to lPos do begin
      if aInput[t] = '(' then
        lInBrackets := True
      else if aInput[t] = ')' then
        lInBrackets := False
      else
        if not(lInBrackets) then
          Result := Result + aInput[t];
    end;
  end;
end;


// returns any dxx prefix from input
// eg d20 this is an example
// returns 20
class function ToTUtilityContent.GetDicePrefix(aInput : string): integer;
var
  t : integer;
  lPos : integer;

begin
  Result := -1;

  if aInput <> '' then begin
    if (aInput[1] = 'd') or (aInput[1] = 'D') then begin
      if ToTUtility.IsNumericCharacter(Ord(aInput[2])) then begin
        t    := 2;
        lPos := -1;

        while (ToTUtility.IsNumericCharacter(Ord(aInput[t]))) and
              (t <= length(aInput)) do begin
          lPos := t;

          inc(t);
        end;

        if lPos <> -1 then
          Result := StrToIntDef(Copy(aInput, 2, lPos - 1), -1);
      end;
    end;
  end;
end;


// removes any dxx prefix from input
// eg d20 this is an example
// returns this is an example
class function ToTUtilityContent.RemoveDicePrefix(aInput : string): string;
var
  t : integer;
  lPos : integer;
begin
  Result := aInput;

  if aInput <> '' then begin
    if (aInput[1] = 'd') or (aInput[1] = 'D') then begin
      if ToTUtility.IsNumericCharacter(Ord(aInput[2])) then begin
        t    := 1;
        lPos := -1;

        while (aInput[t] <> ' ') and
              (aInput[t] <> #9) and
              (t <= length(aInput)) do begin
          lPos := t;

          inc(t);
        end;

        if lPos <> -1 then
          Result := Copy(aInput, lPos + 1);
      end;
    end;
  end;
end;


// look for (dx) in a string
// where is x is an integer
class function ToTUtilityContent.StringContainsDiceRoll(aInput : string): boolean;
var
  lPos : integer;

begin
  Result := False;

  lPos := pos('(d', LowerCase(aInput));

  if lPos > 0 then begin
    if ToTUtility.IsNumericCharacter(Ord(aInput[lPos + 2])) then begin
      Result := True;
    end;
  end;
end;


// looks for value or range in input, and returns the highest value
// eg "1. floor gives way "
// returns 1
// eg "20-39 character receives +1 spoon"
// returns 39
class function ToTUtilityContent.GetMaxValueFrom(aInput : string): integer;
var
 t : integer;
 lDice : string;

begin
  Result := -1;
  lDice  := '';

  if aInput <> '' then begin
    for t:=1 to length(aInput) do begin
      case aInput[t] of
        '-'      : lDice := '';
        '.', ' ' : begin
                     if ToTUtility.IsNumeric(lDice) then
                       Result := StrToIntDef(lDice, -1);

                     Break;
                   end;
      else
        if ToTUtility.IsNumericCharacter(ord(aInput[t])) then
          lDice := lDice + aInput[t];
      end;
    end;
  end;
end;


// looks to see if the specified dice roll is within the range specified in input
// eg dice=2, "1. floor gives way"
// returns False
// eg dice=22, "20-39 character receives +1 spoon"
// returns true
class function ToTUtilityContent.FoundWithinRange(aDiceRoll : integer; aInput : string): boolean;
var
 t, lDiceFrom, lDiceTo : integer;
 lDice : string;

begin
  Result    := False;
  lDiceFrom := -1;
  lDiceTo   := -1;
  lDice     := '';

  if aInput <> '' then begin
    for t := 1 to length(aInput) do begin
      case aInput[t] of
        '-'      : begin
                     if ToTUtility.IsNumeric(lDice) then begin
                       lDiceFrom := StrToIntDef(lDice, -1);
                     end
                     else
                       lDiceFrom := -1;

                     lDice     := '';
                   end;
        '.', ' ' : begin
                     if ToTUtility.IsNumeric(lDice) then begin
                       lDiceTo   := StrToIntDef(lDice, -1);
                     end
                     else
                       lDiceTo   := -1;

                     Break;
                   end;
      else
        lDice := lDice + aInput[t];
      end;
    end;

    if (lDiceTo <> -1) then begin
      if (lDiceFrom = -1) then begin
        if lDiceTo = aDiceRoll then
          Result := True;
      end
      else
        if (lDiceFrom <= aDiceRoll) and (lDiceTo >= aDiceRoll) then
          Result := True;
    end;
  end;
end;


class function ToTUtilityContent.GetAlphaNumWordFrom(aStart : integer; aInput : string): string;
var
  t : integer;

begin
  Result := '';

  for t :=  aStart to Length(aInput) do begin
    if ToTUtility.IsAlphabetCharacter(Ord(aInput[t])) or
       ToTUtility.IsNumericCharacter(Ord(aInput[t])) then
      Result := Result + aInput[t]
    else
      Break;
  end;
end;


class function ToTUtilityContent.GetAlphaNumSymWordFrom(aStart : integer; aInput : string): string;
var
  t : integer;

begin
  Result := '';

  for t:= aStart to Length(aInput) do begin
    if ToTUtility.IsAlphabetCharacter(Ord(aInput[t])) or
       ToTUtility.IsNumericCharacter(Ord(aInput[t])) or
       (aInput[t] = '*') or
       (aInput[t] = '+') or
       (aInput[t] = '-') or
       (aInput[t] = '_') or
       (aInput[t] = '!') then
      Result := Result + aInput[t]
    else
      Break;
  end;
end;


// =============================================================================
// =============================================================================
// == Shop Functions ===========================================================
// =============================================================================
// =============================================================================


class function ToTUtilityContent.GetCostFrom(aInput : string): string;
var
  t : integer;

begin
  Result := '';

  aInput := Trim(aInput);

  if UpperCase(aInput) = 'SPECIAL' then
    Result := aInput
  else begin
    for t:= 1 to Length(aInput) do begin
      if (ToTUtility.IsNumericCharacter(ord(aInput[t]))) or
         (aInput[t] = '.') or
         (aInput[t] = ',') then
        Result := Result + aInput[t]
      else
        Break;
    end;
  end;
end;


class function ToTUtilityContent.GetCurrency(aInput : string): integer;
var
  t : integer;
  lCash : string;

begin
  lCash  := '';

  aInput := LowerCase(Trim(aInput));

  if aInput = 'special' then
    Result := 0
  else begin
    for t:= 1 to Length(aInput) do begin
      if ToTUtility.IsAlphabetCharacter(ord(aInput[t])) then
        lCash := lCash + aInput[t];
    end;

    if lCash = 'cp' then
      Result := 1
    else if lCash = 'sp' then
      Result := 2
    else if lCash = 'gp' then
      Result := 3
    else if lCash = 'pp' then
      Result := 4
    else begin
      Result := 0;

      AddToDebug('GetCurrency::' + aInput);
    end;
  end;
end;


class function ToTUtilityContent.ToCurrency(aCurrency : integer): string;
begin
  case aCurrency of
    0 : Result := '';
    1 : Result := 'cp';
    2 : Result := 'sp';
    3 : Result := 'gp';
    4 : Result := 'pp';
  else
    Result := '??';

    AddToDebug('ToCurrency::' + IntToStr(aCurrency));
  end;
end;


end.
