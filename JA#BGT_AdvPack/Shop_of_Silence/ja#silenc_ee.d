REPLACE_TRIGGER_TEXT SILENC
~!Global("Chapter","GLOBAL",%tutu_chapter_7%)~
~GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%)~

REPLACE_ACTION_TEXT SILENC
~CreateCreature("mongo",[^)]+)~
~ActionOverride("Mongo",Enemy())~



ALTER_TRANS SILENC
BEGIN 1 END
BEGIN 0 END
BEGIN
  "REPLY" ~@8~
END

EXTEND_TOP SILENC 1 #1
IF ~~ THEN REPLY @0 DO ~SetGlobal("SeenSanctuary","GLOBAL",1)~ EXIT
END


ALTER_TRANS SILENC
BEGIN 4 5 END
BEGIN 0 END
BEGIN
  "REPLY" ~@10~
  "JOURNAL" ~#%state4_journal%~
END

EXTEND_TOP SILENC 4 5 #1
IF ~~ THEN REPLY @0 JOURNAL #%state4_journal% EXIT
END

EXTEND_TOP SILENC 5 #1
IF ~Global("JA#SILENCE_MASK","LOCALS",1) !InParty("TIAX")~ THEN REPLY @2 DO ~StartStore("JA#MASK1",LastTalkedToBy(Myself))~ EXIT
IF ~Global("JA#SILENCE_MASK","LOCALS",1) InParty("TIAX")~ THEN REPLY @2 GOTO JA#SILENC_3
END


ALTER_TRANS SILENC
BEGIN 7 END
BEGIN 1 END
BEGIN
  "REPLY" ~@9~
END


ALTER_TRANS SILENC
BEGIN 9 END
BEGIN 0 END
BEGIN
  "REPLY" ~@10~
END

EXTEND_TOP SILENC 9 #1
IF ~Global("JA#SILENCE_MASK","LOCALS",1) !InParty("TIAX")~ THEN REPLY @2 DO ~StartStore("JA#MASK1",LastTalkedToBy(Myself))~ EXIT
IF ~Global("JA#SILENCE_MASK","LOCALS",1) InParty("TIAX")~ THEN REPLY @2 GOTO JA#SILENC_3
IF ~~ THEN REPLY @0 EXIT
END