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

unit updater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdComponent, IdBaseComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmUpdate = class(TForm)
    mLog: TMemo;
    sbStart: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lStatus: TLabel;
    lUpdateLocation: TLabel;
    pbMain: TProgressBar;
    pbFile: TProgressBar;
    Bevel1: TBevel;
    httpUpdate: TIdHTTP;
    procedure sbStartClick(Sender: TObject);
    procedure httpUpdateWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure httpUpdateWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure httpUpdateWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FFileList : TStringList;
    FLastUpdate, FCurrentUpdate : string;
    FUpdateCount, FFailCount : integer;
    FTotalDownloaded : int64;
    FOutput : TextFile;

    function  GetManifest: integer;
    procedure ProcessManifest;
    procedure LoadLastUpdate;
  public
  end;

  TFileObject = record
    Filepath   : string;
    Filename   : string;
    FileSize   : int64;
    FileDate   : integer;  // modified
    FileFolder : boolean;
  end;


const
  CRemoteUpdateLocation : string = 'http://www.maximumoctopus.com/tot/update/';


var
  frmUpdate: TfrmUpdate;


function UpdateData: word;


implementation

{$R *.dfm}

uses
  utility;


function UpdateData: word;
 begin
  with TfrmUpdate.Create(Application) do
    try
      Result := mrOK;

      ShowModal;
    finally
      Free;
    end;
end;


procedure TfrmUpdate.sbStartClick(Sender: TObject);
var
  uStatus : integer;
  tf : TextFile;

begin
  mLog.Clear;
  FUpdateCount     := 0;
  FFailCount       := 0;
  FTotalDownloaded := 0;
  sbStart.Enabled  := False;

  LoadLastUpdate;

  uStatus := GetManifest;

  case uStatus of
    0  : begin
           ProcessManifest;

           mLog.Lines.Add('');
           mLog.Lines.Add('Updated  : ' + IntToStr(FUpdateCount) + ' files.');
           mLog.Lines.Add('Download : ' + ToTUtility.ConvertToUsefulUnit(FTotalDownloaded) + '.');

           lStatus.Caption := 'Done.';
           pbMain.Position := 0;
         end;
    1  : begin
           lStatus.Caption := 'Update finished, Table of Tables is up-to-date.'; // no need to update

           if FFailCount = 0 then begin
             {$I-}
             AssignFile(tf, lUpdateLocation.Caption + 'lastupdate.dat');
             Rewrite(tf);

             Writeln(tf, FLastUpdate);

             CloseFile(tf);
             {$I+}
           end;
         end;
    99 : begin
           mLog.Lines.Add('');
           mLog.Lines.Add('Error getting manifest file. Update aborted.');
           mLog.Lines.Add('(' + CRemoteUpdateLocation + 'manifest.dat)');

           lStatus.Caption := 'Error.';
         end;
  end;

  pbFile.Position := 0;
  sbStart.Enabled := True;
end;


procedure TfrmUpdate.LoadLastUpdate;
 var
  tf : TextFile;

 begin
  if FileExists(lUpdateLocation.Caption + 'lastupdate.dat') then begin
    AssignFile(tf, lUpdateLocation.Caption + 'lastupdate.dat');
    Reset(tf);

    Readln(tf, FLastUpdate);

    CloseFile(tf);
  end;
end;


procedure TfrmUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FFileList);

  Action := caFree;
end;


procedure TfrmUpdate.FormCreate(Sender: TObject);
begin
  lUpdateLocation.Caption := ExtractFilepath(Application.Exename) + 'data\';

  FLastUpdate    := '19000101';
  FCurrentUpdate := '19000101';

  FFileList      := TStringList.Create;
end;


function TfrmUpdate.GetManifest: integer;
 var
  s : string;

 begin
  Result := 0;

  lStatus.Caption := 'Getting manifest.dat file...';

  FFileList.Clear;

  try
    FCurrentUpdate := httpUpdate.Get(CRemoteUpdateLocation + 'lastupdate.dat');

    if FCurrentUpdate <> FLastUpdate then begin
      s := httpUpdate.Get(CRemoteUpdateLocation + 'manifest.dat');

      FFileList.Text   := s;

      lStatus.Caption := 'Loaded ' + IntToStr(FFileList.Count) + ' items.';
    end
    else
      Result := 1;
  except
    Result := 99;
  end;
end;


procedure TfrmUpdate.httpUpdateWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
  pbFile.Position := AWorkCount;
  pbFile.Refresh;

  Application.ProcessMessages;
end;


procedure TfrmUpdate.httpUpdateWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  pbFile.Max      := AWorkCountMax;
  pbFile.Position := 0;

  pbFile.Refresh;
end;


procedure TfrmUpdate.httpUpdateWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
  pbFile.Position := pbFile.Max;
  pbFile.Refresh;
end;


procedure TfrmUpdate.ProcessManifest;
 var
  tf : File of byte;
  t : integer;
  tfo : TFileObject;
  lGetNewFile : boolean;
  xxx, op : string;

  function StripData(s : string): TFileObject;
   var
    ntfo : TFileObject;
    i,z : integer;
    ts : string;

   begin
    i  := 0;
    ts := '';

    for z
    := 1 to length(s) do begin
      if s[z] = ';' then begin
        case i of
          0 : ntfo.Filename := ts;
          1 : if ts = '' then
                 ntfo.Filepath := ts
              else
                 ntfo.Filepath := ts + '\';
          2 : begin
                ntfo.FileSize := StrToInt64(ts);

                if ntfo.FileSize = -1 then begin
                  ntfo.FileFolder := True;
                  ntfo.FileSize   := 0;
                end
                else
                  ntfo.FileFolder := False;
              end;
          3 : ntfo.FileDate := StrToIntDef(ts, 99999999);
        end;

        inc(i);
        ts := '';
      end
      else
        ts := ts + s[z];
    end;

    Result := ntfo;
  end;

 begin
  pbMain.Max      := FFileList.Count - 1;
  pbMain.Position := 0;

  lStatus.Caption := 'Updating...';
  lStatus.Refresh;

  for t := 0 to FFileList.Count - 1 do begin
    lGetNewFile := False;

    tfo := StripData(FFileList.Strings[t]);

    if tfo.FileFolder then begin  // == folders ================================
      if not DirectoryExists(lUpdateLocation.Caption + tfo.Filepath + tfo.Filename) then begin
        {$I-}
        MkDir(lUpdateLocation.Caption + tfo.Filepath + tfo.Filename);
        {$I+}

        if IOResult = 0 then
          mLog.Lines.Add('NEW FOLDER : ' + '\' + tfo.Filepath + tfo.Filename)
        else begin
          mLog.Lines.Add('FOLDER FAIL: ' + '\' + tfo.Filepath + tfo.Filename);
          inc(FFailCount);
        end;
      end;
    end
    else begin                    // == files ==================================
      if UpperCase(tfo.Filename) <> 'APPUPDATE.EXE' then begin

        if not(FileExists(lUpdateLocation.Caption + tfo.Filepath + tfo.Filename)) then begin
          lGetNewFile := True;

          mLog.Lines.Add('NEW FILE   : ' + '\' + tfo.Filepath+tfo.Filename);
        end
        else begin
          if ToTUtility.FileDateToDateStr(FileAge(lUpdateLocation.Caption+tfo.Filepath+tfo.Filename)) < tfo.FileDate then begin
            lGetNewFile := True;

            mLog.Lines.Add('UPDATED (D): ' + '\' + tfo.Filepath + tfo.Filename);
          end;

          // don't do more than we need to...
          if lGetNewFile = False then begin
            {$I-}
            AssignFile(tf, lUpdateLocation.Caption + tfo.Filepath + tfo.Filename);
            Reset(tf);

            if tfo.FileSize <> FileSize(tf) then begin
              lGetNewFile := True;

              mLog.Lines.Add('UPDATED (S): ' + '\' + tfo.Filepath + tfo.Filename);
            end;

            CloseFile(tf);
            {$I+}
          end;
        end;
      end
      else
        lGetNewFile := True;

      // =======================================================================

      if lGetNewFile then begin
        lStatus.Caption := 'Updating ' + '\' + tfo.Filepath + tfo.Filename + '...';
        lStatus.Refresh;

        xxx := '';

        try
          op  := StringReplace(CRemoteUpdateLocation + tfo.Filepath + tfo.Filename, ' ', '%20', [rfReplaceAll]);

          xxx := httpUpdate.Get(op);
        except
          xxx := '';
          mLog.Lines.Add('FAILED  (R): ' + '\' + tfo.Filepath + tfo.Filename);
          inc(FFailCount);
        end;

        if length(xxx) <> 0 then begin
          try
            {$I-}
            if UpperCase(tfo.Filename) = 'APPUPDATE.EXE' then
              AssignFile(fOutput, lUpdateLocation.Caption + tfo.Filepath + '_AppUpdate.exe')
            else
              AssignFile(fOutput, lUpdateLocation.Caption + tfo.Filepath + tfo.Filename);
            Rewrite(fOutput);
            Write(fOutput, xxx);
            CloseFile(fOutput);
            {$I+}

            inc(FUpdateCount);
            inc(FTotalDownloaded, Length(xxx));
          except
            mLog.Lines.Add('FAILED  (W): ' + '\' + tfo.Filepath + tfo.Filename);
            inc(FFailCount);
          end;
        end
        else begin // zero size files
          try
            {$I-}
            AssignFile(fOutput, lUpdateLocation.Caption + tfo.Filepath + tfo.Filename);
            Rewrite(fOutput);
            CloseFile(fOutput);
            {$I+}

            inc(FUpdateCount);
          except
            mLog.Lines.Add('FAILED  (W): ' + '\' + tfo.Filepath + tfo.Filename);
            inc(FFailCount);
          end;
        end;
      end;

      // =======================================================================

      if odd(t) then begin
        Application.ProcessMessages;

        pbMain.Position := t;
        pbMain.Refresh;
      end;
    end;
  end;
end;


end.
