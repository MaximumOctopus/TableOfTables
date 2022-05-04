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

unit shopsubcategory;

interface


uses
  Generics.Collections,

  shopitem;


type
  TShopSubCategory = class
    Description : string;
    SearchHit   : boolean;

    Items       : TObjectList<TShopItem>;
  public
    constructor Create;
    destructor Destroy;  override;
  end;


implementation


uses
  System.SysUtils;


constructor TShopSubCategory.Create;
begin
  inherited;

  Items := TObjectList<TShopItem>.Create;
end;


destructor TShopSubCategory.Destroy;
begin
  FreeAndNil(Items);

  inherited;
end;


end.
