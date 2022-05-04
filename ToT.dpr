//
// (c) Paul Alan Freshney 2016
// www.MaximumOctopus.com
// paul@maximumoctopus.com
//
// Inspired/based on the Table of Tables sub-reddit.
// https://www.reddit.com/r/BehindTheTables/
//
// This code is open source, please make public any modifications; either
// by emailing me, or posting to the Table of Tables sub-reddit.
//
// August 21st 2016
//

program ToT;

uses
  Forms,
  main in 'main.pas' {frmMain},
  tables in 'tables.pas',
  constants in 'constants.pas',
  utility in 'utility.pas',
  settings in 'settings.pas',
  userpreferences in 'userpreferences.pas' {frmPreferences},
  about in 'about.pas' {frmAbout},
  names in 'names.pas',
  imagehandler in 'imagehandler.pas',
  tabcontroller in 'tabcontroller.pas',
  checkversion in 'checkversion.pas' {frmCheckVersion},
  outputentity in 'outputentity.pas',
  viewer in 'viewer.pas' {frmViewer},
  searchshop in 'searchshop.pas' {frmSearchShop},
  utility_content in 'utility_content.pas',
  totfunctions in 'totfunctions.pas',
  Vcl.Themes,
  Vcl.Styles,
  updater in 'updater.pas' {frmUpdate},
  shop in 'shop.pas',
  shopitem in 'shopitem.pas',
  shopsubcategory in 'shopsubcategory.pas',
  npc in 'npc.pas',
  statistics in 'statistics.pas',
  debug in 'debug.pas',
  hoardcalc in 'hoardcalc.pas';

{$R *.res}

begin
  Application.Initialize;

  Application.MainFormOnTaskbar := True;

  TStyleManager.TrySetStyle('Silver');

  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmViewer, frmViewer);
  Application.CreateForm(TfrmPreferences, frmPreferences);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmCheckVersion, frmCheckVersion);
  Application.CreateForm(TfrmUpdate, frmUpdate);

  Application.Run;
end.
