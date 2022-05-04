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

unit tabcontroller;

interface

uses ComCtrls, Generics.Collections,

     outputentity;

type
  TTableTabObject = class
                    public
                      Category        : integer;  // table tab either uses cat/sub category
                      SubCategory     : integer;
                      TableName       : string;   // or explicit table name

                      LastCategory    : integer;
                      LastSubCategory : integer;
                      LastTableName   : string;

                      TabSheet        : TTabSheet;
                      RichEdit        : TRichEdit;

                      SelectedEntity  : integer;

                      RerollSingle    : integer;

                      FOutputEntities : TObjectList<TOutputEntity>;

                      constructor Create;
                      destructor Destroy;  override;
                    end;

var
  GTableTabs : TObjectList<TTableTabObject>;

implementation


uses System.SysUtils;


constructor TTableTabObject.Create;
begin
  Inherited;

  SelectedEntity  := -1;
  RerollSingle    := -1;

  Category        := 0;
  SubCategory     := 0;
  LastCategory    := -1;
  LastSubCategory := -1;

  FOutputEntities := TObjectList<TOutputEntity>.Create;
end;


destructor TTableTabObject.Destroy;
begin
  FreeAndNil(FOutputEntities);
  FreeAndNil(RichEdit);
  FreeAndNil(TabSheet);

  inherited;
end;


end.
