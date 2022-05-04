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
// January 5th 2017
//

unit settings;

interface

type
  TFavourite   = record
                   CatSubCat : string;
                 end;

  TToTSettings = record
                   DebugMode                : boolean;

                   ToTUnits                 : integer;

                   // == gui: tables ===========================================
                   Top, Left                : integer;
                   Width, Height            : integer;

                   SidePanelWidth           : integer;
                   CategoryPanelHeight      : integer;
                   NamesPanelHeight         : integer;

                   SidePanelFontName        : string;
                   SidePanelFontSize        : integer;
                   MainPanelFontName        : string;
                   MainPanelFontSize        : integer;

                   DisplayMode              : integer; //0 - row-by-row; 1 - paragraphs

                   DescriptionBold          : boolean;
                   DescriptionColour        : integer;
                   OptionBold               : boolean;
                   OptionColour             : integer;
                   HeaderTextBold           : boolean;
                   HeaderTextColour         : integer;

                   OptionLockedBold         : boolean;
                   OptionLockedColour       : integer;

                   OptionFavouriteBold      : boolean;
                   OptionFavouriteColour    : integer;
                   OptionFavouriteInvBold   : boolean;
                   OptionFavouriteInvColour : integer;

                   NPCDescriptionTextColour : integer;
                   NPCDescriptionTextBold   : boolean;
                   NPCOptionTextColour      : integer;
                   NPCOptionTextBold        : boolean;

                   // == gui: images ===========================================
                   ImagesSidePanelWidth     : integer;

                   // == gui: name gen =========================================
                   NameGenSidePanelWidth    : integer;

                   // == gui: shop =============================================
                   ShopCategoryPanelWidth   : integer;
                   ShopTopPanelHeight       : integer;
                   ShopMiddlePanelHeight    : integer;

                   // == favourites ============================================
                   Favourites               : array[1..12] of TFavourite;
                 end;


function LoadSettings(aFileName : string): boolean;
function SaveSettings(aFileName : string): boolean;


var
  GToTSettings : TToTSettings;


implementation


uses System.SysUtils, System.IniFiles, Vcl.Graphics;


function LoadSettings(aFileName : string): boolean;
var
  config : TINIFile;

begin
  Result := True;

  config := TINIFile.Create(aFileName);
  try
    GToTSettings.ToTUnits                 := config.ReadInteger('System',   'ToTUnits',                0);

    // == gui: tables===========================================================
    GToTSettings.DisplayMode              := config.ReadInteger('System',   'DisplayMode',              0);

    GToTSettings.Top                      := config.ReadInteger('System',   'Top',                      20);
    GToTSettings.Left                     := config.ReadInteger('System',   'Left',                     20);
    GToTSettings.Width                    := config.ReadInteger('System',   'Width',                    1000);
    GToTSettings.Height                   := config.ReadInteger('System',   'Height',                   700);

    GToTSettings.SidePanelFontName        := config.ReadString( 'System',   'SidePanelFontName',        'Tahoma');
    GToTSettings.SidePanelFontSize        := config.ReadInteger('System',   'SidePanelFontSize',        8);
    GToTSettings.MainPanelFontName        := config.ReadString( 'System',   'MainPanelFontName',        'Tahoma');
    GToTSettings.MainPanelFontSize        := config.ReadInteger('System',   'MainPanelFontSize',        8);

    GToTSettings.SidePanelWidth           := config.ReadInteger('System',   'SidePanelWidth',           180);
    GToTSettings.CategoryPanelHeight      := config.ReadInteger('System',   'CategoryPanelHeight',      170);
    GToTSettings.NamesPanelHeight         := config.ReadInteger('System',   'NamesPanelHeight',         115);

    GToTSettings.DescriptionBold          := config.ReadBool(   'System',   'DescriptionBold',          False);
    GToTSettings.DescriptionColour        := config.ReadInteger('System',   'DescriptionColour',        clBlack);
    GToTSettings.OptionBold               := config.ReadBool(   'System',   'OptionBold',               False);
    GToTSettings.OptionColour             := config.ReadInteger('System',   'OptionColour',             clBlue);
    GToTSettings.HeaderTextBold           := config.ReadBool(   'System',   'HeaderTextBold',           False);
    GToTSettings.HeaderTextColour         := config.ReadInteger('System',   'HeaderTextColour',         clRed);

    GToTSettings.OptionLockedBold         := config.ReadBool(   'System',   'OptionLockedBold',         False);
    GToTSettings.OptionLockedColour       := config.ReadInteger('System',   'OptionLockedColour',       clGray);

    GToTSettings.OptionFavouriteBold       := config.ReadBool(   'System',  'OptionFavouriteBold',      False);
    GToTSettings.OptionFavouriteColour     := config.ReadInteger('System',  'OptionFavouriteColour',    clRed);
    GToTSettings.OptionFavouriteInvBold    := config.ReadBool(   'System',  'OptionFavouriteInvBold',   False);
    GToTSettings.OptionFavouriteInvColour  := config.ReadInteger('System',  'OptionFavouriteInvColour', clWhite);

    GToTSettings.NPCDescriptionTextBold    := config.ReadBool(   'System',  'NPCDescriptionTextBold',    False);
    GToTSettings.NPCDescriptionTextColour  := config.ReadInteger('System',  'NPCDescriptionTextColour',  clBlack);
    GToTSettings.NPCOptionTextBold         := config.ReadBool(   'System',  'NPCOptionTextBold',         False);
    GToTSettings.NPCOptionTextColour       := config.ReadInteger('System',  'NPCOptionTextColour',       clRed);

    // == gui: images ==========================================================
    GToTSettings.ImagesSidePanelWidth     := config.ReadInteger('System',   'ImagesSidePanelWidth',     180);

    // == gui: name gen ========================================================
    GToTSettings.NameGenSidePanelWidth    := config.ReadInteger('System',   'NameGenSidePanelWidth',    180);

    // == gui: shop ============================================================
    GToTSettings.ShopCategoryPanelWidth   := config.ReadInteger('System',   'ShopCategoryPanelWidth',   180);
    GToTSettings.ShopTopPanelHeight       := config.ReadInteger('System',   'ShopTopPanelHeight',       150);
    GToTSettings.ShopMiddlePanelHeight    := config.ReadInteger('System',   'ShopMiddlePanelHeight',    150);

    // == favourites ===========================================================
    GToTSettings.Favourites[1].CatSubCat  := config.ReadString( 'System',   'Favourites1',              '');
    GToTSettings.Favourites[2].CatSubCat  := config.ReadString( 'System',   'Favourites2',              '');
    GToTSettings.Favourites[3].CatSubCat  := config.ReadString( 'System',   'Favourites3',              '');
    GToTSettings.Favourites[4].CatSubCat  := config.ReadString( 'System',   'Favourites4',              '');
    GToTSettings.Favourites[5].CatSubCat  := config.ReadString( 'System',   'Favourites5',              '');
    GToTSettings.Favourites[6].CatSubCat  := config.ReadString( 'System',   'Favourites6',              '');
    GToTSettings.Favourites[7].CatSubCat  := config.ReadString( 'System',   'Favourites7',              '');
    GToTSettings.Favourites[8].CatSubCat  := config.ReadString( 'System',   'Favourites8',              '');
    GToTSettings.Favourites[9].CatSubCat  := config.ReadString( 'System',   'Favourites9',              '');
    GToTSettings.Favourites[10].CatSubCat := config.ReadString( 'System',   'Favourites10',             '');
    GToTSettings.Favourites[11].CatSubCat := config.ReadString( 'System',   'Favourites11',             '');
    GToTSettings.Favourites[12].CatSubCat := config.ReadString( 'System',   'Favourites12',             '');

    // == debug ================================================================
    GToTSettings.DebugMode                := config.ReadBool(   'System',   'DebugMode',                False);
  finally
    config.Free;
  end;
end;


function SaveSettings(aFileName : string): boolean;
var
  config : TINIFile;

begin
  Result := True;

  config := TINIFile.Create(aFileName);
  try
    config.WriteInteger('System', 'ToTUnits',                  GToTSettings.ToTUnits);

    // // == gui: tables =======================================================
    config.WriteInteger('System', 'DisplayMode',               GToTSettings.DisplayMode);

    config.WriteInteger('System', 'Top',                       GToTSettings.Top);
    config.WriteInteger('System', 'Left',                      GToTSettings.Left);
    config.WriteInteger('System', 'Width',                     GToTSettings.Width);
    config.WriteInteger('System', 'Height',                    GToTSettings.Height);

    config.WriteString( 'System', 'SidePanelFontName',         GToTSettings.SidePanelFontName);
    config.WriteInteger('System', 'SidePanelFontSize',         GToTSettings.SidePanelFontSize);
    config.WriteString( 'System', 'MainPanelFontName',         GToTSettings.MainPanelFontName);
    config.WriteInteger('System', 'MainPanelFontSize',         GToTSettings.MainPanelFontSize);

    config.WriteInteger('System', 'SidePanelWidth',            GToTSettings.SidePanelWidth);
    config.WriteInteger('System', 'CategoryPanelHeight',       GToTSettings.CategoryPanelHeight);
    config.WriteInteger('System', 'NamesPanelHeight',          GToTSettings.NamesPanelHeight);

    config.WriteBool(   'System', 'DescriptionBold',           GToTSettings.DescriptionBold);
    config.WriteInteger('System', 'DescriptionColour',         GToTSettings.DescriptionColour);
    config.WriteBool(   'System', 'OptionBold',                GToTSettings.OptionBold);
    config.WriteInteger('System', 'OptionColour',              GToTSettings.OptionColour);
    config.WriteBool(   'System', 'HeaderTextBold',            GToTSettings.HeaderTextBold);
    config.WriteInteger('System', 'HeaderTextColour',          GToTSettings.HeaderTextColour);

    config.WriteBool(   'System', 'OptionLockedBold',          GToTSettings.OptionLockedBold );
    config.WriteInteger('System', 'OptionLockedColour',        GToTSettings.OptionLockedColour);

    config.WriteBool(   'System', 'OptionFavouriteBold',       GToTSettings.OptionFavouriteBold);
    config.WriteInteger('System', 'OptionFavouriteColour',     GToTSettings.OptionFavouriteColour);
    config.WriteBool(   'System', 'OptionFavouriteInvBold',    GToTSettings.OptionFavouriteInvBold);
    config.WriteInteger('System', 'OptionFavouriteInvColour',  GToTSettings.OptionFavouriteInvColour);

    config.WriteBool(   'System',  'NPCDescriptionTextBold',   GToTSettings.NPCDescriptionTextBold);
    config.WriteInteger('System',  'NPCDescriptionTextColour', GToTSettings.NPCDescriptionTextColour);
    config.WriteBool(   'System',  'NPCOptionTextBold',        GToTSettings.NPCOptionTextBold);
    config.WriteInteger('System',  'NPCOptionTextColour',      GToTSettings.NPCOptionTextColour);

    // == gui: name gen ========================================================
    config.WriteInteger('System', 'NameGenSidePanelWidth',     GToTSettings.NameGenSidePanelWidth);

    // == gui: images ==========================================================
    config.WriteInteger('System', 'ImagesSidePanelWidth',      GToTSettings.ImagesSidePanelWidth);

    // == gui: shop ============================================================
    config.WriteInteger('System', 'ShopCategoryPanelWidth',    GToTSettings.ShopCategoryPanelWidth);
    config.WriteInteger('System', 'ShopTopPanelHeight',        GToTSettings.ShopTopPanelHeight);
    config.WriteInteger('System', 'ShopMiddlePanelHeight',     GToTSettings.ShopMiddlePanelHeight);

    // == favourites ===========================================================
    config.WriteString( 'System', 'Favourites1',               GToTSettings.Favourites[1].CatSubCat);
    config.WriteString( 'System', 'Favourites2',               GToTSettings.Favourites[2].CatSubCat);
    config.WriteString( 'System', 'Favourites3',               GToTSettings.Favourites[3].CatSubCat);
    config.WriteString( 'System', 'Favourites4',               GToTSettings.Favourites[4].CatSubCat);
    config.WriteString( 'System', 'Favourites5',               GToTSettings.Favourites[5].CatSubCat);
    config.WriteString( 'System', 'Favourites6',               GToTSettings.Favourites[6].CatSubCat);
    config.WriteString( 'System', 'Favourites7',               GToTSettings.Favourites[7].CatSubCat);
    config.WriteString( 'System', 'Favourites8',               GToTSettings.Favourites[8].CatSubCat);
    config.WriteString( 'System', 'Favourites9',               GToTSettings.Favourites[9].CatSubCat);
    config.WriteString( 'System', 'Favourites10',              GToTSettings.Favourites[10].CatSubCat);
    config.WriteString( 'System', 'Favourites11',              GToTSettings.Favourites[11].CatSubCat);
    config.WriteString( 'System', 'Favourites12',              GToTSettings.Favourites[12].CatSubCat);

    // == debug ================================================================
    config.WriteBool(   'System', 'DebugMode',                 GToTSettings.DebugMode);
  finally
    config.Free;
  end;
end;


end.
