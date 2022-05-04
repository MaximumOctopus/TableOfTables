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

unit checkversion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, StdCtrls, Buttons;

type
  TfrmCheckVersion = class(TForm)
    BitBtn1: TBitBtn;
    bHistory: TBitBtn;
    mHistory: TMemo;
    bDownload: TBitBtn;
    Shape1: TShape;
    Label5: TLabel;
    bWebsite: TBitBtn;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    lIVDate: TLabel;
    lIVVersion: TLabel;
    lLADate: TLabel;
    lLAVersion: TLabel;
    GroupBox1: TGroupBox;
    lWhat: TLabel;
    bUpdateNow: TBitBtn;
    httpMain: TIdHTTP;
    procedure FormShow(Sender: TObject);
    procedure bHistoryClick(Sender: TObject);
    procedure bDownloadClick(Sender: TObject);
    procedure bWebsiteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckVersion: TfrmCheckVersion;

function CheckForNewVersion(aCurrentVersion, aCurrentDate, appdat : string; autoclosemode : boolean): word;

implementation

{$R *.dfm}

uses utility;

var
 ApplicationVersionFile : string;
 AutoClose : boolean;


function CheckForNewVersion(aCurrentVersion, aCurrentDate, appdat : string; autoclosemode : boolean): word;
 begin
  with TfrmCheckVersion.Create(Application) do
    try
      Result := mrOK;

      ApplicationVersionFile := appdat;

      autoclose              := autoclosemode;

      lIVDate.Caption    := aCurrentDate;
      lIVVersion.Caption := aCurrentVersion;

      ShowModal;

      Result := ModalResult;
    finally
      Free;
    end;
end;


procedure TfrmCheckVersion.FormShow(Sender: TObject);
 var
  s : string;
  x : TStringList;

 begin
  x := TStringList.Create;

  try
    s := httpMain.Get('http://www.maximumoctopus.com/versions/d' + ApplicationVersionFile);

    x.Text := s;

    lLADate.Caption    := x.Strings[0];
    lLAVersion.Caption := x.Strings[1];

    if (lLADate.Caption <> lIVDate.Caption) or
       (lLAVersion.Caption <> lIVVersion.Caption) then begin
      lWhat.Caption := 'A new version is available!';

      s := httpMain.Get('http://www.maximumoctopus.com/versions/h' + ApplicationVersionFile);

      mHistory.Text := s;

      if Pos('BETA', UpperCase(lLAVersion.Caption)) <> 0 then
        bDownload.Enabled  := True
      else
        bDownload.Enabled  := False;

      bHistory.Enabled   := True;
      bUpdateNow.Enabled := True;
    end
    else begin
      lWhat.Caption      := 'No new version is available!';

      Close;
    end;
  except
    lLADate.Caption    := 'Error';
    lLAVersion.Caption := 'Error';

    lWhat.Caption      := 'Unable to connect to maximumoctopus.com!';
  end;

  x.Free;
end;


procedure TfrmCheckVersion.bHistoryClick(Sender: TObject);
 begin
  if bHistory.Tag = 0 then begin
    bHistory.Tag     := 1;
    bHistory.Caption := 'History <<';
    ClientHeight     := 494;
  end
  else begin
    bHistory.Tag     := 0;
    bHistory.Caption := 'History >>';
    ClientHeight     := 271;
  end;
end;


procedure TfrmCheckVersion.bDownloadClick(Sender: TObject);
 begin
  ToTUtility.ExecuteFile(0, 'http://maximumoctopus.com/pc/tot.htm', '', '');
end;


procedure TfrmCheckVersion.bWebsiteClick(Sender: TObject);
 begin
  ToTUtility.ExecuteFile(0, 'http://maximumoctopus.com/pc/tot.htm', '', '');
end;


end.
