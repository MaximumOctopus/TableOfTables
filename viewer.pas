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

unit viewer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmViewer = class(TForm)
    mViewer: TMemo;
    pcTables: TPageControl;
    tsMain: TTabSheet;
    TabSheet1: TTabSheet;
    pSidePanel: TPanel;
    Splitter2: TSplitter;
    pCategories: TPanel;
    lbCategories: TListBox;
    pCategoriesTitle: TPanel;
    Panel3: TPanel;
    lbSubCategories: TListBox;
    pSubCategoriesTitle: TPanel;
    Panel1: TPanel;
    lbName: TListBox;

    procedure bCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbNameClick(Sender: TObject);
    procedure lbCategoriesClick(Sender: TObject);
    procedure lbSubCategoriesClick(Sender: TObject);
  private
    procedure BuildTableNameList;
    procedure BuildCategoryList;
  public
    procedure SetTable(aCategory, aSubCategory : integer);
    procedure SetTableFromName(aTableName : string);
  end;

var
  frmViewer: TfrmViewer;

implementation

{$R *.dfm}


uses tables;


procedure TfrmViewer.bCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TfrmViewer.FormCreate(Sender: TObject);
begin
  BuildTableNameList;

  BuildCategoryList;
end;


procedure TfrmViewer.lbCategoriesClick(Sender: TObject);
var
  t : integer;

begin
  lbSubCategories.Clear;

  for t := 0 to GSubCategories.Count - 1 do begin
    if GSubCategories[t].CategoryID = lbCategories.ItemIndex then begin
      if GSubCategories[t].SearchHit then
        lbSubCategories.Items.Add(GSubCategories[t].Title + ' [s]')
      else
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


procedure TfrmViewer.lbNameClick(Sender: TObject);
begin
  if lbName.ItemIndex <> -1 then
    SetTableFromName(lbName.Items[lbName.ItemIndex]);
end;


procedure TfrmViewer.lbSubCategoriesClick(Sender: TObject);
begin
  if lbSubCategories.ItemIndex <> -1 then begin
    SetTable(lbCategories.ItemIndex, lbSubCategories.ItemIndex);
  end;
end;


procedure TfrmViewer.BuildTableNameList;
var
  t : integer;

begin
  for t:= 0 to GTables.Count - 1 do begin
    if GTables[t].Name <> '' then
      lbName.Items.Add(GTables[t].Name);
  end;
end;


procedure TfrmViewer.BuildCategoryList;
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


procedure TfrmViewer.SetTable(aCategory, aSubCategory : integer);
var
  lRollMode, t, i : integer;

begin
  mViewer.Clear;

  //lDescription.Caption := aDescription;

  for t := 0 to GTables.Count - 1 do begin
    if (GTables[t].CategoryID = aCategory)    and
       (GTables[t].SubID      = aSubCategory) then begin

      lRollMode := GTables[t].Mode;

      case lRollMode of
        modeOneToOne,
         modeRange    : begin
                          mViewer.Lines.Add('');
                          mViewer.Lines.Add('(d' + IntToStr(GTables[t].DiceRoll) + ') ' + GTables[t].Title);
                          mViewer.Lines.Add('');

                          if GTables[t].Items.Count <> 0 then begin
                            for i := 0 to GTables[t].Items.Count - 1 do begin
                              mViewer.Lines.Add('    ' + GTables[t].Items[i]);
                            end;
                           end
                           else
                             mViewer.Lines.Add('  Contains no items!!');
                         end;
        modeTitle      : begin
                          mViewer.Lines.Add('');
                          mViewer.Lines.Add(GTables[t].Title);
                          mViewer.Lines.Add('');
                         end;
      end;
    end;
  end;

  mViewer.SelStart  := 0;
  mViewer.SelLength := 0;
  SendMessage(mViewer.Handle, EM_SCROLLCARET, 0, 0);
end;


procedure TfrmViewer.SetTableFromName(aTableName : string);
var
  lRollMode, i : integer;
  lTableID : integer;

begin
  lTableID := -1;

  mViewer.Clear;

  if aTableName <> '' then
    lTableID := FindTableWithName(aTableName);

  if lTableID <> -1 then begin

    lRollMode := GTables[lTableID].Mode;

    case lRollMode of
      modeOneToOne,
       modeRange    : begin
                        mViewer.Lines.Add('');
                        mViewer.Lines.Add('(d' + IntToStr(GTables[lTableID].DiceRoll) + ') ' + GTables[lTableID].Title);
                        mViewer.Lines.Add('');

                        if GTables[lTableID].Items.Count <> 0 then begin
                          for i := 0 to GTables[lTableID].Items.Count - 1 do begin
                            mViewer.Lines.Add('    ' + GTables[lTableID].Items[i]);
                          end;
                         end
                         else
                           mViewer.Lines.Add('  Contains no items!!');
                       end;
      modeTitle      : begin
                        mViewer.Lines.Add('');
                        mViewer.Lines.Add(GTables[lTableID].Title);
                        mViewer.Lines.Add('');
                       end;
    end;
  end;

  mViewer.SelStart  := 0;
  mViewer.SelLength := 0;
  SendMessage(mViewer.Handle, EM_SCROLLCARET, 0, 0);
end;


end.
