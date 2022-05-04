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

unit searchshop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmSearchShop = class(TForm)
    GroupBox1: TGroupBox;
    eSearchTerm: TEdit;
    bSearch: TBitBtn;
    bCancel: TBitBtn;
    GroupBox2: TGroupBox;
    cbDescriptions: TCheckBox;
    procedure eSearchTermKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TShopSearch = record
    SearchTerm          : string;

    IncludeDescriptions : boolean;
  end;

var
  frmSearchShop: TfrmSearchShop;

function GetShopSearchParams(aPrevious : TShopSearch) : TShopSearch;


implementation

{$R *.dfm}


function GetShopSearchParams(aPrevious : TShopSearch) : TShopSearch;
 begin
  with TfrmSearchShop.Create(Application) do
    try
      eSearchTerm.Text := aPrevious.SearchTerm;

      if eSearchTerm.Text <> '' then
        bSearch.Enabled := True;

      cbDescriptions.Enabled := aPrevious.IncludeDescriptions;

      ShowModal;

      if ModalResult = mrOK then begin
        Result.SearchTerm          := eSearchTerm.Text;

        Result.IncludeDescriptions := cbDescriptions.Enabled;
      end
      else begin
         Result.SearchTerm   := '';
      end;
    except
      Free;
  end;
end;


procedure TfrmSearchShop.eSearchTermKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if eSearchTerm.Text <> '' then
    bSearch.Enabled := True
  else
    bSearch.Enabled := False;
end;


end.
