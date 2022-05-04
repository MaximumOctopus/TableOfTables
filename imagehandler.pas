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

unit imagehandler;

interface

uses System.Classes, System.SysUtils, Generics.Collections;

type
  TToTImage = class
                FFileName : string;
                FName     : string;
              end;


  ToTImageHandler = class
    class procedure ClearAll;
    class procedure AddImage(aFileName : string);
    class procedure SaveImageList(aFileName : string);
    class function  LoadFromImageList(aFileName : string): boolean;
  end;


var
  GImages : TObjectList<TToTImage>;


implementation


uses dialogs;


class procedure ToTImageHandler.ClearAll;
begin
  GImages.Clear;
end;


class procedure ToTImageHandler.AddImage(aFileName : string);
var
  lImage : TToTImage;

begin
  lImage := TToTImage.Create;
  lImage.FFileName := aFileName;
  lImage.FName     := ExtractFileName(aFileName);

  GImages.Add(lImage);
end;


class procedure ToTImageHandler.SaveImageList(aFileName : string);
var
  t : integer;
  tf : TextFile;

begin
  AssignFile(tf, aFileName);
  Rewrite(tf);

  writeln(tf, '{');

  for t := 0 to GImages.Count - 1 do begin
    writeln(tf, 'i:' + GImages[t].FFileName);
  end;

  writeln(tf, '}');

  Close(tf);
end;


class function ToTImageHandler.LoadFromImageList(aFileName : string): boolean;
var
  lFile : TStringList;
  t : integer;
  lParameter : string;
  lMode : integer;

begin
  Result := True;
  lMode  := -1;

  lFile := TStringList.Create;
  lFile.LoadFromFile(aFileName);

  for t := 0 to lFile.Count - 1 do begin
    if lFile[t] <> '' then begin
      case lFile[t][1] of
        '/', ';' : { commend };
        '{'      : begin
                     lMode := 0;
                   end;
        '}'      : begin
                     if lMode = 0 then begin
                     end
                     else
                       ShowMessage('Unpaired { } in: ' + afilename + #13#13 +
                                   '@ line ' + IntToStr(t + 1));

                     lMode := -1;
                   end;
        'd'      : begin
                     case lMode of
                       0 : begin
                           end;
                     end;
                   end;
        'i'      : begin
                     if lMode = 0 then begin
                       lParameter := Copy(lFile[t], 3, length(lFile[t]) - 2);

                       AddImage(lParameter);
                     end;
                   end;
      end;
    end;
  end;

  FreeAndNil(lFile);
end;


end.
