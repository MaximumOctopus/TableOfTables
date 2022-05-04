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

unit tables;

interface


uses
  System.Classes, System.SysUtils, Generics.Collections,

  statistics, outputentity;


const
  modeOneToOne   = 0;
  modeRange      = 1;
  modeAll        = 2;
  modeTitle      = 90;
  modeUnknown    = 99;

type
  TItemResponse = record
                    OutputText      : string;
                    TableReferences : string;
                  end;

  TTable = class
             Name       : string;  // use this name within other tables to randomise content across the data!
             CategoryID : integer; // reference to GCategories
             SubID      : integer; // ID within this GCategories
             TableID    : integer;
             Mode       : integer; //
             DiceRoll   : integer; // dice roll needed for this table
             Title      : string;
             Items      : TStringList;

             SearchHit  : boolean;
             Error      : boolean;
             LastError  : string;

             constructor Create;
             destructor Destroy;  override;

             function GetItem(aSetDiceMax, aRandom : integer): TItemResponse; // -1 = random, >=0 for specified item
             function GetRandomValue(aOnlyRefresh : boolean; aRerollSingle, aEntityID : integer; aEntity : TOutputEntity; aSetDiceMax : integer): integer;
           end;

  TCategory = class
    Title         : string;

    SearchHit     : boolean;

    constructor Create;
  end;

  TSubCategory = class
    CategoryID    : integer; // reference to GCategories
    SubCategoryID : integer; // ID within this GCategories
    Title         : string;

    Favourites    : TStringList;

    SearchHit     : boolean;

    constructor Create;
    destructor Destroy;  override;
  end;

function FindSubCategoryItem(aCat, aSubCat : integer): integer;
function FindSubCategoryFromTitle(aTitle : string): integer;
procedure LoadFavourites(aFileName : string);
procedure SaveFavourites(aFileName : string);

function LoadTables(aFolder : string): boolean;
function FindTableWithName(aName : string): integer;

var
  GCategories    : TObjectList<TCategory>;     // list of categories
  GSubCategories : TObjectList<TSubCategory>;  // list of subcategories, linked to above via CategoryID
  GTables        : TObjectList<TTable>;

implementation

uses dialogs,

     names, settings, utility, utility_content;

var
  FTableID : integer;


function FindSubCategoryItem(aCat, aSubCat : integer): integer;
var
  t : integer;

begin
  Result     := -1;

  for t:= 0 to GSubCategories.Count - 1 do begin
    if (GSubCategories[t].CategoryID    = aCat) and
       (GSubCategories[t].SubCategoryID = aSubCat) then begin
      Result := t;

      Break;
    end;
  end;
end;


function FindSubCategoryFrom(aCat, aSubCat : string): integer;
var
  lCat : integer;
  t : integer;

begin
  aCat    := UpperCase(aCat);
  aSubCat := UpperCase(aSubCat);

  Result  := -1;
  lCat    := -1;

  for t:= 0 to GCategories.Count - 1 do begin
    if UpperCase(GCategories[t].Title) = aCat then begin
      lCat := t;

      Break;
    end;
  end;

  if lCat <> -1 then begin
    for t := 0 to GSubCategories.Count - 1 do begin
      if (GSubCategories[t].CategoryID       = lCat) and
         (UpperCase(GSubCategories[t].Title) = aSubCat) then begin
        Result := t;
      end;
    end;
  end;
end;


function FindSubCategoryFromTitle(aTitle : string): integer;
var
  t : integer;

begin
  Result := -1;

  aTitle := UpperCase(aTitle);

  for t := 0 to GSubCategories.Count - 1 do begin
    if UpperCase(GSubCategories[t].Title) = aTitle then
      Result := t;
  end;
end;


function FindTableWithName(aName : string): integer;
var
  t : integer;

begin
  Result := -1;

  if aName <> '' then begin
    aName := UpperCase(aName);

    for t:= 0 to GTables.Count - 1 do begin
      if GTables[t].Name = aName then begin
        Result := t;

        Break;
      end;
    end;
  end;
end;


function AddTable(aFileName : string; aSubID : integer): boolean;
var
  lSubCategory : TSubCategory;
  lTable : TTable;
  lFile : TStringList;
  lPos : integer;
  t : integer;
  lMode : integer;
  lDicePrefix : integer;
  lName : string;

begin
  Result := True;

  lMode := -1;

  // ===========================================================================

  if aSubID <> -1 then begin
    lSubCategory := TSubCategory.Create;
    lSubCategory.CategoryID    := GCategories.Count - 1;
    lSubCategory.SubCategoryID := aSubID;
    lSubCategory.Title         := ToTUtility.ExtractFileNameNoExt(aFileName);

    GSubCategories.Add(lSubCategory);
  end;

  // ===========================================================================

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
                  lTable := TTable.Create;

                  if aSubID <> -1 then begin
                    lTable.CategoryID := GCategories.Count - 1;
                    lTable.SubID      := aSubID;
                  end
                  else begin
                    lTable.CategoryID := -1;
                    lTable.SubID      := -1;
                  end;

                  lTable.TableID    := FTableID;

                  lMode := 0;
                end;
          '}' : begin
                  if lMode = 0 then begin
                    if lTable.DiceRoll = 0 then begin
                      lTable.Mode := modeAll;
                    end
                    else if lTable.DiceRoll > 0 then begin
                      if lTable.Items.Count = lTable.DiceRoll then
                        lTable.Mode := modeOneToOne
                      else
                        lTable.Mode := modeRange;
                    end
                    else
                      lTable.Mode := modeUnknown;

                    GTables.Add(lTable);

                    inc(ToTStatistics.TotalItemCount, lTable.Items.Count);

                    inc(FTableID);

                    inc(ToTStatistics.TableCount);
                  end
                  else
                    ShowMessage('Unpaired { } in: ' + aFilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          '[' : begin
                  lTable := TTable.Create;
                  lTable.CategoryID := GCategories.Count - 1;
                  lTable.SubID      := aSubID;
                  lTable.TableID    := FTableID;
                  lTable.Mode       := modeTitle;

                  lMode := 1;
                end;
          ']' : begin
                  if lMode = 1 then begin
                    GTables.Add(lTable);

                    inc(FTableID);
                  end
                  else
                    ShowMessage('Unpaired [ ] in: ' + aFilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          '(' : begin
                  lMode := 2;
                end;
          ')' : begin
                  lMode := -1;
                end;
          'd' : begin
                  case lMode of
                    0 : begin
                          lDicePrefix  := ToTUtilityContent.GetDicePrefix(Copy(lFile[t], 3, length(lFile[t]) - 2));
                          lTable.Title := ToTUtilityContent.RemoveDicePrefix(Copy(lFile[t], 3, length(lFile[t]) - 2));

                          if lDicePrefix >= 0 then
                            lTable.DiceRoll := lDicePrefix
                          else begin
                            lTable.DiceRoll := -1;

                            ShowMessage('Invalid dice roll in ' + lTable.Title + #13#13 +
                                        aFileName + #13#13 +
                                        '@ line ' + IntToStr(t + 1));
                          end;
                        end;
                    1 : begin
                          lTable.DiceRoll := -1;

                          lTable.Title    := ToTUtilityContent.RemoveDicePrefix(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                    2 : {};
                  end;
                end;
          'i' : begin
                  case lMode of
                    0 : begin
                          lTable.Items.Add(Copy(lFile[t], 3, length(lFile[t]) - 2));

                          lPos := Pos('$', Copy(lFile[t], 3, length(lFile[t]) - 2));

                          if lPos > 0 then begin
                            lName := ToTUtilityContent.GetAlphaNumWordFrom(lPos + 1, Copy(lFile[t], 3, length(lFile[t]) - 2));

                            if GetNameIndex(lName) = -1 then
                              ShowMessage('Unknown $name reference "' + lName + '" in: ' + #13#13 + aFileName + #13#13 +
                                          '@ line ' + IntToStr(t + 1));
                          end;
                        end
                  else
                    ShowMessage('i: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'n' : begin
                  case lMode of
                    0 : lTable.Name := UpperCase(Copy(lFile[t], 3, length(lFile[t]) - 2));
                    1 : {}; // not implemented yet
                  else
                    ShowMessage('n: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          ':' : begin
                  ShowMessage('Invalid identifier ":" found in location: ' + aFileName + #13#13 +
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


function PopulateCategory(aFolder : string): boolean;
var
  searchResult : TSearchRec;
  lSubID : integer;

begin
  Result := True;

  lSubID := 0;

  // populate the list of available (top level) categories
  if Findfirst(aFolder + '*.txt', faAnyFile, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        AddTable(aFolder + searchResult.Name, lSubID);

        inc(lSubID);
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


function LoadTables(aFolder : string): boolean;
var
  searchResult : TSearchRec;
  lCategory : TCategory;

begin
  Result := True;

  GCategories.Clear;

  // populate the list of available (top level) categories
  if Findfirst(aFolder + '*.*', faDirectory, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        if (searchResult.Attr and faDirectory) = faDirectory then begin
          lCategory := TCategory.Create;
          lCategory.Title := ToTUtility.ReplaceTokens(searchResult.Name);

          GCategories.Add(lCategory);

          PopulateCategory(aFolder + searchResult.Name + '\');
        end;
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;

  // ===========================================================================

  if Findfirst(aFolder + '*.data', faDirectory, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin
        AddTable(aFolder + searchResult.Name, -1);
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


procedure LoadFavourites(aFileName : string);
var
  tf : TextFile;
  lCat, lSubCat, lData, s : string;
  lWhichSubCat : integer;
  lMode : integer;

begin
  if FileExists(aFileName) then begin

    AssignFile(tf, aFileName);
    Reset(tf);

    lMode := -1;

    while not(eof(tf)) do begin
      readln(tf, s);

      if s <> '' then begin
        case s[1] of
          '/', ';' : {}; // comments
          '{'      : begin
                       lMode := 0;
                     end;
          '}'      : begin
                       if lMode = 0 then begin
                         lWhichSubCat := FindSubCategoryFrom(lCat, lSubCat);

                         if lWhichSubCat <> -1 then begin
                           GSubCategories[lWhichSubCat].Favourites.Add(lData);
                         end;
                       end;

                       lMode := -1;
                     end;
          'c'      : lCat    := Copy(s, 3, length(s) - 2);
          's'      : lSubCat := Copy(s, 3, length(s) - 2);
          'i'      : lData   := Copy(s, 3, length(s) - 2);
        end;
      end;
    end;

    CloseFile(tf);
  end;
end;


procedure SaveFavourites(aFileName : string);
var
  tf : TextFile;
  t, x : integer;

begin
  AssignFile(tf, aFileName);
  Rewrite(tf);

  for t := 0 to GSubCategories.Count - 1 do begin
    if GSubCategories[t].Favourites.Count <> 0 then begin
      writeln(tf, '{');
      writeln(tf, 'c:' + GCategories[GSubCategories[t].CategoryID].Title);
      writeln(tf, 's:' + GSubCategories[t].Title);

      for x := 0 to GSubCategories[t].Favourites.Count - 1 do begin
        writeln(tf, 'i:' + GSubCategories[t].Favourites[x]);
      end;

      writeln(tf, '}');
    end;
  end;

  CloseFile(tf);
end;


// =============================================================================


constructor TTable.Create;
begin
  inherited;

  Name       := '';

  CategoryID := -1;
  SubID      := -1;
  TableID    := -1;
  Mode       := -1;
  DiceRoll   := -1;
  Title      := 'Not specified!';

  SearchHit  := False;

  Items      := TStringList.Create;
end;


destructor TTable.Destroy;
begin
  FreeAndNil(Items);

  inherited;
end;


function TTable.GetRandomValue(aOnlyRefresh : boolean; aRerollSingle, aEntityID : integer; aEntity : TOutputEntity; aSetDiceMax : integer): integer;
var
  lMax : integer;

begin
  Result := 0;

  if aSetDiceMax = -1 then begin
    case Mode of
      modeOneToOne : lMax := Items.Count;
      modeRange    : lMax := DiceRoll;
    else
      lMax := 0;
    end;
  end
  else
    lMax := aSetDiceMax;

  if aOnlyRefresh then begin
    Result := aEntity.LastRoll;
  end
  else begin
    if aEntity = Nil then begin
      case Mode of
        modeOneToOne : Result := Random(lMax);
        modeRange    : Result := 1 + Random(lMax);
      else
        Result := 0;
      end;
    end
    else begin
      if aRerollSingle <> -1 then begin
        if aEntityID = aRerollSingle then begin
          if aEntity.Enabled then begin
            case Mode of
              modeOneToOne : Result := Random(lMax);
              modeRange    : Result := 1 + Random(lMax);
            else
              Result := 0;
            end;

            aEntity.LastRoll := Result;
          end;
        end
        else
          Result := aEntity.LastRoll;
      end
      else begin
        if aEntity.Enabled then begin
          case Mode of
            modeOneToOne : Result := Random(lMax);
            modeRange    : Result := 1 + Random(lMax);
          else
            Result := 0;
          end;

          aEntity.LastRoll := Result;
        end
        else
         Result := aEntity.LastRoll;
      end;
    end;
  end;
end;


function  TTable.GetItem(aSetDiceMax, aRandom : integer): TItemResponse;
var
  lFound : boolean;
  x : integer;
  lReference : string;

begin
  Result.OutputText      := '';
  Result.TableReferences := '';

  // ===========================================================================

  if aRandom = -1 then begin
    aRandom := GetRandomValue(False, -1, -1, Nil, aSetDiceMax);
  end;

  // ===========================================================================

  case Mode of
    modeOneToOne : begin
                     if ToTUtilityContent.StringContainsDiceRoll(Items[aRandom]) then begin
                       Result.OutputText := ToTUtilityContent.RandomFromSelection(Items[aRandom]);
                     end
                     else
                       Result.OutputText := Items[aRandom];
                   end;

    modeRange    : begin;
                     lFound := False;

                     for x := 0 to Items.Count - 1 do begin
                       if ToTUtilityContent.FoundWithinRange(aRandom, Items[x]) then begin
                         if ToTUtilityContent.StringContainsDiceRoll(Items[x]) then begin
                           Result.OutputText := ToTUtilityContent.RandomFromSelection(Items[x]);
                         end
                         else
                           Result.OutputText := ToTUtilityContent.RemoveToFirstSpace(Items[x]);

                         lFound := True;
                       end;
                     end;

                     if not(lFound) then
                       Result.OutputText := '{NO VALUE FOUND: ' + IntToStr(aRandom) + '}';
                   end;

    modeAll      : begin;
                   end;
  end;


  x := pos('{', Result.OutputText);

  if x > 0 then begin
    inc(x);

    lReference := '';

    while (Result.OutputText[x] <> '}') and (x <= length(Result.OutputText)) do begin
      lReference := lReference + Result.OutputText[x];

      inc(x);
    end;

    Result.TableReferences := lReference;

    lReference := '{' + lReference + '}';

    Result.OutputText := StringReplace(Result.OutputText, lReference, '', [rfReplaceAll]);
  end;
end;


// =============================================================================
// =============================================================================


constructor TCategory.Create;
begin
  Title     := '';
  SearchHit := False;
end;


// =============================================================================
// =============================================================================


constructor TSubCategory.Create;
begin
  inherited;

  CategoryID    := -1;
  SubCategoryID := -1;
  Title         := 'Not specified!';

  SearchHit     := False;

  Favourites    := TStringList.Create;
end;


destructor TSubCategory.Destroy;
begin
  FreeAndNil(Favourites);

  inherited;
end;


// =============================================================================


end.
