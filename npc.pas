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

unit npc;

interface


uses
  Generics.Collections, System.Classes,

  names, statistics;


type
  TNPCSub = class
    Name : string;

    FItems : TStringList;
  end;


  TNPC = class
    Description   : string;

    FGender        : TStringList;
    FRace          : TStringList;
    FLA            : TStringList;
    FMA            : TStringList;
    FMark          : TStringList;
    FTalent        : TStringList;
    FMannerism     : TStringList;
    FTrait         : TStringList;
    FBond          : TStringList;
    FFlaw          : TStringList;
    FEmotion       : TStringList;
    FSocialClass   : TStringList;

    FEyeColour     : TStringList;
    FEyeShape      : TStringList;
    FHairColour    : TStringList;
    FAgeGroup      : TStringList;
    FPhysique      : TStringList;
    FHeight        : TStringList;

    FParents       : TStringList;
    FSiblings      : TStringList;
    FCousins       : TStringList;
    FAunts         : TStringList;
    FUncles        : TStringList;
    FChildren      : TStringList;
    FFamily        : TStringList;
    FMaritalStatus : TStringList;

    SubItems       : TObjectList<TNPCSub>;

    LastValue      : array[0..37] of integer;
    LastContent    : array[0..37] of string;
    LockItem       : array[0..37] of boolean;

    function  FindNamedSubItem(const aName : string): integer;
  public
    constructor Create;

    function  GetDescriptionText(aID : integer): string;

    function  GetNPCElement(aID : integer): string;
    function  FromNamedSubItem(aID : integer; const aName : string): string; overload;
    function  FromNamedSubItem(const aName : string): string; overload;
    function  FromNamedSubItemSpecial(aID : integer; const aInput, aTest, aSuffix, aName : string): string;

    procedure SetLock(aID : integer; aLocked : boolean);
    function  FlipLock(aID : integer): boolean;
    function  GetLockStatus(aID : integer): boolean;
    procedure LockAll;
    procedure UnlockAll;
  end;

var
  GNPCs : TObjectList<TNPC>;


function LoadNPCs(aFolder : string): boolean;


const
  NPCGender      = 0;
  NPCRace        = 1;
  NPCLA          = 2;
  NPCMA          = 3;
  NPCTalent      = 4;
  NPCMannerism   = 5;
  NPCTrait       = 6;
  NPCBond        = 7;
  NPCFlaw        = 8;
  NPCEmotion     = 9;
  NPCSocialClass = 10;
  NPCMark        = 11;
  NPCHighAbility = 12;
  NPCLowAbility  = 13;
  NPCIdeal       = 14;
  NPCOccupation  = 15;

  NPCEyeColour   = 20;
  NPCEyeShape    = 21;
  NPCHairColour  = 22;
  NPCAgeGroup    = 23;
  NPCPhysique    = 24;
  NPCHeight      = 25;

  NPCParents     = 30;
  NPCSiblings    = 31;
  NPCCousins     = 32;
  NPCAunts       = 33;
  NPCUncles      = 34;
  NPCChildren    = 35;
  NPCFamily      = 36;
  NPCMarital     = 37;


implementation

uses
  System.SysUtils, System.IOUtils, dialogs,

  settings, utility, utility_content;


function AddSubItems(var aNPC : TNPC; aFileName : string): boolean;
var
  lNPCSub : TNPCSub;
  lFile : TStringList;
  t : integer;
  lMode : integer;

begin
  Result := True;

  lMode := -1;

  lFile := TStringList.Create;
  lFile.LoadFromFile(aFileName);

  for t := 0 to lFile.Count - 1 do begin
    if lFile[t] <> '' then begin
      if (lFile[t][1] = '/') or (lFile[t][1] = ';') then begin
        // comment, do nothing
      end
      else begin
        case lFile[t][1] of
          '{' : begin
                  lNPCSub := TNPCSub.Create;
                  lNPCSub.FItems :=  TStringList.Create;

                  lMode := 0;
                end;
          '}' : begin
                  if lMode = 0 then begin
                    aNPC.SubItems.Add(lNPCSub);

                    inc(ToTStatistics.TotalNPCItemCount, lNPCSub.FItems.Count);
                  end
                  else
                    ShowMessage('Unpaired { } in: ' + afilename + #13#13 +
                                '@ line ' + IntToStr(t + 1));

                  lMode := -1;
                end;
          'd' : begin
                  case lMode of
                    0 : begin
                          lNPCSub.Name := UpperCase(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                  else
                    ShowMessage('s: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
          'i' : begin
                  case lMode of
                    0 : begin
                          lNPCSub.FItems.Add(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                  else
                    ShowMessage('i: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
        else
          ShowMessage('Invalid identifier "' + lFile[t][1] + '" found in location: ' + #13#13 +
                      aFileName + #13#13 +
                      '@ line ' + IntToStr(t + 1));
        end;
      end;
    end;
  end;

  FreeAndNil(lFile);
end;


function AddComponent(var aList : TStringList; aFileName : string): boolean;
var
  lFile : TStringList;
  t : integer;
  lMode : integer;

begin
  Result := True;

  aList := TStringList.Create;

  aList.Clear;

  lMode := -1;

  lFile := TStringList.Create;
  lFile.LoadFromFile(aFileName);

  for t := 0 to lFile.Count - 1 do begin
    if lFile[t] <> '' then begin
      if (lFile[t][1] = '/') or (lFile[t][1] = ';') then begin
        // comment, do nothing
      end
      else begin
        case lFile[t][1] of
          '{' : begin
                  lMode := 0;
                end;
          '}' : begin
                  lMode := -1;
                end;
          'i' : begin
                  case lMode of
                    0 : begin
                          aList.Add(Copy(lFile[t], 3, length(lFile[t]) - 2));
                        end;
                  else
                    ShowMessage('i: identifier found in invalid location: ' + aFileName + #13#13 +
                                '@ line ' + IntToStr(t + 1));
                  end;
                end;
        else
          ShowMessage('Invalid identifier "' + lFile[t][1] + '" found in location: ' + #13#13 +
                      aFileName + #13#13 +
                      '@ line ' + IntToStr(t + 1));
        end;
      end;
    end;
  end;

  FreeAndNil(lFile);
end;


function PopulateNPC(aFolder, aShopName : string): boolean;
var
  lNPC : TNPC;

begin
  Result := True;

  lNPC := TNPC.Create;
  lNPC.Description   := 'Default';
  lNPC.SubItems      := TObjectList<TNPCSub>.Create;

  AddComponent(lNPC.FGender       , aFolder + 'gender.txt');
  AddComponent(lNPC.FRace         , aFolder + 'race.txt');
  AddComponent(lNPC.FLA           , aFolder + 'lawfulalignment.txt');
  AddComponent(lNPC.FMA           , aFolder + 'moralalignment.txt');
  AddComponent(lNPC.FMark         , aFolder + 'mark.txt');
  AddComponent(lNPC.FTalent       , aFolder + 'talent.txt');
  AddComponent(lNPC.FMannerism    , aFolder + 'mannerism.txt');
  AddComponent(lNPC.FTrait        , aFolder + 'trait.txt');
  AddComponent(lNPC.FBond         , aFolder + 'bond.txt');
  AddComponent(lNPC.FFlaw         , aFolder + 'flaw.txt');
  AddComponent(lNPC.FEmotion      , aFolder + 'emotion.txt');
  AddComponent(lNPC.FSocialClass  , aFolder + 'socialclass.txt');

  AddSubItems(lNPC, aFolder + 'lowability.txt');
  AddSubItems(lNPC, aFolder + 'highability.txt');
  AddSubItems(lNPC, aFolder + 'ability_descriptions.txt');
  AddSubItems(lNPC, aFolder + 'ideal.txt');
  AddSubItems(lNPC, aFolder + 'occupation.txt');
  AddSubItems(lNPC, aFolder + 'alignment_traits.txt');

  AddComponent(lNPC.FEyeColour    , aFolder + 'eyecolour.txt');
  AddComponent(lNPC.FEyeShape     , aFolder + 'eyeshape.txt');
  AddComponent(lNPC.FHairColour   , aFolder + 'haircolour.txt');
  AddComponent(lNPC.FAgeGroup     , aFolder + 'agegroup.txt');
  AddComponent(lNPC.FPhysique     , aFolder + 'physique.txt');
  AddComponent(lNPC.FHeight       , aFolder + 'height.txt');

  AddComponent(lNPC.FParents      , aFolder + 'parents.txt');
  AddComponent(lNPC.FSiblings     , aFolder + 'siblings.txt');
  AddComponent(lNPC.FCousins      , aFolder + 'cousins.txt');
  AddComponent(lNPC.FAunts        , aFolder + 'aunts.txt');
  AddComponent(lNPC.FUncles       , aFolder + 'uncles.txt');
  AddComponent(lNPC.FChildren     , aFolder + 'children.txt');
  AddComponent(lNPC.FFamily       , aFolder + 'family.txt');
  AddComponent(lNPC.FMaritalStatus, aFolder + 'maritalstatus.txt');

  inc(ToTStatistics.TotalNPCItemCount, lNPC.FGender.Count +     lNPC.FRace.Count +
                                       lNPC.FLA.Count +         lNPC.FMA.Count +
                                       lNPC.FMark.Count +       lNPC.FTalent.Count +
                                       lNPC.FMannerism.Count +  lNPC.FTrait.Count +
                                       lNPC.FBond.Count +       lNPC.FFlaw.Count +
                                       lNPC.FEmotion.Count +    lNPC.FSocialClass.Count +
                                       lNPC.FEyeColour.Count +  lNPC.FEyeShape.Count +
                                       lNPC.FHairColour.Count + lNPC.FAgeGroup.Count +
                                       lNPC.FPhysique.Count +   lNPC.FHeight.Count +
                                       lNPC.FParents.Count +    lNPC.FSiblings.Count +
                                       lNPC.FCousins.Count +    lNPC.FAunts.Count +
                                       lNPC.FUncles.Count +     lNPC.FChildren.Count +
                                       lNPC.FFamily.Count +     lNPC.FMaritalStatus.Count);

  GNPCs.Add(lNPC);
end;


function LoadNPCs(aFolder : string): boolean;
var
  searchResult : TSearchRec;

begin
  Result := True;

  GNPCs.Clear;

  // populate the list of available (top level) categories
  if Findfirst(aFolder + '*.*', faDirectory, searchResult) = 0 then
  begin
    repeat
      if (searchResult.Name <> '.') and
         (searchResult.Name <> '..') then begin

        if (searchResult.Attr and faDirectory) = faDirectory then begin
          PopulateNPC(aFolder + searchResult.Name + '\', ToTUtility.ReplaceTokens(searchResult.Name));
        end;
      end;
    until FindNext(searchResult) <> 0;

    FindClose(searchResult);
  end;
end;


// =============================================================================
// =============================================================================


constructor TNPC.Create;
var
  t : integer;

begin
  inherited;

  for t := 0 to 37 do begin
    LastValue[t]   := -1;
    LastContent[t] := '';

    LockItem[t]    := False;
  end;
end;


function TNPC.GetDescriptionText(aID : integer): string;

  function Insert(aP : integer): string;
  begin
    Result := '$' + LowerCase(LastContent[aP]) + '$';
  end;

begin
  Result := '';

  case aID of
    0 : begin
          Result := 'You see a ' + Insert(NPCPhysique) + ' ' + Insert(NPCGender) + ' ' + Insert(NPCRace) +
                    ' with a ' + Insert(NPCMark) + ' wearing the clothes of a ' + Insert(NPCOccupation) + '. This character looks to be in their ' + Insert(NPCAgeGroup) +
                    ', has ' + Insert(NPCHairColour) + ' hair, and is ' + Insert(NPCHeight) + ' for a ' + Insert(NPCGender) + ' ' + Insert(NPCRace) + '.' +
                    ' You can see ' + Insert(NPCEmotion) + ' in their ' + Insert(NPCEyeColour) + ', ' + Insert(NPCEyeShape) + ' eyes.';
        end;
    1 : begin
          Result := '$' + GetName('Fantasy', '') + '$ has a ' + Insert(NPCLA) + '-' + Insert(NPCMA) + ' alignment and is $' + FromNamedSubItem('ha_description_' + LowerCase(LastContent[NPCHighAbility])) + '$ yet $' +
                    LowerCase(FromNamedSubItem('la_description_' + LastContent[NPCLowAbility])) + '$' +
                    '. Impressively, this character is ' + Insert(NPCTalent) + '. They often ' + Insert(NPCMannerism) + ' and has a ' +
                    Insert(NPCTrait) + ' way of speaking. This character is always ' + Insert(NPCBond) + ' and values ' + Insert(NPCIdeal) + ' more than anything, but is troubled by their ' + Insert(NPCFlaw) + '. ' +
                    '$' + FromNamedSubItem('at_' + LastContent[NPCLA] + '_' + LastContent[NPCMA]) + '$.';
        end;
    2 : begin
          Result := 'They have a ' + Insert(NPCFamily) + ' with their family. This character is ' + Insert(NPCMarital) + ' with ' + Insert(NPCChildren) +
                    '. The rest of their family consists of ' + Insert(NPCSiblings) + ', ' + Insert(NPCCousins) + ', ' + Insert(NPCAunts) + ', ' + Insert(NPCUncles) + ', and ' + Insert(NPCparents) + '.';
        end;
  end;
end;


function TNPC.FindNamedSubItem(const aName : string): integer;
var
  t : integer;

begin
  Result := -1;

  for t := 0 to SubItems.Count - 1 do begin
    if SubItems[t].Name = aName then begin
      Result := t;

      Exit;
    end;
  end;
end;


function TNPC.GetNPCElement(aID : integer): string;
var
  lRandom : integer;

begin
  if not(LockItem[aID]) then begin
    case aID of
      NPCGender      : lRandom := Random(FGender.Count);
      NPCRace        : lRandom := Random(FRace.Count);
      NPCLA          : lRandom := Random(FLA.Count);
      NPCMA          : lRandom := Random(FMA.Count);
      NPCTalent      : lRandom := Random(FTalent.Count);
      NPCMannerism   : lRandom := Random(FMannerism.Count);
      NPCTrait       : lRandom := Random(FTrait.Count);
      NPCBond        : lRandom := Random(FBond.Count);
      NPCFlaw        : lRandom := Random(FFlaw.Count);
      NPCEmotion     : lRandom := Random(FEmotion.Count);
      NPCSocialClass : lRandom := Random(FSocialClass.Count);
      NPCMark        : lRandom := Random(FMark.Count);

      NPCEyeColour   : lRandom := Random(FEyeColour.Count);
      NPCEyeShape    : lRandom := Random(FEyeShape.Count);
      NPCHairColour  : lRandom := Random(FHairColour.Count);
      NPCAgeGroup    : lRandom := Random(FAgeGroup.Count);
      NPCPhysique    : lRandom := Random(FPhysique.Count);
      NPCHeight      : lRandom := Random(FHeight.Count);

      NPCParents     : lRandom := Random(FParents.Count);
      NPCSiblings    : lRandom := Random(FSiblings.Count);
      NPCCousins     : lRandom := Random(FCousins.Count);
      NPCAunts       : lRandom := Random(FAunts.Count);
      NPCUncles      : lRandom := Random(FUncles.Count);
      NPCChildren    : lRandom := Random(FChildren.Count);
      NPCFamily      : lRandom := Random(FFamily.Count);
      NPCMarital     : lRandom := Random(FMaritalStatus.Count);
    else
     lRandom := 0;
    end;

    case aID of
      NPCGender      : Result := FGender[lRandom];
      NPCRace        : Result := FRace[lRandom];
      NPCLA          : Result := FLA[lRandom];
      NPCMA          : Result := FMA[lRandom];
      NPCTalent      : Result := FTalent[lRandom];
      NPCMannerism   : Result := FMannerism[lRandom];
      NPCTrait       : Result := FTrait[lRandom];
      NPCBond        : Result := FBond[lRandom];
      NPCFlaw        : Result := FFlaw[lRandom];
      NPCEmotion     : Result := FEmotion[lRandom];
      NPCSocialClass : Result := FSocialClass[lRandom];
      NPCMark        : Result := FMark[lRandom];

      NPCEyeColour   : Result := FEyeColour[lRandom];
      NPCEyeShape    : Result := FEyeShape[lRandom];
      NPCHairColour  : Result := FHairColour[lRandom];
      NPCAgeGroup    : Result := FAgeGroup[lRandom];
      NPCPhysique    : Result := FPhysique[lRandom];
      NPCHeight      : Result := FHeight[lRandom];

      NPCParents     : Result := FParents[lRandom];
      NPCSiblings    : Result := FSiblings[lRandom];
      NPCCousins     : Result := FCousins[lRandom];
      NPCAunts       : Result := FAunts[lRandom];
      NPCUncles      : Result := FUncles[lRandom];
      NPCChildren    : Result := FChildren[lRandom];
      NPCFamily      : Result := FFamily[lRandom];
      NPCMarital     : Result := FMaritalStatus[lRandom];
    end;

    LastValue[aID]   := lRandom;
    LastContent[aID] := Result;
  end
  else
    Result := LastContent[aID];
end;


function TNPC.FromNamedSubItem(aID : integer; const aName : string): string;
var
  lSubItem, lCount : integer;

begin
  Result := '';

  if not(LockItem[aID]) then begin
    lSubItem := FindNamedSubItem(aName);


    if lSubItem <> -1 then begin
     lCount := SubItems[lSubItem].FItems.Count;

      Result := SubItems[lSubItem].FItems[Random(lCount)];
    end;

    LastContent[aID] := Result;
  end
  else
    Result := LastContent[aID];
end;


function TNPC.FromNamedSubItem(const aName : string): string;
var
  lSubItem, lCount : integer;

begin
  Result := '';

  lSubItem := FindNamedSubItem(UpperCase(aName));

  if lSubItem <> -1 then begin
    lCount := SubItems[lSubItem].FItems.Count;

    Result := SubItems[lSubItem].FItems[Random(lCount)];
  end;
end;


// if ainput = atest then use
//   aName_aSuffix as search parameter
// otherwise use
//   aName
// bit of a hack for "occupations", though sure it will be useful for others
// in future :)
function TNPC.FromNamedSubItemSpecial(aID : integer; const aInput, aTest, aSuffix, aName : string): string;
var
  lSubItem, lCount : integer;
  lSearch : string;

begin
  Result := '';

  if UpperCase(aInput) = UpperCase(aTest) then
    lSearch := aName + '_' + aSuffix
  else
    lSearch := aName;

  lSubItem := FindNamedSubItem(UpperCase(lSearch));


  if lSubItem <> -1 then begin
    lCount := SubItems[lSubItem].FItems.Count;

    Result := SubItems[lSubItem].FItems[Random(lCount)];
  end;

  LastContent[aID] := Result;
end;


procedure TNPC.SetLock(aID : integer; aLocked : boolean);
begin
  LockItem[aID] := aLocked;
end;


function TNPC.FlipLock(aID : integer): boolean;
begin
  LockItem[aID] := not(LockItem[aID]);

  Result := LockItem[aID];
end;


function  TNPC.GetLockStatus(aID : integer): boolean;
begin
  Result := LockItem[aID];
end;


procedure TNPC.LockAll;
var
  t : integer;

begin
  for t := 0 to 37 do
    LockItem[t] := True;
end;


procedure TNPC.UnlockAll;
var
  t : integer;

begin
  for t := 0 to 37 do
    LockItem[t] := False;
end;


end.
