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

unit names;

interface

uses System.Classes, System.SysUtils, Generics.Collections;

function LoadNames(aFolder : string): boolean;

type
  TName = class
             Description : string;

             Titles      : TStringList;
             Names       : TStringList;
             Adjectives  : TStringList;
             Nouns       : TStringList;
             Other       : TStringList;
             Templates   : TStringList;

             constructor Create;
             destructor Destroy; override;
           end;

var
  GNames : TObjectList<TName>;


function GetName(const aDescription, aTemplate : string): string;
function GetNameIndex(aDescription : string): integer;

implementation


uses
  dialogs,

  debug, statistics, utility;


// where description is the "name" of the name file you want to use
// minus all of the extensions etc.
// eg generic.txt
// = generic
// if input template is empty, a random one will be used
function GetName(const aDescription, aTemplate : string): string;
var
  t, lNameIdx : integer;
  lDescription : string;

begin
  Result := '';

  lDescription := UpperCase(aDescription);

  if GNames.Count <> 0 then begin
    lNameIdx := -1;

    for t := 0 to GNames.Count - 1 do begin
      if GNames[t].Description = lDescription then
        lNameIdx := t;
    end;

    if lNameIdx <> -1 then begin
      if aTemplate = '' then
        Result := GNames[lNameIdx].Templates[Random(GNames[lNameIdx].Templates.Count)]
      else
        Result := aTemplate;

      // =======================================================================

      if GNames[lNameIdx].Titles.Count <> 0 then
        for t:=0 to 1 do Result := StringReplace(Result, '$title',     GNames[lNameIdx].Titles[Random(GNames[lNameIdx].Titles.Count)],         [rfIgnoreCase]);

      Result := StringReplace(Result, '$title',     '', [rfIgnoreCase, rfReplaceAll]);

      // =======================================================================

      if GNames[lNameIdx].Names.Count <> 0 then
        for t:=0 to 1 do Result := StringReplace(Result, '$name',      GNames[lNameIdx].Names[Random(GNames[lNameIdx].Names.Count)],           [rfIgnoreCase]);

      Result := StringReplace(Result, '$name',      '', [rfIgnoreCase, rfReplaceAll]);

      // =======================================================================

      if GNames[lNameIdx].Adjectives.Count <> 0 then
        for t:=0 to 1 do Result := StringReplace(Result, '$adjective', GNames[lNameIdx].Adjectives[Random(GNames[lNameIdx].Adjectives.Count)], [rfIgnoreCase]);

      Result := StringReplace(Result, '$adjective', '', [rfIgnoreCase, rfReplaceAll]);

      // =======================================================================

      if GNames[lNameIdx].Nouns.Count <> 0 then
        for t:=0 to 1 do Result := StringReplace(Result, '$noun',      GNames[lNameIdx].Nouns[Random(GNames[lNameIdx].Nouns.Count)],           [rfIgnoreCase]);

      Result := StringReplace(Result, '$noun',      '', [rfIgnoreCase, rfReplaceAll]);

      // =======================================================================

      if GNames[lNameIdx].Other.Count <> 0 then
        for t:=0 to 1 do Result := StringReplace(Result, '$other',     GNames[lNameIdx].Other[Random(GNames[lNameIdx].Other.Count)],           [rfIgnoreCase]);

      Result := StringReplace(Result, '$other',     '', [rfIgnoreCase, rfReplaceAll]);

      // =======================================================================

      if pos('$', result) > 0 then begin
        AddToDebug('GetName::' + Result);

        Result := StringReplace(Result, '$', '?', [rfReplaceAll]);
      end;
    end
    else
      Result := 'UNKNOWN NAME!!';
  end
  else
    Result := 'NO NAMES LOADED!!';
end;


function GetNameIndex(aDescription : string): integer;
var
  t : integer;

begin
  Result := -1;

  aDescription := UpperCase(aDescription);

  for t:=0 to GNames.Count - 1 do begin
    if GNames[t].Description = aDescription then
      Result := t;
  end;
end;


function PopulateName(aFileName : string): boolean;
var
  lName : TName;
  lFile : TStringList;
  t : integer;
  lParameter : string;
  lMode : integer;
  lType : integer;

begin
  Result := True;

  lType  := -1;
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
                  lName := TName.Create;
                  lName.Description := UpperCase(ToTUtility.ExtractFileNameNoExt(aFileName));

                  lMode := 0;
                end;
          '}' : begin
                  if lMode = 0 then begin
                    GNames.Add(lName);

                    inc(ToTStatistics.TotalNameCount, lName.Titles.Count +
                                                      lName.Names.Count +
                                                      lName.Adjectives.Count +
                                                      lName.Nouns.Count +
                                                      lName.Other.Count);
                  end
                  else
                    ShowMessage('Unpaired { } in: ' + afilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          'd' : begin
                  case lMode of
                    0 : begin
                          lParameter := UpperCase(Copy(lFile[t], 3, length(lFile[t]) - 2));

                          if lParameter = 'TITLES' then
                            lType := 0
                          else if lParameter = 'NAMES' then
                            lType := 1
                          else if lParameter = 'ADJECTIVES' then
                            lType := 2
                          else if lParameter = 'NOUNS' then
                            lType := 3
                          else if lParameter = 'OTHER' then
                            lType := 4
                          else if lParameter = 'TEMPLATES' then
                            lType := 5
                          else begin
                            lType := -1;

                            ShowMessage('Unknown type identifier: "' + lParameter + '" in \names\' + ExtractFileName(aFileName) + #13#13 +
                                        '@ line ' + IntToStr(t + 1) + #13#13 +
                                        'Valid identifiers: TITLES, NAMES, ADJECTIVES, NOUNS, OTHER, TEMPLATES');
                          end;
                        end;
                  else
                    ShowMessage('d: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'i' : begin
                  if lMode = 0 then begin
                    lParameter := Copy(lFile[t], 3, length(lFile[t]) - 2);

                    if (lType >= 0) and (lType <=4) then begin
                      if pos('$', lParameter) = 0 then begin
                        case lType of
                          0 : lName.Titles.Add(lParameter);
                          1 : lName.Names.Add(lParameter);
                          2 : lName.Adjectives.Add(lParameter);
                          3 : lName.Nouns.Add(lParameter);
                          4 : lName.Other.Add(lParameter);
                        end;
                      end;
                    end
                    else begin
                      lName.Templates.Add(lParameter);
                    end;
                  end
                  else
                    ShowMessage('i: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                end;
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


function LoadNames(aFolder : string): boolean;
var
  searchResult : TSearchRec;

begin
  Result := True;

  if Findfirst(aFolder + '*.*', faDirectory, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        PopulateName(aFolder + searchResult.Name);
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


// =============================================================================


constructor TName.Create;
begin
  inherited;

  Titles      := TStringList.Create;
  Names       := TStringList.Create;
  Nouns       := TStringList.Create;
  Adjectives  := TStringList.Create;
  Other       := TStringList.Create;
  Templates   := TStringList.Create;
end;


destructor TName.Destroy;
begin
  FreeAndNil(Titles);
  FreeAndNil(Names);
  FreeAndNil(Nouns);
  FreeAndNil(Adjectives);
  FreeAndNil(Other);
  FreeAndNil(Templates);

  inherited;
end;


// =============================================================================

end.
