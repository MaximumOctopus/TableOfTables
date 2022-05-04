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

unit debug;

interface

type
  TDebug = record
    Text : string;
  end;


var
  ToTDebug : TDebug;


procedure AddToDebug(s : string);
procedure ClearDebug;


implementation


procedure ClearDebug;
begin
  ToTDebug.Text := '';
end;


procedure AddToDebug(s : string);
begin
  ToTDebug.Text := ToTDebug.Text + '(' + s + ') ';
end;


end.
