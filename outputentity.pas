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

unit outputentity;

interface

type
  TOutputEntity = class
                  private
                    FDescription   : string;
                    FText          : string;
                    FCategoryID    : integer;
                    FSubCategoryID : integer;
                    FTableID       : integer;

                    FEnabled       : boolean; // rollable, true or false

                    FLastRoll      : integer;

                    FStart         : integer;
                    FEnd           : integer;

                    FReferences    : string;
                  public
                    property Description   : string  read FDescription   write FDescription;
                    property Text          : string  read FText          write FText;
                    property CategoryID    : integer read FCategoryID    write FCategoryID;
                    property SubCategoryID : integer read FSubCategoryID write FSubCategoryID;
                    property TableID       : integer read FTableID       write FTableID;

                    property Enabled       : boolean read FEnabled       write FEnabled; // rollable, true or false

                    property LastRoll      : integer read FLastRoll      write FLastRoll;

                    property Start         : integer read FStart         write FStart;
                    property XEnd          : integer read FEnd           write FEnd;

                    property References    : string  read FReferences    write FReferences;
                  end;

implementation

end.
