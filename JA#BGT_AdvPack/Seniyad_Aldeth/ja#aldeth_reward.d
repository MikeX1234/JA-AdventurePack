REPLACE_ACTION_TEXT ALDETH
~GiveItem("POTN09"~
~GiveItem("JA#ALDET"~


APPEND ALDETH

IF WEIGHT #%state7_weight% ~Global("SeniyadXP","GLOBAL",1) Global("HelpAldeth","GLOBAL",1) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%)~ THEN BEGIN JA#ALDETH_X0
SAY @18 = @19
IF ~~ THEN DO ~SetGlobal("AldethMove","GLOBAL",1) GiveItem("JA#ALDET",LastTalkedToBy) Shout(5) AddexperienceParty(600) EraseJournalEntry(%state04_journal%) EscapeArea()~ SOLVED_JOURNAL @20 EXIT
END

END // APPEND ALDETH