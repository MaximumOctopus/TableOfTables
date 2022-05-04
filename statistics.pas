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

unit statistics;

interface


type
  TStatistics = record
                  TableCount     : integer;
                  ShopItemCount  : integer;

                  TotalItemCount : integer;

                  TotalNameCount : integer;

                  TotalNPCItemCount : integer;
                 end;

var
  ToTStatistics : TStatistics;


procedure ClearStatistics;


implementation


procedure ClearStatistics;
begin
  ToTStatistics.TableCount        := 0;
  ToTStatistics.ShopItemCount     := 0;
  ToTStatistics.TotalItemCount    := 0;
  ToTStatistics.TotalNameCount    := 0;
  ToTStatistics.TotalNPCItemCount := 0;
end;


end.
