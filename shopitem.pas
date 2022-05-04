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

unit shopitem;

interface

type
  TShopItem = class
    Name        : string;
    Description : string;

    Armour      : string;
    Damage      : string;
    Interval    : string;
    Properties  : string;
    Strength    : string;
    Stealth     : string;
    Weight      : string;

    Cost        : string;
    CostTo      : string;
    Currency    : integer;

    SearchHit   : boolean;
  public
    constructor Create;
    destructor Destroy;  override;
  end;

implementation


constructor TShopItem.Create;
begin
  inherited;

  Name        := '';
  Description := '-';

  Armour      := '-';
  Damage      := '-';
  Interval    := '-';
  Properties  := '-';
  Strength    := '-';
  Stealth     := '-';
  Weight      := '-';

  Cost        := '';
  CostTo      := '';
  Currency    := -1;
end;


destructor TShopItem.Destroy;
begin
  inherited;
end;


end.
