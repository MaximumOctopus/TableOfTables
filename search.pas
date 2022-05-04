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
// August 21st 2016
//

unit search;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmSearch = class(TForm)
    GroupBox1: TGroupBox;
    eSearchTerm: TEdit;
    bSearch: TBitBtn;
    bCancel: TBitBtn;
    GroupBox2: TGroupBox;
    cbTitles: TCheckBox;
    cbItems: TCheckBox;
    cbNames: TCheckBox;
    procedure eSearchTermKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TTableSearch = record
    SearchTerm    : string;

    Names         : boolean;
    Titles        : boolean;
    RollableItems : boolean;
  end;

var
  frmSearch: TfrmSearch;

function GetSearchParams(aPrevious : TTableSearch) : TTableSearch;


implementation

{$R *.dfm}


function GetSearchParams(aPrevious : TTableSearch) : TTableSearch;
 begin
  with TfrmSearch.Create(Application) do
    try
      eSearchTerm.Text := aPrevious.SearchTerm;

      cbNames.Checked  := aPrevious.Names;
      cbTitles.Checked := aPrevious.Titles;
      cbItems.Checked  := aPrevious.RollableItems;

      if eSearchTerm.Text <> '' then
        bSearch.Enabled := True;

      ShowModal;

      if ModalResult = mrOK then begin
        Result.SearchTerm    := eSearchTerm.Text;

        Result.Names         := cbNames.Checked;
        Result.Titles        := cbTitles.Checked;
        Result.RollableItems := cbItems.Checked;
      end
      else begin
         Result.SearchTerm   := '';
      end;
    except
      Free;
  end;
end;


procedure TfrmSearch.eSearchTermKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if eSearchTerm.Text <> '' then
    bSearch.Enabled := True
  else
    bSearch.Enabled := False;
end;


end.
