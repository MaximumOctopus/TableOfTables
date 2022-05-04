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

unit userpreferences;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPreferences = class(TForm)
    bSave: TBitBtn;
    bCancel: TBitBtn;
    GroupBox1: TGroupBox;
    sbSPLFont: TSpeedButton;
    Label1: TLabel;
    lSPLName: TLabel;
    lSPLSize: TLabel;
    fdPreferences: TFontDialog;
    Label2: TLabel;
    lMPLName: TLabel;
    lMPLSize: TLabel;
    sbMPLFont: TSpeedButton;
    GroupBox3: TGroupBox;
    rbOutputMode1: TRadioButton;
    rbOutputMode2: TRadioButton;
    cdPreferences: TColorDialog;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    cbDescriptionBold: TCheckBox;
    sDescriptionColour: TShape;
    Label4: TLabel;
    cbOptionBold: TCheckBox;
    sOptionColour: TShape;
    Label5: TLabel;
    cbHeaderBold: TCheckBox;
    sHeaderColour: TShape;
    Label6: TLabel;
    cbLockedBold: TCheckBox;
    sLockedColour: TShape;
    cbDebug: TCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    sFavouriteInvColour: TShape;
    cbFavouriteInvBold: TCheckBox;
    sFavouriteColour: TShape;
    cbFavouriteBold: TCheckBox;
    Label9: TLabel;
    cbNPCDescriptionBold: TCheckBox;
    sNPCDescriptionColour: TShape;
    Label10: TLabel;
    cbNPCOptionBold: TCheckBox;
    sNPCOptionColour: TShape;
    GroupBox2: TGroupBox;
    rbUnitsMetric: TRadioButton;
    rbUnitsImperial: TRadioButton;
    procedure sbSPLFontClick(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure sbMPLFontClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sDescriptionColourMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreferences: TfrmPreferences;

implementation

{$R *.dfm}

uses System.UITypes,

     settings;


procedure TfrmPreferences.FormShow(Sender: TObject);
begin
  // == gui ====================================================================
  case GToTSettings.DisplayMode of
    0 : rbOutputMode1.Checked := True;
    1 : rbOutputMode2.Checked := True;
  end;

  case GToTSettings.ToTUnits of
    0 : rbUnitsMetric.Checked   := True;
    1 : rbUnitsImperial.Checked := True;
  end;

  cbDescriptionBold.Checked         := GToTSettings.DescriptionBold;
  sDescriptionColour.Brush.Color    := GToTSettings.DescriptionColour;
  cbOptionBold.Checked              := GToTSettings.OptionBold;
  sOptionColour.Brush.Color         := GToTSettings.OptionColour;

  cbHeaderBold.Checked              := GToTSettings.HeaderTextBold;
  sHeaderColour.Brush.Color         := GToTSettings.HeaderTextColour;

  cbLockedBold.Checked              := GToTSettings.OptionLockedBold;
  sLockedColour.Brush.Color         := GToTSettings.OptionLockedColour;

  cbFavouriteBold.Checked           := GToTSettings.OptionFavouriteBold;
  sFavouriteColour.Brush.Color      := GToTSettings.OptionFavouriteColour;
  cbFavouriteInvBold.Checked        := GToTSettings.OptionFavouriteInvBold;
  sFavouriteInvColour.Brush.Color   := GToTSettings.OptionFavouriteInvColour;

  cbNPCDescriptionBold.Checked      := GToTSettings.NPCDescriptionTextBold;
  sNPCDescriptionColour.Brush.Color := GToTSettings.NPCDescriptionTextColour;
  cbNPCOptionBold.Checked           := GToTSettings.NPCOptionTextBold;
  sNPCOptionColour.Brush.Color      := GToTSettings.NPCOptionTextColour;

  // == fonts ==================================================================
  lSPLName.Caption := GToTSettings.SidePanelFontName;
  lSPLSize.Caption := IntToStr(GToTSettings.SidePanelFontSize);
  lMPLName.Caption := GToTSettings.MainPanelFontName;
  lMPLSize.Caption := IntToStr(GToTSettings.MainPanelFontSize);

  // == debug ==================================================================
  cbDebug.Checked  := GToTSettings.DebugMode;
end;


procedure TfrmPreferences.bSaveClick(Sender: TObject);
begin
  // == gui ====================================================================
  if rbOutputMode1.Checked then GToTSettings.DisplayMode := 0;
  if rbOutputMode2.Checked then GToTSettings.DisplayMode := 1;


  if rbUnitsMetric.Checked then GToTSettings.ToTUnits   := 0;
  if rbUnitsImperial.Checked then GToTSettings.ToTUnits := 1;

  GToTSettings.DescriptionBold          := cbDescriptionBold.Checked;
  GToTSettings.DescriptionColour        := sDescriptionColour.Brush.Color;
  GToTSettings.OptionBold               := cbOptionBold.Checked;
  GToTSettings.OptionColour             := sOptionColour.Brush.Color;
  GToTSettings.HeaderTextBold           := cbHeaderBold.Checked;
  GToTSettings.HeaderTextColour         := sHeaderColour.Brush.Color;

  GToTSettings.OptionLockedBold         := cbLockedBold.Checked;
  GToTSettings.OptionLockedColour       := sLockedColour.Brush.Color;

  GToTSettings.OptionFavouriteBold      := cbFavouriteBold.Checked;
  GToTSettings.OptionFavouriteColour    := sFavouriteColour.Brush.Color;
  GToTSettings.OptionFavouriteInvBold   := cbFavouriteInvBold.Checked;
  GToTSettings.OptionFavouriteInvColour := sFavouriteInvColour.Brush.Color;

  GToTSettings.NPCDescriptionTextBold   := cbNPCDescriptionBold.Checked;
  GToTSettings.NPCDescriptionTextColour := sNPCDescriptionColour.Brush.Color;
  GToTSettings.NPCOptionTextBold        := cbNPCOptionBold.Checked;
  GToTSettings.NPCOptionTextColour      := sNPCOptionColour.Brush.Color;

  // == fonts ==================================================================
  GToTSettings.SidePanelFontName        := lSPLName.Caption;
  GToTSettings.SidePanelFontSize        := StrToIntDef(lSPLSize.Caption,  8);
  GToTSettings.MainPanelFontName        := lMPLName.Caption;
  GToTSettings.MainPanelFontSize        := StrToIntDef(lMPLSize.Caption, 12);

  // == debug ==================================================================
  GToTSettings.DebugMode                := cbDebug.Checked;
end;


procedure TfrmPreferences.sbMPLFontClick(Sender: TObject);
begin
  if fdPreferences.Execute then begin
    lMPLName.Caption := fdPreferences.Font.Name;
    lMPLSize.Caption := IntToStr(fdPreferences.Font.Size);
  end;
end;


procedure TfrmPreferences.sbSPLFontClick(Sender: TObject);
begin
  if fdPreferences.Execute then begin
    lSPLName.Caption := fdPreferences.Font.Name;
    lSPLSize.Caption := IntToStr(fdPreferences.Font.Size);
  end;
end;


procedure TfrmPreferences.sDescriptionColourMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cdPreferences.Execute then begin
    (Sender As TShape).Brush.Color := cdPreferences.Color;
  end;
end;


end.
