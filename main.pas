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

unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.Menus,
  Vcl.ImgList, Generics.Collections, Vcl.Buttons, Vcl.ExtDlgs,

  search, searchshop, System.ImageList;

type
  TfrmMain = class(TForm)
    ImageList1: TImageList;
    sbMain: TStatusBar;
    ImageList2: TImageList;
    puOutput: TPopupMenu;
    miOutputDescription: TMenuItem;
    miOutputAction: TMenuItem;
    N3: TMenuItem;
    Reroll1: TMenuItem;
    pcMain: TPageControl;
    tsMainImages: TTabSheet;
    pImages: TPanel;
    Panel5: TPanel;
    iImages: TImage;
    sbImagesClear: TSpeedButton;
    Splitter3: TSplitter;
    sbImagesAdd: TSpeedButton;
    sbImagesSaveList: TSpeedButton;
    lbImages: TListBox;
    opdMain: TOpenPictureDialog;
    sdMain: TSaveDialog;
    sbImagesLoadList: TSpeedButton;
    odMain: TOpenDialog;
    tsMainTables: TTabSheet;
    CoolBar1: TCoolBar;
    tbMain: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbSearch: TToolButton;
    ToolButton3: TToolButton;
    tbCopyToClipboard: TToolButton;
    ToolButton4: TToolButton;
    tbLockRollAll: TToolButton;
    tbUnlockAll: TToolButton;
    tbLockRoll: TToolButton;
    pSidePanel: TPanel;
    Splitter2: TSplitter;
    pCategories: TPanel;
    lbCategories: TListBox;
    pCategoriesTitle: TPanel;
    Panel3: TPanel;
    lbSubCategories: TListBox;
    pSubCategoriesTitle: TPanel;
    Splitter1: TSplitter;
    pcTables: TPageControl;
    tsMain: TTabSheet;
    lOutput: TRichEdit;
    ToolButton5: TToolButton;
    tbAddNewTab: TToolButton;
    tbRemoveTable : TToolButton;
    ilTabs: TImageList;
    Rerollthisitem1: TMenuItem;
    N7: TMenuItem;
    tbAddToFavs: TToolButton;
    ToolButton7: TToolButton;
    tbShowFavourites: TToolButton;
    puRollFavourites: TPopupMenu;
    tbDeleteFromFavs: TToolButton;
    ToolButton6: TToolButton;
    tbRenameCurrentTab: TToolButton;
    N11: TMenuItem;
    miTableReferences: TMenuItem;
    tsMainShop: TTabSheet;
    pShopCategory: TPanel;
    Splitter4: TSplitter;
    pShopTop: TPanel;
    lbShopCategory: TListBox;
    pShopCategories: TPanel;
    Panel8: TPanel;
    lbShopItems: TListBox;
    pShopItems: TPanel;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    pShopMiddle: TPanel;
    lbShopSubCategory: TListBox;
    pShopSubCategories: TPanel;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    tbSearchShop: TToolButton;
    ToolButton13: TToolButton;
    Panel9: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    lShopCost: TLabel;
    lShopCurrency: TLabel;
    Panel12: TPanel;
    lShopName: TLabel;
    lSLAC: TLabel;
    Panel13: TPanel;
    lShopDescription: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lShopAC: TLabel;
    lShopStrength: TLabel;
    lShopStealth: TLabel;
    lShopWeight: TLabel;
    Label4: TLabel;
    lShopDamage: TLabel;
    Label9: TLabel;
    lShopProperties: TLabel;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    miLoadLayout: TMenuItem;
    miSaveLayout: TMenuItem;
    N6: TMenuItem;
    miExit: TMenuItem;
    Edit1: TMenuItem;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    Preferences1: TMenuItem;
    N9: TMenuItem;
    Addnewtab1: TMenuItem;
    miRemoveCurrentTab: TMenuItem;
    N10: TMenuItem;
    miRenameCurrentTab: TMenuItem;
    Search1: TMenuItem;
    Find1: TMenuItem;
    N2: TMenuItem;
    Clearsearch1: TMenuItem;
    View1: TMenuItem;
    Showall1: TMenuItem;
    Favourites1: TMenuItem;
    Favourite11: TMenuItem;
    miFav1: TMenuItem;
    Addcurrent1: TMenuItem;
    Rollfavourite1: TMenuItem;
    Favourite12: TMenuItem;
    miFav2: TMenuItem;
    Addcurrent2: TMenuItem;
    Rollfavourite2: TMenuItem;
    Favourite13: TMenuItem;
    miFav3: TMenuItem;
    Addcurrent3: TMenuItem;
    Rollfavourite3: TMenuItem;
    Favourite14: TMenuItem;
    miFav4: TMenuItem;
    Addcurrent4: TMenuItem;
    Rollfavourite4: TMenuItem;
    Favourite15: TMenuItem;
    miFav5: TMenuItem;
    Addcurrent5: TMenuItem;
    Rollfavourite5: TMenuItem;
    Favourite16: TMenuItem;
    miFav6: TMenuItem;
    Addcurrent6: TMenuItem;
    Rollfavourite6: TMenuItem;
    Favourite17: TMenuItem;
    miFav7: TMenuItem;
    Addcurrent7: TMenuItem;
    Rollfavourite7: TMenuItem;
    Favourite18: TMenuItem;
    miFav8: TMenuItem;
    Addcurrent8: TMenuItem;
    Rollfavourite8: TMenuItem;
    Favourite19: TMenuItem;
    miFav9: TMenuItem;
    Addcurrent9: TMenuItem;
    Rollfavourite9: TMenuItem;
    Favourite110: TMenuItem;
    miFav10: TMenuItem;
    Addcurrent10: TMenuItem;
    Rollfavourite10: TMenuItem;
    Favourite101: TMenuItem;
    miFav11: TMenuItem;
    Addcurrent11: TMenuItem;
    Rollfavourite11: TMenuItem;
    Favourite102: TMenuItem;
    miFav12: TMenuItem;
    Addcurrent12: TMenuItem;
    Rollfavourite12: TMenuItem;
    Help1: TMenuItem;
    Re1: TMenuItem;
    Customisinghowto1: TMenuItem;
    N8: TMenuItem;
    VisitTableofTablesonReddit1: TMenuItem;
    N4: TMenuItem;
    Checkforupdates1: TMenuItem;
    UpdateDatabeta1: TMenuItem;
    N5: TMenuItem;
    About1: TMenuItem;
    miDebug: TMenuItem;
    Rollwithtablename1: TMenuItem;
    miDebugRollAllTables: TMenuItem;
    N12: TMenuItem;
    tsMainGenerators: TTabSheet;
    pcGenerators: TPageControl;
    tsGenName: TTabSheet;
    tsGenNPC: TTabSheet;
    pNameGen: TPanel;
    Panel2: TPanel;
    lbNGNames: TListBox;
    Panel4: TPanel;
    Splitter5: TSplitter;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sbNGClear: TSpeedButton;
    sbNGCopy: TSpeedButton;
    SpeedButton1: TSpeedButton;
    sbNGHistoryCopy: TSpeedButton;
    sbNGClearHistory: TSpeedButton;
    Label3: TLabel;
    bNGTitle: TBitBtn;
    bNGName: TBitBtn;
    bNGAdjective: TBitBtn;
    bNGNoun: TBitBtn;
    bNGOther: TBitBtn;
    cbNGTemplates: TComboBox;
    eNGName: TEdit;
    bNGNewName: TBitBtn;
    mNGHistory: TMemo;
    Label5: TLabel;
    sbNPCFlipLockState: TSpeedButton;
    eNPCGender: TEdit;
    sbNPCFlipLockState1: TSpeedButton;
    Label10: TLabel;
    eNPCRace: TEdit;
    Label11: TLabel;
    eNPCLA: TEdit;
    sbNPCFlipLockState2: TSpeedButton;
    sbNPCFlipLockState3: TSpeedButton;
    Label15: TLabel;
    eNPCMA: TEdit;
    sbNPCFlipLockState11: TSpeedButton;
    Label17: TLabel;
    eNPCMark: TEdit;
    CoolBar3: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    tbCopyNPCToClipboard: TToolButton;
    ToolButton10: TToolButton;
    tbNPCLockAll: TToolButton;
    tbNPCUnlockAll: TToolButton;
    ToolButton11: TToolButton;
    cbNPCList: TComboBox;
    Label19: TLabel;
    eNPCHighAbility: TEdit;
    sbNPCFlipLockState12: TSpeedButton;
    Label21: TLabel;
    eNPCLowAbility: TEdit;
    sbNPCFlipLockState13: TSpeedButton;
    sbNPCFlipLockState4: TSpeedButton;
    Label23: TLabel;
    eNPCTalent: TEdit;
    sbNPCRefreshItem: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    Label12: TLabel;
    eNPCTrait: TEdit;
    sbNPCFlipLockState6: TSpeedButton;
    sbNPCFlipLockState7: TSpeedButton;
    Label13: TLabel;
    eNPCBond: TEdit;
    Label14: TLabel;
    eNPCFlaw: TEdit;
    sbNPCFlipLockState8: TSpeedButton;
    Label16: TLabel;
    eNPCIdeal: TEdit;
    sbNPCFlipLockState14: TSpeedButton;
    Label18: TLabel;
    eNPCEmotion: TEdit;
    sbNPCFlipLockState9: TSpeedButton;
    Label20: TLabel;
    eNPCSocialClass: TEdit;
    sbNPCFlipLockState10: TSpeedButton;
    Label22: TLabel;
    eNPCOccupation: TEdit;
    sbNPCFlipLockState15: TSpeedButton;
    Label24: TLabel;
    eNPCMannerism: TEdit;
    sbNPCFlipLockState5: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton26: TSpeedButton;
    sbNPCFlipLockState20: TSpeedButton;
    sbNPCFlipLockState21: TSpeedButton;
    sbNPCFlipLockState22: TSpeedButton;
    sbNPCFlipLockState23: TSpeedButton;
    sbNPCFlipLockState24: TSpeedButton;
    sbNPCFlipLockState25: TSpeedButton;
    eNPCHeight: TEdit;
    Label62: TLabel;
    eNPCPhysique: TEdit;
    Label61: TLabel;
    eNPCAgeGroup: TEdit;
    Label60: TLabel;
    eNPCHairColour: TEdit;
    Label59: TLabel;
    eNPCEyeShape: TEdit;
    Label58: TLabel;
    eNPCEyeColour: TEdit;
    Label57: TLabel;
    SpeedButton47: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton42: TSpeedButton;
    Label49: TLabel;
    eNPCParents: TEdit;
    SpeedButton55: TSpeedButton;
    SpeedButton54: TSpeedButton;
    eNPCSiblings: TEdit;
    SpeedButton53: TSpeedButton;
    eNPCCousins: TEdit;
    eNPCAunts: TEdit;
    SpeedButton52: TSpeedButton;
    SpeedButton51: TSpeedButton;
    eNPCUncles: TEdit;
    eNPCChildren: TEdit;
    SpeedButton50: TSpeedButton;
    SpeedButton49: TSpeedButton;
    eNPCFamily: TEdit;
    SpeedButton48: TSpeedButton;
    eNPCMaritalStatus: TEdit;
    Label56: TLabel;
    Label55: TLabel;
    sbNPCFlipLockState36: TSpeedButton;
    sbNPCFlipLockState37: TSpeedButton;
    sbNPCFlipLockState35: TSpeedButton;
    Label54: TLabel;
    sbNPCFlipLockState34: TSpeedButton;
    Label53: TLabel;
    sbNPCFlipLockState33: TSpeedButton;
    Label52: TLabel;
    sbNPCFlipLockState32: TSpeedButton;
    Label51: TLabel;
    sbNPCFlipLockState31: TSpeedButton;
    Label50: TLabel;
    sbNPCFlipLockState30: TSpeedButton;
    reNPCOutput: TRichEdit;
    Rollcurrenttable100times1: TMenuItem;
    Rollcurrenttable1000times1: TMenuItem;
    Panel1: TPanel;
    lbNGContents: TListBox;
    cbNGType: TComboBox;
    Splitter8: TSplitter;
    lNGObjects: TLabel;
    tsMisc: TTabSheet;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    eHCCopper: TEdit;
    eHCSilver: TEdit;
    eHCGold: TEdit;
    eHCPlatinum: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    eHCWCopper: TLabel;
    eHCWSilver: TLabel;
    eHCWGold: TLabel;
    eHCWPlatinum: TLabel;
    Label36: TLabel;
    eHCVCopper: TLabel;
    eHCVSilver: TLabel;
    eHCVGold: TLabel;
    eHCVPlatinum: TLabel;
    lHCTotal: TLabel;
    lHCTotalWeight: TLabel;
    lHCTotalCoins: TLabel;
    lHCTotalVolume: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbCategoriesClick(Sender: TObject);
    procedure lbSubCategoriesClick(Sender: TObject);
    procedure miExitClick(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure tbCopyToClipboardClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure Preferences1Click(Sender: TObject);
    procedure Addcurrent1Click(Sender: TObject);
    procedure Rollfavourite1Click(Sender: TObject);
    procedure tbSearchClick(Sender: TObject);
    procedure Clearsearch1Click(Sender: TObject);
    procedure lOutputClick(Sender: TObject);
    procedure tbLockRollClick(Sender: TObject);
    procedure tbLockRollAllClick(Sender: TObject);
    procedure tbUnlockAllClick(Sender: TObject);
    procedure puOutputPopup(Sender: TObject);
    procedure miOutputActionClick(Sender: TObject);
    procedure VisitTableofTablesonReddit1Click(Sender: TObject);
    procedure sbImagesAddClick(Sender: TObject);
    procedure lbImagesClick(Sender: TObject);
    procedure sbImagesSaveListClick(Sender: TObject);
    procedure sbImagesClearClick(Sender: TObject);
    procedure sbImagesLoadListClick(Sender: TObject);
    procedure Checkforupdates1Click(Sender: TObject);
    procedure tbAddNewTabClick(Sender: TObject);
    procedure pcTablesChange(Sender: TObject);
    procedure tbRemoveTableClick(Sender: TObject);
    procedure miSaveLayoutClick(Sender: TObject);
    procedure miLoadLayoutClick(Sender: TObject);
    procedure lbNGNamesClick(Sender: TObject);
    procedure bNGTitleClick(Sender: TObject);
    procedure cbNGTemplatesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbNGTemplatesChange(Sender: TObject);
    procedure bNGNewNameClick(Sender: TObject);
    procedure sbNGClearClick(Sender: TObject);
    procedure Showall1Click(Sender: TObject);
    procedure sbNGCopyClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Rerollthisitem1Click(Sender: TObject);
    procedure tbAddToFavsClick(Sender: TObject);
    procedure lbSubCategoriesDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure RollFavouriteClick(Sender: TObject);
    procedure tbDeleteFromFavsClick(Sender: TObject);
    procedure lbCategoriesDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Re1Click(Sender: TObject);
    procedure Customisinghowto1Click(Sender: TObject);
    procedure Splitter3CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure Splitter5CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer;
      var Accept: Boolean);
    procedure tbRenameCurrentTabClick(Sender: TObject);
    procedure UpdateDatabeta1Click(Sender: TObject);
    procedure Rollwithtablename1Click(Sender: TObject);
    procedure TableReferencesClick(Sender: TObject);
    procedure sbNGHistoryCopyClick(Sender: TObject);
    procedure sbNGClearHistoryClick(Sender: TObject);
    procedure lbShopCategoryClick(Sender: TObject);
    procedure lbShopItemsClick(Sender: TObject);
    procedure lbShopSubCategoryClick(Sender: TObject);
    procedure lbShopItemsDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure tbCopyNPCToClipboardClick(Sender: TObject);
    procedure sbNPCRefreshItemClick(Sender: TObject);
    procedure sbNPCFlipLockStateClick(Sender: TObject);
    procedure tbNPCLockAllClick(Sender: TObject);
    procedure tbNPCUnlockAllClick(Sender: TObject);
    procedure miDebugRollAllTablesClick(Sender: TObject);
    procedure cbNPCListChange(Sender: TObject);
    procedure lbShopCategoryDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure lbShopSubCategoryDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure Rollcurrenttable100times1Click(Sender: TObject);
    procedure Rollcurrenttable1000times1Click(Sender: TObject);
    procedure cbNGTypeChange(Sender: TObject);
    procedure eHCCopperExit(Sender: TObject);
    procedure eHCCopperChange(Sender: TObject);
  private
    FTableTabsIndex  : integer;
    FTTTOId          : integer;
    FLastTableSearch : TTableSearch;
    FLastShopSearch  : TShopSearch;

    FavMIList : array[1..12] of TMenuItem;

    NPCButtons : array[0..37] of TSpeedButton;

    HoardCoins : array[0..3] of TEdit;
    HoardCoinsWeight : array[0..3] of TLabel;
    HoardCoinsVolume : array[0..3] of TLabel;

    procedure InitGUI;
    procedure SetLastSearch;
    procedure UpdateCategories;
    procedure UpdateGUI;
    function  CreateNewTableTab(aCat, aSubCat : integer; aTableName : string): integer;
    procedure SetCategoryLists(aCategory, aSubCategory : integer; aRefresh : boolean);

    procedure SearchShop;
    procedure SearchTables;
    procedure ClearTableSearch;
    procedure ClearShopSearch;

    procedure RollCurrentTable(aCount : integer);

    procedure PopulateEntitiesFromFavourite(aInput : string);

    function  OutputEntityExists(aTableID : integer): integer;
    procedure RollTable(aCategory, aSubCategory : integer; aOnlyRefresh : boolean); overload;
    procedure RollTable(aTableName : string; aOnlyRefresh : boolean); overload;

    function  GetIndexFrom(aTabSheet : TTabSheet): integer;

    procedure UpdateImageList;

    procedure BuildRollFavouritesMenu(aSubCatID : integer);

    function  BuildReferenceMenu: boolean;

    procedure LoadLayout(aFilename : string);
    procedure SaveLayout(aFilename : string);

    procedure UpdateShopCategories;
    procedure BuildShopItem(aShopCategory, aShopSubCategory, aShopItem : integer);

    procedure BuildNewNPC;
    procedure UpdateNPCLock;

    procedure AddNPCDescriptionText;

    procedure BuildHoardCalculations;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses System.UITypes, Clipbrd, jpeg,

     about, outputentity, tables, names, imagehandler, constants, settings,
     userpreferences, utility, utility_content, tabcontroller, checkversion, viewer,
     totfunctions, updater, shop, shopitem, npc, statistics, hoardcalc, debug;


const
  tabTables     = 0;
  tabGenerators = 1;
  tabImages     = 2;
  tabShop       = 3;

  tabNameGen    = 0;
  tabNPCGen     = 1;


procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Randomize;

  ClearStatistics;

  FTTTOId := 1;

  FavMIList[1] := miFav1; FavMIList[2] := miFav2; FavMIList[3] := miFav3; FavMIList[4]  := miFav4;  FavMIList[5]  := miFav5;  FavMIList[6]  := miFav6;
  FavMIList[7] := miFav7; FavMIList[8] := miFav8; FavMIList[9] := miFav9; FavMIList[10] := miFav10; FavMIList[11] := miFav11; FavMIList[12] := miFav12;

  HoardCoins[0] := eHCCopper; HoardCoins[1] := eHCSilver;
  HoardCoins[2] := eHCGold;   HoardCoins[3] := eHCPlatinum;

  HoardCoinsWeight[0] := eHCWCopper; HoardCoinsWeight[1] := eHCWSilver;
  HoardCoinsWeight[2] := eHCWGold;   HoardCoinsWeight[3] := eHCWPlatinum;

  HoardCoinsVolume[0] := eHCVCopper; HoardCoinsVolume[1] := eHCVSilver;
  HoardCoinsVolume[2] := eHCVGold;   HoardCoinsVolume[3] := eHCVPlatinum;

  Caption := 'Table of Tables :: ' + dateToT + ', ' + versionToT;

  LoadSettings(ExtractFilePath(Application.ExeName) + 'tot.ini');
  miDebug.Visible := GToTSettings.DebugMode;
  SetLastSearch;

  GCategories     := TObjectList<TCategory>.Create;
  GSubCategories  := TObjectList<TSubCategory>.Create;
  GTables         := TObjectList<TTable>.Create;
  GNames          := TObjectList<TName>.Create;
  GImages         := TObjectList<TToTImage>.Create;
  GTableTabs      := TObjectList<TTableTabObject>.Create;
  GNPCs           := TObjectList<TNPC>.Create;

  GShopCategories := TObjectList<TShopCategory>.Create;

  GHoardCalc      := TObjectList<THoardCoin>.Create;

  NPCButtons[0] := sbNPCFlipLockState;  NPCButtons[1] := sbNPCFlipLockState1;
  NPCButtons[2] := sbNPCFlipLockState2; NPCButtons[3] := sbNPCFlipLockState3;
  NPCButtons[4] := sbNPCFlipLockState4; NPCButtons[5] := sbNPCFlipLockState5;
  NPCButtons[6] := sbNPCFlipLockState6; NPCButtons[7] := sbNPCFlipLockState7;
  NPCButtons[8] := sbNPCFlipLockState8; NPCButtons[9] := sbNPCFlipLockState9;

  NPCButtons[10] := sbNPCFlipLockState10; NPCButtons[11] := sbNPCFlipLockState11;
  NPCButtons[12] := sbNPCFlipLockState12; NPCButtons[13] := sbNPCFlipLockState13;
  NPCButtons[14] := sbNPCFlipLockState14; NPCButtons[15] := sbNPCFlipLockState15;
  NPCButtons[16] := Nil;                  NPCButtons[17] := Nil;
  NPCButtons[18] := Nil;                  NPCButtons[19] := Nil;

  NPCButtons[20] := sbNPCFlipLockState20; NPCButtons[21] := sbNPCFlipLockState21;
  NPCButtons[22] := sbNPCFlipLockState22; NPCButtons[23] := sbNPCFlipLockState23;
  NPCButtons[24] := sbNPCFlipLockState24; NPCButtons[25] := sbNPCFlipLockState25;
  NPCButtons[26] := Nil;                  NPCButtons[27] := Nil;
  NPCButtons[28] := Nil;                  NPCButtons[29] := Nil;

  NPCButtons[30] := sbNPCFlipLockState30; NPCButtons[31] := sbNPCFlipLockState31;
  NPCButtons[32] := sbNPCFlipLockState32; NPCButtons[33] := sbNPCFlipLockState33;
  NPCButtons[34] := sbNPCFlipLockState34; NPCButtons[35] := sbNPCFlipLockState35;
  NPCButtons[36] := sbNPCFlipLockState36; NPCButtons[37] := sbNPCFlipLockState37;

  LoadNames(ExtractFilePath(Application.ExeName) + 'data\names\');
  LoadTables(ExtractFilePath(Application.ExeName) + 'data\tables\');
  LoadFavourites(ExtractFilePath(Application.ExeName) + 'data\favourites\fav.data');

  LoadShop(ExtractFilePath(Application.ExeName) + 'data\shop\');
  LoadNPCs(ExtractFilePath(Application.ExeName) + 'data\npc\');

  LoadHoardCalc(ExtractFilePath(Application.ExeName) + 'data\misc\Hoard\');

  InitGUI;
  UpdateGUI;
end;


procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  GToTSettings.Top                    := Top;
  GToTSettings.Left                   := Left;
  GToTSettings.Width                  := Width;
  GToTSettings.Height                 := Height;
  GToTSettings.SidePanelWidth         := pSidePanel.Width;
  GToTSettings.CategoryPanelHeight    := pCategories.Height;
  GToTSettings.NamesPanelHeight       := lbNGNames.Height;

  GToTSettings.ShopCategoryPanelWidth := pShopCategory.Width;
  GToTSettings.ShopTopPanelHeight     := pShopTop.Height;
  GToTSettings.ShopMiddlePanelHeight  := pShopMiddle.Height;

  GToTSettings.NameGenSidePanelWidth  := pNameGen.Width;
  GToTSettings.ImagesSidePanelWidth   := pImages.Width;

  SaveSettings(ExtractFilePath(Application.ExeName) + 'tot.ini');

  SaveFavourites(ExtractFilePath(Application.ExeName) + 'data\favourites\fav.data');

  // ===========================================================================

  FreeAndNil(GTableTabs);
  FreeAndNil(GImages);
  FreeAndNil(GNames);
  FreeAndNil(GTables);
  FreeAndNil(GSubCategories);
  FreeAndNil(GCategories);

  FreeAndNil(GShopCategories);

  FreeAndNil(GHoardCalc);
end;


// =============================================================================


procedure TfrmMain.InitGUI;
var
  t : integer;
  ttto : TTableTabObject;

begin
  for t := 1 to 12 do begin
    if GToTSettings.Favourites[t].CatSubCat = '' then
      FavMIList[t].Caption := '#Empty'
    else
      FavMIList[t].Caption := StringReplace(GToTSettings.Favourites[t].CatSubCat, '*', ' / ', [rfReplaceAll]);
  end;

  // ===========================================================================

  ttto := TTableTabObject.Create;

  ttto.TabSheet        := tsMain;
  ttto.TabSheet.Tag    := FTTTOId;

  ttto.RichEdit        := lOutput;
  ttto.TabSheet.Tag    := FTTTOId;

  GTableTabs.Add(ttto);

  inc(FTTTOId);

  FTableTabsIndex := 0;

  // ===========================================================================
  // ===========================================================================

  for t := 0 to GNames.Count - 1 do begin
    lbNGNames.Items.Add(GNames[t].Description);
  end;

  lbNGNames.ItemIndex := 0;
  lbNGNamesClick(lbNGNames);

  // ===========================================================================

  for t := 0 to GNPCs.Count - 1 do
    cbNPCList.Items.Add(GNPCs[t].Description);

  cbNPCList.ItemIndex := 0;

  BuildNewNPC;

  // ===========================================================================

  UpdateShopCategories;

  pcMain.ActivePageIndex := tabTables;
end;


procedure TfrmMain.SetLastSearch;
begin
  FLastTableSearch.SearchTerm    := '';
  FLastTableSearch.Names         := True;
  FLastTableSearch.Titles        := True;
  FLastTableSearch.RollableItems := True;
end;


function TfrmMain.GetIndexFrom(aTabSheet : TTabSheet): integer;
var
  t : integer;

begin
  Result := -1;

  if aTabSheet <> Nil then begin
    if GTableTabs.Count <> 0 then begin
      for t := 0 to GTableTabs.Count - 1 do begin
        if GTableTabs[t].TabSheet = aTabSheet then begin
          Result := t;

          Break;
        end;
      end;
    end;
  end;
end;


procedure TfrmMain.UpdateCategories;
var
  t : integer;

begin
  lbCategories.Clear;

  for t := 0 to GCategories.Count - 1 do
    lbCategories.Items.Add(GCategories[t].Title);

  lbCategories.ItemIndex   := 0;

  pCategoriesTitle.Caption := 'Categories (' + IntToStr(lbCategories.Count) + ')';

  lbCategoriesClick(lbCategories);
end;


procedure TfrmMain.UpdateShopCategories;
var
  t : integer;

begin
  lbShopCategory.Clear;

  if GShopCategories.Count <> 0 then begin
    for t := 0 to GShopCategories.Count - 1 do begin
      lbShopCategory.Items.Add(GShopCategories[t].Description);
    end;

    pShopCategories.Caption  := 'Categories (' + IntToStr(lbShopCategory.Count) + ')';

    lbShopCategory.ItemIndex := 0;

    lbShopCategoryClick(Nil);
  end;
end;


procedure TfrmMain.UpdateDatabeta1Click(Sender: TObject);
begin
  UpdateData;
end;


procedure TfrmMain.UpdateGUI;
begin
  UpdateCategories;

  // ===========================================================================

  Top                       := GToTSettings.Top;
  Left                      := GToTSettings.Left;
  Width                     := GToTSettings.Width;
  Height                    := GToTSettings.Height;

  pSidePanel.Width          := GToTSettings.SidePanelWidth;
  pCategories.Height        := GToTSettings.CategoryPanelHeight;
  lbNGNames.Height          := GToTSettings.NamesPanelHeight;

  pShopCategory.Width       := GToTSettings.ShopCategoryPanelWidth;
  pShopTop.Height           := GToTSettings.ShopTopPanelHeight;
  pShopMiddle.Height        := GToTSettings.ShopMiddlePanelHeight;

  // == set fonts ==============================================================

  lbCategories.Font.Name    := GToTSettings.SidePanelFontName;
  lbCategories.Font.Size    := GToTSettings.SidePanelFontSize;
  lbSubCategories.Font.Name := GToTSettings.SidePanelFontName;
  lbSubCategories.Font.Size := GToTSettings.SidePanelFontSize;

  lOutput.Font.Name         := GToTSettings.MainPanelFontName;
  lOutput.Font.Size         := GToTSettings.MainPanelFontSize;

  reNPCOutput.Font.Name     := GToTSettings.MainPanelFontName;
  reNPCOutput.Font.Size     := GToTSettings.MainPanelFontSize

  // ===========================================================================
end;


function TfrmMain.CreateNewTableTab(aCat, aSubCat : integer; aTableName : string): integer;
var
  ttto : TTableTabObject;

begin
  Result     := FTTTOId;
  aTableName := UpperCase(aTableName);

  ttto := TTableTabObject.Create;

  ttto.Category        := aCat;
  ttto.SubCategory     := aSubCat;
  ttto.TableName       := aTableName;
  ttto.LastCategory    := aCat;
  ttto.LastSubCategory := aSubCat;
  ttto.LastTableName   := aTableName;

  ttto.TabSheet := TTabSheet.Create(Self);
  ttto.TabSheet.Parent      := pcTables;
  ttto.TabSheet.PageControl := pcTables;
  ttto.TabSheet.Caption     := 'Table #' + IntToStr(FTTTOId);
  ttto.TabSheet.Tag         := FTTTOId;

  ttto.RichEdit := TRichEdit.Create(Self);
  ttto.RichEdit.Parent      := ttto.TabSheet;
  ttto.RichEdit.Align       := alClient;
  ttto.RichEdit.Tag         := FTTTOId;
  ttto.RichEdit.OnClick     := lOutputClick;
  ttto.RichEdit.Font.Name   := GToTSettings.MainPanelFontName;
  ttto.RichEdit.Font.Size   := GToTSettings.MainPanelFontSize;
  ttto.RichEdit.PopupMenu   := puOutput;


  GTableTabs.Add(ttto);

  pcTables.ActivePage := ttto.TabSheet;

  FTableTabsIndex     := GTableTabs.Count - 1;

  SetCategoryLists(GTableTabs[FTableTabsIndex].Category, GTableTabs[FTableTabsIndex].SubCategory, True);

  pcTablesChange(pcTables);

  if GTableTabs.Count >= 2 then begin
    tbRemoveTable.Enabled      := True;
    miRemoveCurrentTab.Enabled := True;
  end;

  inc(FTTTOId);
end;


procedure TfrmMain.Customisinghowto1Click(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'data\readme.txt') then
    ToTUtility.ExecuteFile(0, ExtractFilePath(Application.ExeName) + 'data\readme.txt', '', '')
  else
    ShowMessage('How-to file missing :(');
end;


procedure TfrmMain.eHCCopperChange(Sender: TObject);
begin
  BuildHoardCalculations;
end;

procedure TfrmMain.eHCCopperExit(Sender: TObject);
begin
  BuildHoardCalculations;
end;


procedure TfrmMain.SetCategoryLists(aCategory, aSubCategory : integer; aRefresh : boolean);
begin
  lbCategories.ItemIndex    := aCategory;

  if aRefresh then
    lbCategoriesClick(lbCategories)
  else
    lbCategoriesClick(Nil);

  lbSubCategories.ItemIndex := aSubCategory;

  if aRefresh then
    lbSubCategoriesClick(lbSubCategories);
end;


procedure TfrmMain.Showall1Click(Sender: TObject);
begin
  if not(frmViewer.Visible) then
    frmViewer.Show;

  frmViewer.SetTable(lbCategories.ItemIndex, lbSubCategories.ItemIndex);
end;


procedure TfrmMain.sbNPCFlipLockStateClick(Sender: TObject);
var
  tbmp : TBitmap;
  lNewState : boolean;

begin
  lNewState := GNPCs[cbNPCList.ItemIndex].FlipLock((Sender As TSpeedbutton).Tag);

  if lNewState then begin
    tbmp := TBitmap.Create;

    (Sender As TSpeedbutton).Glyph.Assign(nil);

    ImageList1.GetBitmap(3, (Sender As TSpeedbutton).Glyph);

    tbmp.Free;
  end
  else begin
    tbmp := TBitmap.Create;

    (Sender As TSpeedbutton).Glyph.Assign(nil);

    ImageList2.GetBitmap(3, (Sender As TSpeedbutton).Glyph);

    tbmp.Free;
  end;
end;

procedure TfrmMain.sbNPCRefreshItemClick(Sender: TObject);
begin
  case (Sender As TSpeedbutton).Tag of
     0 : eNPCGender.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCGender);
     1 : eNPCRace.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCRace);
     2 : eNPCLA.Text            := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCLA);
     3 : eNPCMA.Text            := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMA);
     4 : eNPCMark.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMark);
     5 : eNPCHighAbility.Text   := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCHighAbility, UpperCase('ha_' + eNPCRace.Text));
     6 : eNPCLowAbility.Text    := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCLowAbility, UpperCase('la_' + eNPCRace.Text));
     7 : eNPCTalent.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCTalent);
     8 : eNPCTrait.Text         := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCTrait);
     9 : eNPCBond.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCBond);
    10 : eNPCFlaw.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCFlaw);
    11 : eNPCIdeal.Text         := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCIdeal, UpperCase('alignment_' + eNPCMA.Text));
    12 : eNPCEmotion.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEmotion);
    13 : eNPCSocialClass.Text   := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCSocialClass);
    14 : eNPCOccupation.Text    := GNPCs[cbNPCList.ItemIndex].FromNamedSubItemSpecial(NPCOccupation, eNPCSocialClass.Text, 'royal', eNPCGender.Text,
                                                                                      UpperCase('occupation_' + eNPCSocialClass.Text));
    15 : eNPCMannerism.Text     := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMannerism);

    16 : eNPCEyeColour.Text     := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEyeColour);
    17 : eNPCEyeShape.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEyeShape);
    18 : eNPCHairColour.Text    := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCHairColour);
    19 : eNPCAgeGroup.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCAgeGroup);
    20 : eNPCPhysique.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCPhysique);
    21 : eNPCHeight.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCHeight);

    22 : eNPCParents.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCParents);
    23 : eNPCSiblings.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCSiblings);
    24 : eNPCCousins.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCCousins);
    25 : eNPCAunts.Text         := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCAunts);
    26 : eNPCUncles.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCUncles);
    27 : eNPCChildren.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCChildren);
    28 : eNPCFamily.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCFamily);
    29 : eNPCMaritalStatus.Text := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMarital);
  end;

  AddNPCDescriptionText;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  eNGName.CopyToClipboard;
end;


procedure TfrmMain.sbNGHistoryCopyClick(Sender: TObject);
begin
  mNGHistory.CopyToClipboard;
end;

procedure TfrmMain.sbNGClearHistoryClick(Sender: TObject);
begin
  mNGHistory.Clear;
end;

procedure TfrmMain.Splitter1CanResize(Sender: TObject; var NewSize: Integer;
  var Accept: Boolean);
begin
  if NewSize > 120 then
    Accept := True
  else
    Accept := False;
end;


procedure TfrmMain.Splitter3CanResize(Sender: TObject; var NewSize: Integer;
  var Accept: Boolean);
begin
  if NewSize > 120 then
    Accept := True
  else
    Accept := False;
end;

procedure TfrmMain.Splitter5CanResize(Sender: TObject; var NewSize: Integer;
  var Accept: Boolean);
begin
  if NewSize > 120 then
    Accept := True
  else
    Accept := False;
end;

procedure TfrmMain.VisitTableofTablesonReddit1Click(Sender: TObject);
begin
  ToTUtility.ExecuteFile(0, 'https://www.reddit.com/r/BehindTheTables/', '', '');
end;


procedure TfrmMain.miExitClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmMain.miLoadLayoutClick(Sender: TObject);
begin
  odMain.Filter     := 'Table of Tables Layout|*.totlayout';
  odMain.DefaultExt := 'totlayout';

  if odMain.Execute then begin
    LoadLayout(odMain.FileName);
  end;
end;

// =============================================================================


procedure TfrmMain.lbCategoriesClick(Sender: TObject);
var
  t : integer;

begin
  lbSubCategories.Clear;

  for t := 0 to GSubCategories.Count - 1 do begin
    if GSubCategories[t].CategoryID = lbCategories.ItemIndex then begin
      lbSubCategories.Items.Add(GSubCategories[t].Title);
    end;
  end;

  lbSubCategories.ItemIndex := 0;
  if Sender = Nil then
    lbSubCategoriesClick(Nil)
  else
    lbSubCategoriesClick(lbSubCategories);

  pSubCategoriesTitle.Caption := 'Sub-categories (' + IntToStr(lbSubCategories.Count) + ')';
end;


procedure TfrmMain.lbCategoriesDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  (Control As TListBox).Canvas.FillRect(Rect);
  (Control As TListBox).Canvas.Font.Color := clBlack;

  if GCategories[Index].SearchHit then
    (Control As TListBox).Canvas.Font.Style := [fsBold]
  else
    (Control As TListBox).Canvas.Font.Style := [];

  (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
end;

procedure TfrmMain.lbImagesClick(Sender: TObject);
begin
  if FileExists(GImages[lbImages.ItemIndex].FFileName) then
    iImages.Picture.LoadFromFile(GImages[lbImages.ItemIndex].FFileName)
  else
    MessageDlg('Image does not exist :(' + #1313 + GImages[lbImages.ItemIndex].FFileName, mtWarning, [mbOK], 0);
end;


procedure TfrmMain.lbNGNamesClick(Sender: TObject);
var
  t : integer;

begin
  cbNGTemplates.Clear;

  if lbNGNames.ItemIndex <> -1 then begin

    if GNames[lbNGNames.ItemIndex].Templates.Count <> 0 then begin
      for t := 0 to GNames[lbNGNames.ItemIndex].Templates.Count - 1 do begin
        cbNGTemplates.Items.Add(GNames[lbNGNames.ItemIndex].Templates[t]);
      end;

      cbNGTemplates.ItemIndex := 0;
    end;

    cbNGTypeChange(Nil);

    bNGNewNameClick(Nil);
  end;
end;


procedure TfrmMain.lbShopCategoryClick(Sender: TObject);
var
  t : integer;

begin
  if lbShopCategory.ItemIndex <> -1 then begin
    lbShopSubCategory.Clear;

    if GShopCategories[lbShopCategory.ItemIndex].SubCategories.Count <> 0 then begin
      for t := 0 to GShopCategories[lbShopCategory.ItemIndex].SubCategories.Count - 1 do begin
        lbShopSubCategory.Items.Add(GShopCategories[lbShopCategory.ItemIndex].SubCategories[t].Description);
      end;

      pShopSubCategories.Caption  := 'Sub-categories (' + IntToStr(lbShopSubCategory.Count) + ')';

      lbShopSubCategory.ItemIndex := 0;

      lbShopSubCategoryClick(Nil);
    end
    else begin
      pShopSubCategories.Caption  := 'Sub-categories';

      lbShopSubCategory.Clear;
      lbShopItems.Clear;
    end;
  end;
end;


procedure TfrmMain.lbShopCategoryDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
  (Control As TListBox).Canvas.FillRect(Rect);
  (Control As TListBox).Canvas.Font.Color := clBlack;

  if GShopCategories[Index].SearchHit then
    (Control As TListBox).Canvas.Font.Style := [fsBold]
  else
    (Control As TListBox).Canvas.Font.Style := [];

  (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
end;

procedure TfrmMain.lbShopSubCategoryClick(Sender: TObject);
var
  t : integer;

begin
  if lbShopSubCategory.ItemIndex <> -1 then begin
    lbShopItems.Clear;

    if GShopCategories[lbShopCategory.ItemIndex].SubCategories[lbShopSubCategory.ItemIndex].Items.Count <> 0 then begin
      for t := 0 to GShopCategories[lbShopCategory.ItemIndex].SubCategories[lbShopSubCategory.ItemIndex].Items.Count - 1 do begin
        lbShopItems.Items.Add(GShopCategories[lbShopCategory.ItemIndex].SubCategories[lbShopSubCategory.ItemIndex].Items[t].Name);
      end;

      pShopItems.Caption    := 'Items (' + IntToStr(lbShopItems.Count) + ')';

      lbShopItems.ItemIndex := 0;

      lbShopItemsClick(Nil);
    end
    else begin
      pShopItems.Caption := 'Items';

      lbShopItems.Clear;
    end;
  end;
end;


procedure TfrmMain.lbShopSubCategoryDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
 (Control As TListBox).Canvas.FillRect(Rect);
 (Control As TListBox).Canvas.Font.Color := clBlack;

 if GShopCategories[lbShopCategory.ItemIndex].SubCategories[Index].SearchHit then
   (Control As TListBox).Canvas.Font.Style := [fsBold]
 else
   (Control As TListBox).Canvas.Font.Style := [];

 (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
end;


procedure TfrmMain.lbShopItemsClick(Sender: TObject);
begin
  if lbShopItems.ItemIndex <> -1 then begin
    BuildShopItem(lbShopCategory.ItemIndex, lbShopSubCategory.ItemIndex, lbShopItems.ItemIndex);
  end;
end;


procedure TfrmMain.lbShopItemsDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
 (Control As TListBox).Canvas.FillRect(Rect);

 if odSelected in State then
   (Control As TListBox).Canvas.Font.Color := GToTSettings.OptionFavouriteInvColour
 else
   (Control As TListBox).Canvas.Font.Color := clBlack;

 if GShopCategories[lbShopCategory.ItemIndex].SubCategories[lbShopSubCategory.ItemIndex].Items[Index].SearchHit then
   (Control As TListBox).Canvas.Font.Style := [fsBold]
 else
   (Control As TListBox).Canvas.Font.Style := [];


 (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
end;


procedure TfrmMain.lbSubCategoriesClick(Sender: TObject);
var
  lSubCatID : integer;

begin
  if lbSubCategories.ItemIndex <> -1 then begin
    lSubCatID := FindSubCategoryItem(lbCategories.ItemIndex, lbSubCategories.ItemIndex);

    if lSubCatID <> -1 then begin
      tbShowFavourites.Enabled := GSubCategories[lSubCatID].Favourites.Count <> 0;

      BuildRollFavouritesMenu(lSubCatID);
    end;

    if Sender <> Nil then
      RollTable(lbCategories.ItemIndex, lbSubCategories.ItemIndex, False);
  end
  else begin
    if GTableTabs[FTableTabsIndex].TableName <> '' then
      RollTable(GTableTabs[FTableTabsIndex].TableName, False);
  end;
end;


procedure TfrmMain.RollFavouriteClick(Sender: TObject);
var
  lSubCatID : integer;

begin
  if lbSubCategories.ItemIndex <> -1 then begin
    lSubCatID := FindSubCategoryItem(lbCategories.ItemIndex, lbSubCategories.ItemIndex);

    if lSubCatID <> -1 then begin
      PopulateEntitiesFromFavourite(GSubCategories[lSubCatID].Favourites[(Sender As TMenuItem).Tag]);

      RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, True);

      tbDeleteFromFavs.Enabled := True;
      tbDeleteFromFavs.Tag     := (Sender As TMenuItem).Tag;
    end;
  end;
end;


procedure TfrmMain.lbSubCategoriesDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  lIndex : integer;

begin
  lIndex := FindSubCategoryItem(lbCategories.ItemIndex, Index);

  if lIndex <> -1 then begin
    if GSubCategories[lIndex].Favourites.Count = 0 then begin
      (Control As TListBox).Canvas.FillRect(Rect);
      (Control As TListBox).Canvas.Font.Color := clBlack;

      if GSubCategories[lIndex].SearchHit then
        (Control As TListBox).Canvas.Font.Style := [fsBold]
      else
        (Control As TListBox).Canvas.Font.Style := [];

      (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
    end
    else begin
      (Control As TListBox).Canvas.FillRect(Rect);

      if odSelected in State then
        (Control As TListBox).Canvas.Font.Color := GToTSettings.OptionFavouriteInvColour
      else
        (Control As TListBox).Canvas.Font.Color := GToTSettings.OptionFavouriteColour;

      (Control As TListBox).Canvas.TextOut(Rect.Left + 2, Rect.Top, (Control as TListBox).Items[Index]);
    end;
  end;
end;


procedure TfrmMain.BuildRollFavouritesMenu(aSubCatID : integer);
var
  lMenuItem : TMenuItem;
  t, lPos : integer;

begin
  puRollFavourites.Items.Clear;

  for t := 0 to GSubCategories[aSubCatID].Favourites.Count - 1 do begin
    lMenuItem := TMenuItem.Create(puRollFavourites);

    lPos := Pos('#', GSubCategories[aSubCatID].Favourites[t]);

    if lPos > 0 then
      lMenuItem.Caption := Copy(GSubCategories[aSubCatID].Favourites[t], 1, lPos - 1)
    else
      lMenuItem.Caption := 'wibble';

    lMenuItem.OnClick := RollFavouriteClick;
    lMenuItem.Tag     := t;

    puRollFavourites.Items.Add(lMenuItem);
  end;
end;


procedure TfrmMain.lOutputClick(Sender: TObject);
var
  t : integer;
  lHasFound : integer;
  lTTTO : TTableTabObject;

begin
  lHasFound   := -1;

  lTTTO := GTableTabs[FTableTabsIndex];

  lTTTO.SelectedEntity := -1;
  lTTTO.RerollSingle   := -1;

  for t := 0 to lTTTO.FOutputEntities.Count - 1 do begin
    if (lTTTO.FOutputEntities[t].Start <= lTTTO.RichEdit.SelStart) and
       (lTTTO.FOutputEntities[t].XEnd  >= lTTTO.RichEdit.SelStart) then begin
      lHasFound := t;

      Break;
    end;
  end;


  if lHasFound <> -1 then begin
    lTTTO.SelectedEntity := lHasFound;
    sbMain.SimpleText    := lTTTO.FOutputEntities[t].Description + ' ' +
                            lTTTO.FOutputEntities[t].Text +
                            ' (roll: ' + IntToStr(lTTTO.FOutputEntities[t].LastRoll) + ')';
    tbLockRoll.Enabled   := True;
  end
  else begin
    sbMain.SimpleText  := '';
    tbLockRoll.Enabled := False;
  end;
end;


procedure TfrmMain.miOutputActionClick(Sender: TObject);
begin
  if GTableTabs[FTableTabsIndex].SelectedEntity <> -1 then begin
    case miOutputAction.Tag of
      0 : GTableTabs[FTableTabsIndex].FOutputEntities[GTableTabs[FTableTabsIndex].SelectedEntity].Enabled := False;
      1 : GTableTabs[FTableTabsIndex].FOutputEntities[GTableTabs[FTableTabsIndex].SelectedEntity].Enabled := True;
    end;

    RollTable(lbCategories.ItemIndex, lbSubCategories.ItemIndex, True);
  end;
end;


procedure TfrmMain.miSaveLayoutClick(Sender: TObject);
begin
  sdMain.Filter     := 'Table of Tables Layout|*.totlayout';
  sdMain.DefaultExt := 'totlayout';

  if sdMain.Execute then begin
    SaveLayout(sdMain.FileName);
  end;
end;


function TfrmMain.OutputEntityExists(aTableID : integer): integer;
var
  t : integer;

begin
  Result := -1;

  if GTableTabs[FTableTabsIndex].FOutputEntities.Count <> 0 then begin
    for t:= 0 to GTableTabs[FTableTabsIndex].FOutputEntities.Count - 1 do begin
      if (GTableTabs[FTableTabsIndex].FOutputEntities[t].TableID = aTableID) then
        Result := t;
    end;
  end;
end;


procedure TfrmMain.pcTablesChange(Sender: TObject);
var
  lTTTOjectIndex : integer;

begin
  lTTTOjectIndex := GetIndexFrom(pcTables.ActivePage);

  if lTTTOjectIndex <> -1 then begin
    GTableTabs[FTableTabsIndex].Category    := lbCategories.ItemIndex;
    GTableTabs[FTableTabsIndex].SubCategory := lbSubCategories.ItemIndex;

    FTableTabsIndex := lTTTOjectIndex;

    SetCategoryLists(GTableTabs[FTableTabsIndex].Category, GTableTabs[FTableTabsIndex].SubCategory, False);

    if GTableTabs[FTableTabsIndex].SelectedEntity <> -1 then
      tbLockRoll.Enabled := True
    else
      tbLockRoll.Enabled := False;

    GTableTabs[FTableTabsIndex].SelectedEntity := -1;
    GTableTabs[FTableTabsIndex].RerollSingle   := -1;
  end
  else
    ShowMessage('Something strange has happened :(');
end;


procedure TfrmMain.RollTable(aCategory, aSubCategory : integer; aOnlyRefresh : boolean);
var
  t : integer;
  lRollMode : integer;
  lPrefix : string;
  lDescription : string;
  lPostProcess : string;
  lEntity : TOutputEntity;
  lEntityID : integer;
  lTableOutput : TRichEdit;
  lItems : integer;
  lTableResponse : TItemResponse;
  lReferences : string;

  function GetColourWithStatus(aStatus : boolean; aIfTrue, aIfFalse : integer): integer;
  begin
    if aStatus then
      Result := aIfTrue
    else
      Result := aIfFalse;
  end;

begin
  if FTableTabsIndex < 0 then Exit;

  lTableOutput := GTableTabs[FTableTabsIndex].RichEdit;

  lTableOutput.Clear;
  ClearDebug;

  if not(aOnlyRefresh) then begin
    if tbDeleteFromFavs.Enabled then begin
      tbDeleteFromFavs.Enabled := False;
      tbDeleteFromFavs.Tag     := -1;
    end;
  end;

  // ===========================================================================

  if Assigned(frmViewer) and (frmViewer.Visible) then
    frmViewer.SetTable(aCategory, aSubCategory);

  // ===========================================================================

  if GToTSettings.DebugMode then begin
    // ===================================================================
    lTableOutput.Lines.Add(IntToStr(aCategory) + ' / ' + IntToStr(aSubCategory));

    if ToTDebug.Text <> '' then
      lTableOutput.Lines.Add(ToTDebug.Text);

    lTableOutput.Lines.Add('');
    // ===================================================================
  end;

  // ===========================================================================

  if (GTableTabs[FTableTabsIndex].LastCategory <> aCategory) or (GTableTabs[FTableTabsIndex].LastSubCategory <> aSubCategory) then begin
    GTableTabs[FTableTabsIndex].FOutputEntities.Clear;

    tbLockRoll.Enabled := False;
    GTableTabs[FTableTabsIndex].SelectedEntity := -1;
    GTableTabs[FTableTabsIndex].RerollSingle   := -1;
  end;

  // ===========================================================================

  for t := 0 to GTables.Count - 1 do begin
    if (GTables[t].CategoryID = aCategory)    and
       (GTables[t].SubID      = aSubCategory) then begin

      // =======================================================================

      lEntityID := OutputEntityExists(GTables[t].TableID);

      if lEntityID = -1 then begin
        lEntity := TOutputEntity.Create;
        lEntity.TableID    := GTables[t].TableID;
        lEntity.Enabled    := True;
        lEntity.References := '';

        GTableTabs[FTableTabsIndex].FOutputEntities.Add(lEntity);
      end
      else
        lEntity := GTableTabs[FTableTabsIndex].FOutputEntities[lEntityID];

      // =======================================================================

      lRollMode := GTables[t].Mode;

      lPrefix   := '   ';

      case lRollMode of
        modeOneToOne   : begin
                           if GTables[t].Items.Count <> 0 then begin
                             lDescription := Trim(GTables[t].Title);

                             lTableResponse := GTables[t].GetItem(-1, GTables[t].GetRandomValue(aOnlyRefresh,
                                                                                                GTableTabs[FTableTabsIndex].RerollSingle,
                                                                                                lEntityID,
                                                                                                lEntity,
                                                                                                -1));

                             lReferences  := lTableResponse.TableReferences;

                             lPostProcess := lPrefix + lTableResponse.OutputText;
                           end
                           else
                             lPostProcess := '  Contains no items!!';
                         end;

        modeRange      : begin
                           if GTables[t].Items.Count <> 0 then begin
                             if GTables[t].DiceRoll > 0 then begin
                               lDescription := Trim(GTables[t].Title);

                               lTableResponse := GTables[t].GetItem(-1, GTables[t].GetRandomValue(aOnlyRefresh,
                                                                                                  GTableTabs[FTableTabsIndex].RerollSingle,
                                                                                                  lEntityID,
                                                                                                  lEntity,
                                                                                                  -1));

                               lReferences  := lTableResponse.TableReferences;

                               lPostProcess := lPrefix + lTableResponse.OutputText;
                             end;
                           end
                           else
                             lPostProcess := '  Contains no items!!';
                         end;

        modeAll        : begin
                           lPostProcess := '';
                           lReferences  := '';

                           lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                           lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                           lTableOutput.SelText             := Trim(GTables[t].Title);

                           lEntity.Description             := Trim(GTables[t].Title);

                           lEntity.Start                   := lTableOutput.SelStart;
                           lEntity.XEnd                    := lTableOutput.SelStart;

                           if GTables[t].Items.Count <> 0 then begin
                             for lItems := 0 to GTables[t].Items.Count - 1 do begin
                               case GToTSettings.DisplayMode of
                                 0 : begin
                                       lTableOutput.Lines.Add('');

                                       lTableOutput.SelAttributes.Color := clRed;///GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                                       lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                                       lTableOutput.SelText             := ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ';

                                       lTableOutput.Lines.Add('');
                                     end;
                                 1 : begin
                                       lTableOutput.SelAttributes.Color := clRed;///GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                                       lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                                       lTableOutput.SelText             := ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ';
                                     end;
                               end;

                               lEntity.XEnd := lEntity.XEnd + Length(ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ');
                             end;
                           end;
                         end;

        modeTitle      : begin
                           lPostProcess := '';

                           case GToTSettings.DisplayMode of
                             0 : begin
                                   lTableOutput.Lines.Add('');

                                   lTableOutput.SelAttributes.Color := GToTSettings.HeaderTextColour;
                                   lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.HeaderTextBold);
                                   lTableOutput.SelText             := '  ' + GTables[t].Title;

                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');
                                 end;
                             1 : begin
                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');

                                   lTableOutput.SelAttributes.Color := GToTSettings.HeaderTextColour;
                                   lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.HeaderTextBold);
                                   lTableOutput.SelText             := '  ' + GTables[t].Title;

                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');
                                 end;
                           end;
                         end;
      end;

      // =======================================================================

      if lPostProcess <> '' then begin
        lPostProcess := ToTUtilityContent.ReplaceTokens(lPostProcess);

        case GToTSettings.DisplayMode of
          0 : begin
                lEntity.Description             := lDescription;
                lEntity.Text                    := lPostProcess;
                lEntity.References              := lReferences;

                lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                lTableOutput.SelText             := lDescription;

                lEntity.Start                   := lTableOutput.SelStart;
                lEntity.XEnd                    := lTableOutput.SelStart + Length(lPostProcess);

                lTableOutput.Lines.Add('');

                lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                lTableOutput.SelText             := lPostProcess + ' ';

                lTableOutput.Lines.Add('');
              end;
          1 : begin
                lEntity.Description             := lDescription;
                lEntity.Text                    := lPostProcess;
                lEntity.References              := lReferences;

                lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                lTableOutput.SelText             := lDescription;

                lEntity.Start                   := lTableOutput.SelStart;
                lEntity.XEnd                    := lTableOutput.SelStart + Length(lPostProcess);

                lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                lTableOutput.SelText             := lPostProcess + ' ';
              end;
        end;
      end;

      // =======================================================================

      GTableTabs[FTableTabsIndex].LastCategory    := aCategory;
      GTableTabs[FTableTabsIndex].LastSubCategory := aSubCategory;
    end;
  end;
end;


procedure TfrmMain.RollTable(aTableName : string; aOnlyRefresh : boolean);
var
  t : integer;
  lRollMode : integer;
  lPrefix : string;
  lDescription : string;
  lPostProcess : string;
  lEntity : TOutputEntity;
  lEntityID : integer;
  lTableOutput : TRichEdit;
  lItems : integer;
  lTableResponse : TItemResponse;
  lReferences : string;


  function GetColourWithStatus(aStatus : boolean; aIfTrue, aIfFalse : integer): integer;
  begin
    if aStatus then
      Result := aIfTrue
    else
      Result := aIfFalse;
  end;

begin
  aTableName := UpperCase(aTableName);

  if FTableTabsIndex < 0 then Exit;

  lTableOutput := GTableTabs[FTableTabsIndex].RichEdit;

  lTableOutput.Clear;
  ClearDebug;

  if not(aOnlyRefresh) then begin
    if tbDeleteFromFavs.Enabled then begin
      tbDeleteFromFavs.Enabled := False;
      tbDeleteFromFavs.Tag     := -1;
    end;
  end;

  // ===========================================================================

  if Assigned(frmViewer) and (frmViewer.Visible) then
    frmViewer.SetTableFromName(aTableName);

  // ===========================================================================

  if GToTSettings.DebugMode then begin
    // ===================================================================
    lTableOutput.Lines.Add(aTableName);

    if ToTDebug.Text <> '' then
      lTableOutput.Lines.Add(ToTDebug.Text);

    lTableOutput.Lines.Add('');
    // ===================================================================
  end;

  // ===========================================================================

  if (GTableTabs[FTableTabsIndex].LastTableName <> aTableName) then begin
    GTableTabs[FTableTabsIndex].FOutputEntities.Clear;

    tbLockRoll.Enabled := False;
    GTableTabs[FTableTabsIndex].SelectedEntity := -1;
    GTableTabs[FTableTabsIndex].RerollSingle   := -1;
  end;

  // ===========================================================================

  for t := 0 to GTables.Count - 1 do begin
    if (GTables[t].Name = aTableName) then begin

      // =======================================================================

      lEntityID := OutputEntityExists(GTables[t].TableID);

      if lEntityID = -1 then begin
        lEntity := TOutputEntity.Create;
        lEntity.TableID    := GTables[t].TableID;
        lEntity.Enabled    := True;
        lEntity.References := '';

        GTableTabs[FTableTabsIndex].FOutputEntities.Add(lEntity);
      end
      else
        lEntity := GTableTabs[FTableTabsIndex].FOutputEntities[lEntityID];

      // =======================================================================

      lRollMode := GTables[t].Mode;

      lPrefix   := '   ';

      case lRollMode of
        modeOneToOne   : begin
                           if GTables[t].Items.Count <> 0 then begin
                             lDescription := Trim(GTables[t].Title);

                             lTableResponse := GTables[t].GetItem(-1, GTables[t].GetRandomValue(aOnlyRefresh,
                                                                                                GTableTabs[FTableTabsIndex].RerollSingle,
                                                                                                lEntityID,
                                                                                                lEntity,
                                                                                                -1));

                             lReferences  := lTableResponse.TableReferences;

                             lPostProcess := lPrefix + lTableResponse.OutputText;
                           end
                           else
                             lPostProcess := '  Contains no items!!';
                         end;

        modeRange      : begin
                           if GTables[t].Items.Count <> 0 then begin
                             if GTables[t].DiceRoll > 0 then begin
                               lDescription := Trim(GTables[t].Title);

                               lTableResponse := GTables[t].GetItem(-1, GTables[t].GetRandomValue(aOnlyRefresh,
                                                                                                  GTableTabs[FTableTabsIndex].RerollSingle,
                                                                                                  lEntityID,
                                                                                                  lEntity,
                                                                                                  -1));

                               lReferences  := lTableResponse.TableReferences;

                               lPostProcess := lPrefix + lTableResponse.OutputText;
                             end;
                           end
                           else
                             lPostProcess := '  Contains no items!!';
                         end;

        modeAll        : begin
                           lPostProcess := '';
                           lReferences  := '';

                           lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                           lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                           lTableOutput.SelText             := Trim(GTables[t].Title);

                           lEntity.Description             := Trim(GTables[t].Title);

                           lEntity.Start                   := lTableOutput.SelStart;
                           lEntity.XEnd                    := lTableOutput.SelStart;

                           if GTables[t].Items.Count <> 0 then begin
                             for lItems := 0 to GTables[t].Items.Count - 1 do begin
                               case GToTSettings.DisplayMode of
                                 0 : begin
                                       lTableOutput.Lines.Add('');

                                       lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                                       lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                                       lTableOutput.SelText             := ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ';

                                       lTableOutput.Lines.Add('');
                                     end;
                                 1 : begin
                                       lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                                       lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                                       lTableOutput.SelText             := ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ';
                                     end;
                               end;

                               lEntity.XEnd := lEntity.XEnd + Length(ToTUtilityContent.ReplaceTokens(GTables[t].Items[lItems]) + ' ');
                             end;
                           end;
                         end;

        modeTitle      : begin
                           lPostProcess := '';

                           case GToTSettings.DisplayMode of
                             0 : begin
                                   lTableOutput.Lines.Add('');

                                   lTableOutput.SelAttributes.Color := GToTSettings.HeaderTextColour;
                                   lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.HeaderTextBold);
                                   lTableOutput.SelText             := '  ' + GTables[t].Title;

                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');
                                 end;
                             1 : begin
                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');

                                   lTableOutput.SelAttributes.Color := GToTSettings.HeaderTextColour;
                                   lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.HeaderTextBold);
                                   lTableOutput.SelText             := '  ' + GTables[t].Title;

                                   lTableOutput.Lines.Add('');
                                   lTableOutput.Lines.Add('');
                                 end;
                           end;
                         end;
      end;

      // =======================================================================

      if lPostProcess <> '' then begin
        lPostProcess := ToTUtilityContent.ReplaceTokens(lPostProcess);

        case GToTSettings.DisplayMode of
          0 : begin
                lEntity.Description             := lDescription;
                lEntity.Text                    := lPostProcess;
                lEntity.References              := lReferences;

                lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                lTableOutput.SelText             := lDescription;

                lEntity.Start                   := lTableOutput.SelStart;
                lEntity.XEnd                    := lTableOutput.SelStart + Length(lPostProcess);

                lTableOutput.Lines.Add('');

                lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                lTableOutput.SelText             := lPostProcess + ' ';

                lTableOutput.Lines.Add('');
              end;
          1 : begin
                lEntity.Description              := lDescription;
                lEntity.Text                     := lPostProcess;
                lEntity.References               := lReferences;

                lTableOutput.SelAttributes.Color := GToTSettings.DescriptionColour;
                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.DescriptionBold);
                lTableOutput.SelText             := lDescription;

                lEntity.Start                    := lTableOutput.SelStart;
                lEntity.XEnd                     := lTableOutput.SelStart + Length(lPostProcess);

                lTableOutput.SelAttributes.Color := GetColourWithStatus(lEntity.Enabled, GToTSettings.OptionColour, GToTSettings.OptionLockedColour);

                lTableOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.OptionBold);
                lTableOutput.SelText             := lPostProcess + ' ';
              end;
        end;
      end;

      // =======================================================================

      GTableTabs[FTableTabsIndex].LastTableName := aTableName;
    end;
  end;
end;


procedure TfrmMain.Rollwithtablename1Click(Sender: TObject);
var
  lTableName : string;
  lTableID : integer;
  lItemResponse : TItemResponse;

begin
  lTableName := InputBox('Table Name', 'Name', '');

  if lTableName <> '' then begin
    lTableID := FindTableWithName(lTableName);

    if lTableID <> -1 then begin
      lItemResponse := GTables[lTableID].GetItem(-1, -1);
    end
    else
      ShowMessage('Table "' + lTableName + '" does not exist :(');
  end;

end;

procedure TfrmMain.sbImagesAddClick(Sender: TObject);
var
  t : integer;

begin
  if opdMain.Execute then begin
    for t := 0 to opdMain.Files.Count - 1 do begin
      ToTImageHandler.AddImage(opdMain.Files[t]);
    end;

    UpdateImageList;
  end;
end;


procedure TfrmMain.sbImagesClearClick(Sender: TObject);
begin
  ToTImageHandler.ClearAll;

  sbImagesSaveList.Enabled := False;

  UpdateImageList;
end;


procedure TfrmMain.sbImagesLoadListClick(Sender: TObject);
begin
  odMain.Filter     := 'Table of Tables Image List|*.totimages';
  odMain.DefaultExt := 'totimages';

  if odMain.Execute then begin
    ToTImageHandler.LoadFromImageList(odMain.FileName);

    UpdateImageList;
  end;
end;


procedure TfrmMain.sbImagesSaveListClick(Sender: TObject);
begin
  sdMain.Filter     := 'Table of Tables Image List|*.totimages';
  sdMain.DefaultExt := 'totimages';

  if sdMain.Execute then begin
    ToTImageHandler.SaveImageList(sdMain.FileName);
  end;
end;


procedure TfrmMain.sbNGClearClick(Sender: TObject);
begin
  cbNGTemplates.Text := '';
end;


procedure TfrmMain.sbNGCopyClick(Sender: TObject);
begin
  ClipBoard.AsText := cbNGTemplates.Text;
end;


procedure TfrmMain.Preferences1Click(Sender: TObject);
var
  t : integer;

begin
  if frmPreferences.ShowModal = mrOK then begin
    lbCategories.Font.Name    := GToTSettings.SidePanelFontName;
    lbCategories.Font.Size    := GToTSettings.SidePanelFontSize;
    lbSubCategories.Font.Name := GToTSettings.SidePanelFontName;
    lbSubCategories.Font.Size := GToTSettings.SidePanelFontSize;

    if GTableTabs.Count <> 0 then begin
      for t:= 0 to GTableTabs.Count - 1 do begin
        GTableTabs[t].RichEdit.Font.Name := GToTSettings.MainPanelFontName;
        GTableTabs[t].RichEdit.Font.Size := GToTSettings.MainPanelFontSize;
      end;
    end;

    miDebug.Visible := GToTSettings.DebugMode;

    Refresh1Click(Nil);

    eHCCopperChange(Nil);
  end;
end;


procedure TfrmMain.puOutputPopup(Sender: TObject);
begin
  if GTableTabs[FTableTabsIndex].SelectedEntity <> -1 then begin
    miOutputDescription.Caption := Trim(GTableTabs[FTableTabsIndex].FOutputEntities[GTableTabs[FTableTabsIndex].SelectedEntity].Text);

    if GTableTabs[FTableTabsIndex].FOutputEntities[GTableTabs[FTableTabsIndex].SelectedEntity].Enabled then begin
      miOutputAction.Caption := 'Lock this roll';
      miOutputAction.Tag     := 0;
    end
    else begin
      miOutputAction.Caption := 'Unlock this roll';
      miOutputAction.Tag     := 1;
    end;

    miOutputAction.Enabled    := True;

    miTableReferences.Enabled := BuildReferenceMenu;
  end
  else begin
    miOutputDescription.Caption := 'Nothing selected :(';
    miOutputAction.Caption      := 'n/a';
    miOutputAction.Enabled      := False;
  end;
end;


function TfrmMain.BuildReferenceMenu: boolean;
var
  lMenuItem : TMenuItem;
  lReferences : string;
  lTable : string;
  t : integer;

begin
  Result := False;

  lReferences := GTableTabs[FTableTabsIndex].FOutputEntities[GTableTabs[FTableTabsIndex].SelectedEntity].References + ',';

  if lReferences <> '' then begin
    miTableReferences.Enabled := True;

    miTableReferences.Clear;

    lTable := '';

    for t := 1 to length(lReferences) do begin
      if (lReferences[t] = ',') or (t = length(lReferences)) then begin
        if lTable <> '' then begin
          lTable := Trim(lTable);

          lMenuItem := TMenuItem.Create(miTableReferences);

          if lTable[1] = '.' then begin // reference to table file from data\tables\
            lMenuItem.Caption := Copy(lTable, 2, length(lTable) - 1);
            lMenuItem.Tag     := 0;
          end
          else begin
            lMenuItem.Caption := lTable;
            lMenuItem.Tag     := 1;
          end;

          lMenuItem.OnClick := TableReferencesClick;

          miTableReferences.Add(lMenuItem);

          Result := True;
        end;

        lTable := '';
      end
      else
        lTable := lTable + lReferences[t];
    end;
  end
  else
    miTableReferences.Enabled := False;
end;


procedure TfrmMain.TableReferencesClick(Sender: TObject);
var
  lTableName : string;
  lSubCategory : integer;

begin
  case (Sender As TMenuItem).Tag of
    0 : begin
          lTableName   := StringReplace((Sender As TMenuItem).Caption, '&', '', [rfReplaceAll]);

          lSubCategory := FindSubCategoryFromTitle(lTableName);

          if lSubCategory <> -1 then begin
            CreateNewTableTab(GSubCategories[lSubCategory].CategoryID,
                              GSubCategories[lSubCategory].SubCategoryID,
                              '');
          end
          else
            ShowMessage('Couldn''t find "' + lTableName + '"');
        end;
    1 : begin
          lTableName := StringReplace((Sender As TMenuItem).Caption, '&', '', [rfReplaceAll]);

          CreateNewTableTab(-1, -1, lTableName);
        end;
  end;
end;


procedure TfrmMain.Re1Click(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'readme.txt') then
    ToTUtility.ExecuteFile(0, ExtractFilePath(Application.ExeName) + 'readme.txt', '', '')
  else
    ShowMessage('Readme file missing :(');
end;


procedure TfrmMain.Refresh1Click(Sender: TObject);
begin
  case pcMain.ActivePageIndex of
    tabTables    : begin
                      if (GTableTabs[FTableTabsIndex].LastCategory <> -1) and (GTableTabs[FTableTabsIndex].LastSubCategory <> -1) then
                        RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, False)
                      else if GTableTabs[FTableTabsIndex].TableName <> '' then
                        RollTable(GTableTabs[FTableTabsIndex].TableName, False);
                    end;
    tabGenerators : begin
                      case pcGenerators.ActivePageIndex of
                        tabNameGen : bNGNewNameClick(Nil);
                        tabNPCGen  : BuildNewNPC;
                      end;
                    end;
  end;
end;


procedure TfrmMain.Rerollthisitem1Click(Sender: TObject);
begin
  if GTableTabs[FTableTabsIndex].SelectedEntity <> -1 then begin

    GTableTabs[FTableTabsIndex].RerollSingle := GTableTabs[FTableTabsIndex].SelectedEntity;

//    RollTable(lbCategories.ItemIndex, lbSubCategories.ItemIndex, False);
    if (GTableTabs[FTableTabsIndex].LastCategory <> -1) and (GTableTabs[FTableTabsIndex].LastSubCategory <> -1) then
      RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, False)
    else if GTableTabs[FTableTabsIndex].TableName <> '' then
      RollTable(GTableTabs[FTableTabsIndex].TableName, False);
  end;
end;


procedure TfrmMain.tbAddNewTabClick(Sender: TObject);
begin
  CreateNewTableTab(0, 0, '');

  RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, False);
end;


procedure TfrmMain.tbAddToFavsClick(Sender: TObject);
var
  lFavText : string;
  lSubCatID : integer;
  t : integer;

begin
  if FTableTabsIndex <> -1  then begin
    lFavText := InputBox('Name this favourite', 'Name', '') + '#';

    for t:= 0 to GTableTabs[FTableTabsIndex].FOutputEntities.Count - 1 do begin
      lFavText := lFavText + IntToStr(GTableTabs[FTableTabsIndex].FOutputEntities[t].LastRoll) + ',';
    end;

    lSubCatID := FindSubCategoryItem(lbCategories.ItemIndex, lbSubCategories.ItemIndex);

    if lSubCatID <> -1 then
      GSubCategories[lSubCatID].Favourites.Add(lFavText);

    caption := inttostr(lSubCatID);
  end;
end;


procedure TfrmMain.PopulateEntitiesFromFavourite(aInput : string);
var
  t, lEntityID : integer;
  lPos : integer;
  lValue : string;

begin
  lPos := Pos('#', aInput);

  if lPos > 0 then begin

    lEntityID := 0;
    lValue    := '';

    for t:= lPos + 1 to length(aInput) do begin
      if aInput[t] = ',' then
      begin
        if lEntityID < GTableTabs[FTableTabsIndex].FOutputEntities.Count then
          GTableTabs[FTableTabsIndex].FOutputEntities[lEntityID].LastRoll := StrToIntDef(lValue, 0);

        lValue := '';
        inc(lEntityID);
      end
      else begin
        lValue := lValue + aInput[t];
      end;
    end;
  end;
end;


procedure TfrmMain.tbCopyNPCToClipboardClick(Sender: TObject);
begin
  GTableTabs[FTableTabsIndex].RichEdit.SelectAll;
  GTableTabs[FTableTabsIndex].RichEdit.CopyToClipboard;
  GTableTabs[FTableTabsIndex].RichEdit.SelStart := 0;
end;


procedure TfrmMain.tbCopyToClipboardClick(Sender: TObject);
begin
  if FTableTabsIndex <> -1  then begin
    reNPCOutput.SelectAll;
    reNPCOutput.CopyToClipboard;
    reNPCOutput.SelStart := 0;
  end;
end;


procedure TfrmMain.tbDeleteFromFavsClick(Sender: TObject);
var
  lSubCatID : integer;

begin
  if lbSubCategories.ItemIndex <> -1 then begin
    lSubCatID := FindSubCategoryItem(lbCategories.ItemIndex, lbSubCategories.ItemIndex);

    if lSubCatID <> -1 then begin
      GSubCategories[lSubCatID].Favourites.Delete(tbDeleteFromFavs.Tag);

      tbDeleteFromFavs.Enabled := False;
      tbDeleteFromFavs.Tag     := -1;

      if GSubCategories[lSubCatID].Favourites.Count = 0 then
        tbShowFavourites.Enabled := False;
    end;
  end;
end;


procedure TfrmMain.tbSearchClick(Sender: TObject);
begin
  if pcMain.ActivePageIndex = tabShop then
    SearchShop
  else
    SearchTables;
end;


procedure TfrmMain.SearchTables;
var
  lSearch : TTableSearch;
  t, i, z : integer;

begin
  Clearsearch1Click(Nil);

  // ===========================================================================

  lSearch := GetSearchParams(FLastTableSearch);

  if lSearch.SearchTerm <> '' then begin
    FLastTableSearch := lSearch;

    lSearch.SearchTerm := UpperCase(lSearch.SearchTerm);

    // =========================================================================

    if lSearch.Names then begin

      for t :=0 to GCategories.Count - 1 do begin
        if Pos(lSearch.SearchTerm, UpperCase(GCategories[t].Title)) > 0 then
          GCategories[t].SearchHit := True;
      end;

      // =======================================================================

      for t :=0 to GSubCategories.Count - 1 do begin
        if Pos(lSearch.SearchTerm, UpperCase(GSubCategories[t].Title)) > 0 then
          GSubCategories[t].SearchHit := True;

        if GSubCategories[t].SearchHit then
          GCategories[GSubCategories[t].CategoryID].SearchHit := True;
      end;
    end;

    // =========================================================================

    for t := 0 to GTables.Count - 1 do begin

      if lSearch.Titles then begin
        if Pos(lSearch.SearchTerm, UpperCase(GTables[t].Title)) > 0 then
          GTables[t].SearchHit := True;
      end;

      if lSearch.RollableItems then begin
        for i :=0 to GTables[t].Items.Count - 1 do begin
          if Pos(lSearch.SearchTerm, UpperCase(GTables[t].Items[i])) > 0 then
            GTables[t].SearchHit := True;
        end;
      end;

      if GTables[t].SearchHit then begin
        for z :=0 to GSubCategories.Count - 1 do
          if (GSubCategories[z].CategoryID = GTables[t].CategoryID) and
             (GSubCategories[z].SubCategoryId = GTables[t].SubID) then begin
            GSubCategories[z].SearchHit := True;

            GCategories[GTables[t].CategoryID].SearchHit := True;
          end;
      end;
    end;
  end;

  UpdateCategories;
end;


procedure TfrmMain.SearchShop;
var
  lSearch : TShopSearch;
  lCat, lSubCat, lItem : integer;

begin
  Clearsearch1Click(Nil);

  // ===========================================================================

  lSearch := GetShopSearchParams(FLastShopSearch);

  if lSearch.SearchTerm <> '' then begin
    FLastShopSearch    := lSearch;

    lSearch.SearchTerm := UpperCase(lSearch.SearchTerm);

    for lCat := 0 to GShopCategories.Count - 1 do begin

      if Pos(lSearch.SearchTerm, UpperCase(GShopCategories[lCat].Description)) > 0 then begin
        GShopCategories[lCat].SearchHit   := True;
      end;

      for lSubCat := 0 to GShopCategories[lCat].SubCategories.Count - 1 do begin

        if Pos(lSearch.SearchTerm, UpperCase(GShopCategories[lCat].SubCategories[lSubCat].Description)) > 0 then begin
          GShopCategories[lCat].SubCategories[lSubCat].SearchHit   := True;

          GShopCategories[lCat].SearchHit := True;
        end;

        for lItem := 0 to GShopCategories[lCat].SubCategories[lSubCat].Items.Count - 1 do begin

          if Pos(lSearch.SearchTerm, UpperCase(GShopCategories[lCat].SubCategories[lSubCat].Items[lItem].Name)) > 0 then begin
            GShopCategories[lCat].SubCategories[lSubCat].Items[lItem].SearchHit := True;

            GShopCategories[lCat].SubCategories[lSubCat].SearchHit := True;
            GShopCategories[lCat].SearchHit := True;
          end;

          if (lSearch.IncludeDescriptions) and not(GShopCategories[lCat].SearchHit) then begin
            if Pos(lSearch.SearchTerm, UpperCase(GShopCategories[lCat].SubCategories[lSubCat].Items[lItem].Description)) > 0 then begin
              GShopCategories[lCat].SubCategories[lSubCat].Items[lItem].SearchHit := True;

              GShopCategories[lCat].SubCategories[lSubCat].SearchHit := True;
              GShopCategories[lCat].SearchHit := True;
            end;
          end;
        end;
      end;
    end;
  end;

  UpdateShopCategories;
end;


procedure TfrmMain.tbUnlockAllClick(Sender: TObject);
var
  t : integer;

begin
  for t := 0 to GTableTabs[FTableTabsIndex].FOutputEntities.Count - 1 do
    GTableTabs[FTableTabsIndex].FOutputEntities[t].Enabled := True;

  RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, True);
end;


procedure TfrmMain.tbLockRollAllClick(Sender: TObject);
var
  t : integer;

begin
  for t := 0 to GTableTabs[FTableTabsIndex].FOutputEntities.Count - 1 do
    GTableTabs[FTableTabsIndex].FOutputEntities[t].Enabled := False;

  RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, True);
end;


procedure TfrmMain.tbLockRollClick(Sender: TObject);
var
  t : integer;
  lTTTO : TTableTabObject;

begin
  lTTTO := GTableTabs[FTableTabsIndex];

  for t := 0 to lTTTO.FOutputEntities.Count - 1 do begin
    if (lTTTO.FOutputEntities[t].Start <= lTTTO.RichEdit.SelStart) and
       (lTTTO.FOutputEntities[t].XEnd  >= lTTTO.RichEdit.SelStart) then
      lTTTO.FOutputEntities[t].Enabled := not(lTTTO.FOutputEntities[t].Enabled);
  end;

  RollTable(GTableTabs[FTableTabsIndex].LastCategory, GTableTabs[FTableTabsIndex].LastSubCategory, True);
end;


procedure TfrmMain.tbNPCLockAllClick(Sender: TObject);
begin
  GNPCs[cbNPCList.ItemIndex].LockAll;

  UpdateNPCLock;
end;


procedure TfrmMain.tbNPCUnlockAllClick(Sender: TObject);
begin
  GNPCs[cbNPCList.ItemIndex].UnlockAll;

  UpdateNPCLock;
end;


procedure TfrmMain.tbRemoveTableClick(Sender: TObject);
begin
  if GTableTabs.Count > 1 then begin
    GTableTabs.Delete(FTableTabsIndex);

    FTableTabsIndex := GetIndexFrom(pcTables.ActivePage);

    pcTablesChange(pcTables);

    if GTableTabs.Count = 1 then begin
      tbRemoveTable.Enabled      := False;
      miRemoveCurrentTab.Enabled := False;
    end;
  end;
end;


procedure TfrmMain.tbRenameCurrentTabClick(Sender: TObject);
var
  lName : string;

begin
  lName := InputBox('Rename this tab', 'Name', pcTables.ActivePage.Caption);

  if lName <> '' then begin
    pcTables.ActivePage.Caption := lName;
  end;
end;


procedure TfrmMain.About1Click(Sender: TObject);
begin
  frmAbout.ShowModal;
end;


procedure TfrmMain.Addcurrent1Click(Sender: TObject);
var
  lFav : integer;
  lTitle : string;

begin
  lFav   := (Sender As TMenuItem).Tag;

  lTitle := StringReplace(lbCategories.Items[lbCategories.ItemIndex] +
                          '*' +
                          lbSubCategories.Items[lbSubCategories.ItemIndex],
                          '[s]', '', []);

  GToTSettings.Favourites[lFav].CatSubCat := lTitle;

  FavMIList[lFav].Caption := GToTSettings.Favourites[lFav].CatSubCat;
end;


procedure TfrmMain.bNGNewNameClick(Sender: TObject);
begin
  cbNGTemplatesChange(cbNGTemplates);
end;


procedure TfrmMain.bNGTitleClick(Sender: TObject);
var
  s : string;

begin
  case (Sender As TBitBtn).Tag of
    0 : s := '$title';
    1 : s := '$name';
    2 : s := '$adjective';
    3 : s := '$noun';
    4 : s := '$other';
  end;

  cbNGTemplates.Text := cbNGTemplates.Text + ' ' + s;

  cbNGTemplatesChange(cbNGTemplates);
end;


procedure TfrmMain.cbNGTemplatesChange(Sender: TObject);
begin
  ClearDebug;

  // ===========================================================================

  if lbNGNames.ItemIndex <> -1 then
    eNGName.Text := GetName(lbNGNames.Items[lbNGNames.ItemIndex], cbNGTemplates.Text)
  else
    eNGName.Text := GetName('', cbNGTemplates.Text);

  mNGHistory.Lines.Insert(0, eNGName.Text);

  // ===========================================================================

  if ToTDebug.Text <> '' then
    sbMain.SimpleText := ToTDebug.Text;
end;


procedure TfrmMain.cbNGTemplatesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then begin
    cbNGTemplatesChange(cbNGTemplates);
  end;
end;


procedure TfrmMain.cbNPCListChange(Sender: TObject);
begin
  BuildNewNPC;

  UpdateNPCLock;
end;


procedure TfrmMain.Checkforupdates1Click(Sender: TObject);
begin
  CheckForNewVersion(versionToT, dateToT, 'tot.dat', false);
end;


procedure TfrmMain.Clearsearch1Click(Sender: TObject);

begin
  if pcMain.ActivePageIndex = tabShop then begin
    ClearShopSearch;
  end
  else begin
    ClearTableSearch;
  end;
end;


procedure TfrmMain.ClearTableSearch;
var
  t : integer;

begin
  for t := 0 to GCategories.Count - 1 do
    GCategories[t].SearchHit := False;

  // =========================================================================

  for t := 0 to GSubCategories.Count - 1 do
    GSubCategories[t].SearchHit := False;

  // =========================================================================

  for t := 0 to GTables.Count - 1 do
    GTables[t].SearchHit := False;

  // =========================================================================

  UpdateCategories;
end;


procedure TfrmMain.cbNGTypeChange(Sender: TObject);
var
  t : integer;

begin
  lbNGContents.Clear;

  case cbNGType.ItemIndex of
    0 : for t := 0 to GNames[lbNGNames.ItemIndex].Titles.Count - 1 do
         lbNGContents.Items.Add(GNames[lbNGNames.ItemIndex].Titles[t]);
    1 : for t := 0 to GNames[lbNGNames.ItemIndex].Names.Count - 1 do
         lbNGContents.Items.Add(GNames[lbNGNames.ItemIndex].Names[t]);
    2 : for t := 0 to GNames[lbNGNames.ItemIndex].Adjectives.Count - 1 do
         lbNGContents.Items.Add(GNames[lbNGNames.ItemIndex].Adjectives[t]);
    3 : for t := 0 to GNames[lbNGNames.ItemIndex].Nouns.Count - 1 do
         lbNGContents.Items.Add(GNames[lbNGNames.ItemIndex].Nouns[t]);
    4 : for t := 0 to GNames[lbNGNames.ItemIndex].Other.Count - 1 do
         lbNGContents.Items.Add(GNames[lbNGNames.ItemIndex].Other[t]);
  end;

  lNGObjects.Caption := 'Objects (' + IntToStr(lbNGContents.Count) + ')';
end;


procedure TfrmMain.ClearShopSearch;
var
  lCat, lSubCat, lItem : integer;

begin
  for lCat := 0 to GShopCategories.Count - 1 do begin

    GShopCategories[lCat].SearchHit   := False;

    for lSubCat := 0 to GShopCategories[lCat].SubCategories.Count - 1 do begin

      GShopCategories[lCat].SubCategories[lSubCat].SearchHit   := False;

      for lItem := 0 to GShopCategories[lCat].SubCategories[lSubCat].Items.Count - 1 do begin

        GShopCategories[lCat].SubCategories[lSubCat].Items[lItem].SearchHit := False;
      end;
    end;
  end;

  UpdateShopCategories;
end;


procedure TfrmMain.miDebugRollAllTablesClick(Sender: TObject);
var
  lCat, lSubCat : integer;

begin
  for lCat:= 0 to lbCategories.Count - 1 do begin
    lbCategories.ItemIndex := lCat;

    lbCategoriesClick(Nil);

    for lSubCat := 0 to lbSubCategories.Count - 1 do begin
      lbSubCategories.ItemIndex := lSubCat;

      lbSubCategoriesClick(lbSubCategories);
    end;
  end;
end;


procedure TfrmMain.Rollcurrenttable1000times1Click(Sender: TObject);
begin
  RollCurrentTable(1000);
end;


procedure TfrmMain.Rollcurrenttable100times1Click(Sender: TObject);
begin
  RollCurrentTable(100);
end;


procedure TfrmMain.RollCurrentTable(aCount : integer);
var
  t : integer;

begin
  try
    for t := 1 to aCount do begin
      Refresh1Click(Nil);
    end;
  except

  end;
end;


procedure TfrmMain.Rollfavourite1Click(Sender: TObject);
var
  lCat, lSubCat : string;
  lCatIdx, lSubCatIdx : integer;
  lFav : integer;
  t, x : integer;

begin
  lFav := (Sender As TMenuItem).Tag;

  if GToTSettings.Favourites[lFav].CatSubCat <> '' then begin

    x := Pos('*', GToTSettings.Favourites[lFav].CatSubCat);

    if x > 0 then begin
      lCatIdx    := -1;
      lSubCatIdx := -1;

      lCat       := Copy(GToTSettings.Favourites[lFav].CatSubCat, 1, x - 1);
      lSubCat    := Copy(GToTSettings.Favourites[lFav].CatSubCat, x + 1);

      for t := 0 to GCategories.Count - 1 do
        if GCategories[t].Title = lCat then begin
          lCatIdx := t;

          Break;
        end;

      for t := 0 to GSubCategories.Count - 1 do
        if GSubCategories[t].CategoryID = lCatIdx then
          if GSubCategories[t].Title = lSubCat then begin
            lSubCatIdx := GSubCategories[t].SubCategoryID;

            Break;
          end;

      if (lCatIdx <> -1) and (lSubCatIdx <> -1) then begin
        RollTable(lCatIdx, lSubCatIdx, False);
      end;
    end;
  end;
end;


procedure TfrmMain.UpdateImageList;
var
  t : integer;

begin
  if GImages.Count <> 0 then begin
    for t := 0 to GImages.Count - 1 do begin
      lbImages.Items.Add(GImages[t].FName);
    end;

    sbImagesSaveList.Enabled := True;
  end
  else
    sbImagesSaveList.Enabled := False;
end;


procedure TfrmMain.LoadLayout(aFileName : string);
var
  s : string;
  tf : TextFile;
  lCat : integer;
  lSubCat : integer;
  lMode : integer;

begin
  if FileExists(aFileName) then begin
    lMode   := -1;
    lCat    := -1;
    lSubCat := -1;

    GTableTabs.Clear;
    FTableTabsIndex := -1;

    AssignFile(tf, aFileName);
    Reset(tf);

    while not(eof(tf)) do begin
      readln(tf, s);

      if s <> '' then begin
        case s[1] of
          ';', '/' : {};
          '{'      : begin
                       lCat    := -1;
                       lSubCat := -1;

                       lMode   := 0;
                     end;
          '}'      : begin
                       if lMode = 0 then begin
                         if (lCat <> -1) and (lSubCat <> -1) then begin
                           CreateNewTableTab(lCat, lSubCat, '');
                         end;
                       end;

                       lMode := -1;
                     end;
          'C'      : begin
                       lCat := StrToIntDef(Copy(s, 3), 1);
                     end;
          'S'      : begin
                       lSubCat := StrToIntDef(Copy(s, 3), 1);
                     end;
        end;
      end;
    end;

    CloseFile(tf);
  end;
end;


procedure TfrmMain.SaveLayout(aFileName : string);
var
  t : integer;
  tf : TextFile;

begin
  {$I-}
  AssignFile(tf, aFileName);
  Rewrite(tf);

  for t:= 0 to GTableTabs.Count - 1 do begin
    writeln(tf, '{');
    writeln(tf, 'C:' + IntToStr(GTableTabs[t].Category));
    writeln(tf, 'S:' + IntToStr(GTableTabs[t].SubCategory));
    writeln(tf, '}');
  end;

  CloseFile(tf);
  {$I+}
end;


procedure TfrmMain.BuildShopItem(aShopCategory, aShopSubCategory, aShopItem : integer);
var
  lShopItem : TShopItem;

begin
  if (aShopCategory >= 0) and (aShopSubCategory >= 0) then begin
    lShopItem := GShopCategories[aShopCategory].SubCategories[aShopSubCategory].Items[aShopItem];

    lShopName.Caption        := lShopItem.Name;

    if lShopItem.Description <> '' then
      lShopDescription.Caption := lShopItem.Description
    else
      lShopDescription.Caption := '< no description >';

    lShopAC.Caption          := lShopItem.Armour;
    lShopDamage.Caption      := lShopItem.Damage;
    lShopProperties.Caption  := lShopItem.Properties;
    lShopStrength.Caption    := lShopItem.Strength;
    lShopStealth.Caption     := lShopItem.Stealth;
    lShopWeight.Caption      := lShopItem.Weight;

    if lShopItem.CostTo = '' then
      lShopCost.Caption        := '    ' + lShopItem.Cost
    else
      lShopCost.Caption        := '    ' + lShopItem.Cost + ' - ' + lShopItem.CostTo;

    if lShopItem.Interval <> '-' then
      lShopCurrency.Caption    := '  ' + ToTUtilityContent.ToCurrency(lShopItem.Currency) + ' / ' + lShopItem.Interval
    else
      lShopCurrency.Caption    := '  ' + ToTUtilityContent.ToCurrency(lShopItem.Currency);
  end;
end;


procedure TfrmMain.UpdateNPCLock;
var
  t : integer;
  tbmp : TBitmap;

begin
  for t:= 0 to 37 do begin
    if NPCButtons[t] <> Nil then begin
      if GNPCs[cbNPCList.ItemIndex].GetLockStatus(t) then begin
        tbmp := TBitmap.Create;

        NPCButtons[t].Glyph.Assign(nil);

        ImageList1.GetBitmap(3, NPCButtons[t].Glyph);

        tbmp.Free;
      end
      else begin
        tbmp := TBitmap.Create;

        NPCButtons[t].Glyph.Assign(nil);

        ImageList2.GetBitmap(3, NPCButtons[t].Glyph);

        tbmp.Free;
      end;
    end;
  end;
end;


procedure TfrmMain.BuildNewNPC;
begin
  eNPCGender.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCGender);
  eNPCRace.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCRace);
  eNPCLA.Text            := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCLA);
  eNPCMA.Text            := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMA);
  eNPCTalent.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCTalent);
  eNPCMark.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMark);
  eNPCMannerism.Text     := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMannerism);
  eNPCTrait.Text         := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCTrait);
  eNPCBond.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCBond);
  eNPCFlaw.Text          := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCFlaw);
  eNPCEmotion.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEmotion);
  eNPCSocialClass.Text   := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCSocialClass);

  eNPCLowAbility.Text    := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCLowAbility, UpperCase('la_' + eNPCRace.Text));
  eNPCHighAbility.Text   := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCHighAbility, UpperCase('ha_' + eNPCRace.Text));
  eNPCIdeal.Text         := GNPCs[cbNPCList.ItemIndex].FromNamedSubItem(NPCIdeal, UpperCase('alignment_' + eNPCMA.Text));
  eNPCOccupation.Text    := GNPCs[cbNPCList.ItemIndex].FromNamedSubItemSpecial(NPCOccupation, eNPCSocialClass.Text, 'royal', eNPCGender.Text,
                                                                               UpperCase('occupation_' + eNPCSocialClass.Text));

  // == physical ===============================================================

  eNPCEyeColour.Text     := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEyeColour);
  eNPCEyeShape.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCEyeShape);
  eNPCHairColour.Text    := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCHairColour);
  eNPCAgeGroup.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCAgeGroup);
  eNPCPhysique.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCPhysique);
  eNPCHeight.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCHeight);

  // == family =================================================================

  eNPCParents.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCParents);
  eNPCSiblings.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCSiblings);
  eNPCCousins.Text       := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCCousins);
  eNPCAunts.Text         := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCAunts);
  eNPCUncles.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCUncles);
  eNPCChildren.Text      := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCChildren);
  eNPCFamily.Text        := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCFamily);
  eNPCMaritalStatus.Text := GNPCs[cbNPCList.ItemIndex].GetNPCElement(NPCMarital);

  AddNPCDescriptionText;
end;


procedure TfrmMain.AddNPCDescriptionText;
var
  s : string;
  lFragment : string;
  lMode : boolean;
  lItem, t : integer;


  procedure OutputFragment;
  begin
    if lMode then begin
      lMode := False;

      reNPCOutput.SelAttributes.Color := GToTSettings.NPCOptionTextColour;

      reNPCOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.NPCOptionTextBold);
      reNPCOutput.SelText             := lFragment;

      lFragment := '';
    end
    else begin
      lMode := True;

      reNPCOutput.SelAttributes.Color := GToTSettings.NPCDescriptionTextColour;

      reNPCOutput.SelAttributes.Style := ToTUtility.GetStyle(GToTSettings.NPCDescriptionTextBold);
      reNPCOutput.SelText             := lFragment;

      lFragment := '';
    end;
  end;


begin
  reNPCOutput.Clear;

  for lItem := 0 to 2 do begin
    s := GNPCs[cbNPCList.ItemIndex].GetDescriptionText(lItem);
    lFragment := '';
    lMode     := False;

    for t:= 1 to length(s) do begin
      if (s[t] = '$') then begin
        OutputFragment;
      end
      else
        lFragment := lFragment + s[t];
    end;

    if lFragment <> '' then begin
      OutputFragment;
    end;

    if lItem <> 2 then begin
      reNPCOutput.Lines.Add('');
      reNPCOutput.Lines.Add('');
    end;
  end;
end;


procedure TfrmMain.BuildHoardCalculations;
var
  t : integer;
  lInput : integer;
  lWeight, lVolume : double;
  lTotalCoins : integer;
  lTotalWeight, lTotalVolume : double;

begin
  lTotalCoins  := 0;
  lTotalWeight := 0;
  lTotalVolume := 0;

  for t := 0 to 3 do begin
    lInput := StrToIntDef(HoardCoins[t].Text, 0);

    if lInput <> 0 then begin
      lWeight := GetHoardWeight(t, lInput, GToTSettings.ToTUnits);
      lVolume := GetHoardVolume(t, lInput, GToTSettings.ToTUnits);
    end
    else begin
      lWeight := 0;
      lVolume := 0;
    end;

    case GToTSettings.ToTUnits of
      unitMetric   : begin
                       HoardCoinsWeight[t].Caption := FloatToStrF(lWeight, ffFixed, 7, 2) + ' kg';
                       HoardCoinsVolume[t].Caption := FloatToStrF(lVolume, ffFixed, 7, 2) + ' m^3';
                     end;
      unitImperial : begin
                       HoardCoinsWeight[t].Caption := FloatToStrF(lWeight, ffFixed, 7, 2) + ' lb';
                       HoardCoinsVolume[t].Caption := FloatToStrF(lVolume, ffFixed, 7, 2) + ' ft^3';
                     end;

    end;

    lTotalCoins  := lTotalCoins  + lInput;
    lTotalWeight := lTotalWeight + lWeight;
    lTotalVolume := lTotalVolume + lVolume;
  end;

  lHCTotalCoins.Caption  := IntToStr(lTotalCoins);

  case GToTSettings.ToTUnits of
    unitMetric   : begin
                     lHCTotalWeight.Caption := FloatToStrF(lTotalWeight, ffFixed, 7, 2) + ' kg';
                     lHCTotalVolume.Caption := FloatToStrF(lTotalVolume, ffFixed, 7, 2) + ' m^3';
                   end;
    unitImperial : begin
                     lHCTotalWeight.Caption := FloatToStrF(lTotalWeight, ffFixed, 7, 2) + ' lb';
                     lHCTotalVolume.Caption := FloatToStrF(lTotalVolume, ffFixed, 7, 2) + ' ft^3';
                   end;
  end;
end;


end.
