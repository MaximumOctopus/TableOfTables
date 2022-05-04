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

unit about;


interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfrmAbout = class(TForm)
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    lStats: TLabel;
    lStats2: TLabel;
    lStats3: TLabel;
    lStats4: TLabel;
    procedure Label3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frmAbout: TfrmAbout;


implementation


{$R *.dfm}


uses
  statistics, names, npc, settings, utility;


procedure TfrmAbout.FormShow(Sender: TObject);
begin
  lStats.Caption  := 'Loaded ' + IntToStr(ToTStatistics.TableCount) + ' tables; loaded ' + IntToStr(ToTStatistics.TotalItemCount) + ' randomisable items!';

  lStats3.Caption := 'Loaded ' + IntToStr(GNPCs.Count) + ' NPCs (' + IntToStr(ToTStatistics.TotalNPCItemCount) + ' things).';

  lStats4.Caption := 'Loaded ' + IntToStr(GNames.Count) + ' names (' + IntToStr(ToTStatistics.TotalNameCount) + ' things).';

  lStats2.Caption := 'Loaded ' + IntToStr(ToTStatistics.ShopItemCount) + ' shop items.';
end;


procedure TfrmAbout.Label2Click(Sender: TObject);
begin
  ToTUtility.ExecuteFile(0, 'mailto:paul@freshney.org', '', '');
end;


procedure TfrmAbout.Label3Click(Sender: TObject);
begin
  ToTUtility.ExecuteFile(0, TLabel(Sender).Caption, '', '');
end;


end.
