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

unit shop;

interface

uses
  Generics.Collections,

  statistics, shopsubcategory, shopitem;

type
  TShopCategory = class
    Description   : string;
    SearchHit     : boolean;

    SubCategories : TObjectList<TShopSubCategory>;
  end;

var
  GShopCategories : TObjectList<TShopCategory>;


function LoadShop(aFolder : string): boolean;


implementation


uses
  System.Classes, System.SysUtils, System.IOUtils, dialogs,

  settings, utility, utility_content;


function AddShop(aFileName : string): boolean;
var
  lShopCategoryIndex : integer;
  lShopSubCategoryIndex : integer;
  lShopItem : TShopItem;
  lShopSubCategory : TShopSubCategory;
  lFile : TStringList;
  t : integer;
  lMode : integer;

begin
  Result := True;

  lShopCategoryIndex    := GShopCategories.Count - 1;

  lShopSubCategory := TShopSubCategory.Create;
  lShopSubCategory.Description := TPath.GetFileNameWithoutExtension(aFileName);
  GShopCategories[lShopCategoryIndex].SubCategories.Add(lShopSubCategory);

  lShopSubCategoryIndex := GShopCategories[lShopCategoryIndex].SubCategories.Count - 1;

  lMode := -1;

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
                  lShopItem := TShopItem.Create;

                  lMode := 0;
                end;
          '}' : begin
                  if lMode = 0 then begin
                    GShopCategories[lShopCategoryIndex].SubCategories[lShopSubCategoryIndex].Items.Add(lShopItem);

                    inc(ToTStatistics.ShopItemCount);
                  end
                  else
                    ShowMessage('Unpaired { } in: ' + afilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          'a' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Armour   := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('a: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'c' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Cost     := ToTUtilityContent.GetCostFrom(Copy(lFile[t], 3, length(lFile[t]) - 2));
                          lShopitem.Currency := ToTUtilityContent.GetCurrency(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                  else
                    ShowMessage('c: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'd' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Description := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('d: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'h' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Stealth     := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('h: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'i' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Interval    := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('i: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'm' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Damage      := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('m: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'n' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Name        := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('n: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;

                end;
          'p' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Properties  := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('p: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;

                end;
          's' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Strength    := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('s: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;

                end;
          'w' : begin
                  case lMode of
                    0 : begin
                          lShopItem.Weight      := Copy(lFile[t], 3, length(lFile[t]) - 2);
                        end;
                  else
                    ShowMessage('w: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'z' : begin
                  case lMode of
                    0 : begin
                          lShopItem.CostTo   := ToTUtilityContent.GetCostFrom(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                  else
                    ShowMessage('z: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
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


function PopulateShop(aFolder, aShopName : string): boolean;
var
  lShopCategory : TShopCategory;
  searchResult : TSearchRec;

begin
  Result := True;

  lShopCategory := TShopCategory.Create;
  lShopCategory.Description   := aShopName;
  lShopCategory.SubCategories := TObjectList<TShopSubCategory>.Create;

  GShopCategories.Add(lShopCategory);

  // populate the list of available (top level) categories
  if FindFirst(aFolder + '*.txt', faAnyFile, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        AddShop(aFolder + searchResult.Name);
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


function LoadShop(aFolder : string): boolean;
var
  searchResult : TSearchRec;

begin
  Result := True;

  GShopCategories.Clear;

  // populate the list of available (top level) categories
  if Findfirst(aFolder + '*.*', faDirectory, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        if (searchResult.Attr and faDirectory) = faDirectory then begin
          PopulateShop(aFolder + searchResult.Name + '\', ToTUtility.ReplaceTokens(searchResult.Name));
        end;
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


end.
