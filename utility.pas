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

unit utility;

interface

uses
  System.UITypes, System.SysUtils, Vcl.Graphics, ShellApi, Windows;

type
  ToTUtility = class
    class function ExecuteFile(bob : THandle; const FileName, Params, DefaultDir: string): THandle;
    class function ExtractFileNameNoExt(aInput : string): string;
    class function FileDateToDateStr(ft : integer): integer;

    class function IsNumericCharacter(aAsciiCode : integer): boolean;
    class function IsAlphabetCharacter(aAsciiCode : integer): boolean;
    class function IsNumeric(aInput : string): boolean;

    class function ReplaceTokens(aInput : string): string;

    class function ConvertToUsefulUnit(x : Int64): string;

    class function GetStyle(aBold : boolean): TFontStyles;
  end;


implementation


class function ToTUtility.ExecuteFile(bob : THandle; const FileName, Params, DefaultDir: string): THandle;
var
  zFileName, zParams, zDir: array[0..254] of Char;

begin
  Result := ShellExecute(bob, nil, StrPCopy(zFileName, FileName), StrPCopy(zParams, Params), StrPCopy(zDir, DefaultDir), SW_SHOW)
end;


class function ToTUtility.ExtractFileNameNoExt(aInput : string): string;
var
  t : integer;

begin
  Result := '';

  if aInput <> '' then begin

    aInput := ExtractFileName(aInput);

    t := 1;

    while (aInput[t] <> '.') and
          (t <= Length(aInput)) do begin
      Result := Result + aInput[t];

      inc(t);
    end;
  end;
end;


class function ToTUtility.FileDateToDateStr(ft : integer): integer;
 var
  dt : TDateTime;
  yyyy,mm,dd : word;
  s  : string;

 begin
  dt := FileDateToDateTime(ft);

  DecodeDate(dt, yyyy,mm,dd);

  s := IntToStr(yyyy);
  if mm < 10 then
    s := s + '0' + IntToStr(mm)
  else
    s := s + IntToStr(mm);

  if dd < 10 then
    s := s + '0' + IntToStr(dd)
  else
    s := s + IntToStr(dd);

  Result := StrToIntDef(s, 00000000);
end;


class function ToTUtility.IsNumericCharacter(aAsciiCode : integer): boolean;
begin
  Result := False;

  if (aAsciiCode >= 48) and (aAsciiCode <= 57) then begin
    Result := True;
  end;
end;


class function ToTUtility.IsAlphabetCharacter(aAsciiCode : integer): boolean;
begin
  Result := False;

  if (aAsciiCode >= 65) and (aAsciiCode <= 90) or
     (aAsciiCode >= 97) and (aAsciiCode <= 122) then begin
    Result := True;
  end;
end;


class function ToTUtility.IsNumeric(aInput : string): boolean;
var
  t : integer;

begin
  Result := False;

  if aInput <> '' then begin
    Result := True;

    for t:= 1 to length(aInput) do begin
      if (ord(aInput[t]) < 48) and (ord(aInput[t]) > 57) then begin
        Result := False;
      end;
    end;
  end;
end;


class function ToTUtility.ReplaceTokens(aInput : string): string;
begin
  Result := StringReplace(aInput, '__', '/', [rfReplaceAll]);
end;


class function ToTUtility.ConvertToUsefulUnit(x : Int64): string;
 begin
  if (x < 0) then
    Result := '0'
  else if (x >= 0) and (x < 1024) then
    Result := IntToStr(x) + ' bytes'
  else if x < (1024 * 1024) then
    Result := FloatToStrF((x / 1024), ffFixed, 7, 2) + 'K'
  else if x < (1024 * 1024 * 1024) then
    Result := FloatToStrF((x / (1024 * 1024)), ffFixed, 7, 2) + 'MB';
end;


class function ToTUtility.GetStyle(aBold : boolean): TFontStyles;
begin
  if aBold then
    Result := [fsBold]
  else
    Result := [];
end;


end.
