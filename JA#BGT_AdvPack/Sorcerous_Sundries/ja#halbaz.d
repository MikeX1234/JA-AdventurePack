ADD_STATE_TRIGGER HALBAZ 1 ~Global("JA#MISC51","LOCALS",0)~


ADD_TRANS_ACTION HALBAZ
BEGIN 7 END
BEGIN END
~SetGlobal("JA#MISC51","LOCALS",1)~

ADD_TRANS_ACTION HALBAZ
BEGIN 2 END
BEGIN END
~SetGlobal("JA#MISC51","LOCALS",100)~

ADD_TRANS_ACTION HALBAZ
BEGIN 4 END
BEGIN END
~SetGlobal("JA#MISC51","LOCALS",0)~


EXTEND_BOTTOM HALBAZ 3
  IF ~~ THEN REPLY @1 DO ~GiveGoldForce(500) TakePartyItem("MISC51")~ EXIT
END


EXTEND_TOP HALBAZ 0 #1
  IF ~PartyHasItem("MISC51") Global("JA#MISC51","LOCALS",1)~ THEN REPLY @0 GOTO 8
END

ALTER_TRANS HALBAZ
BEGIN 8 END
BEGIN 2 END
BEGIN
  "TRIGGER" ~PartyGoldGT(99)~
  "ACTION" ~TakePartyGold(100)~
END

EXTEND_BOTTOM HALBAZ 8
  IF ~~ THEN REPLY @2 DO ~SetGlobal("JA#MISC51","LOCALS",0) GiveGoldForce(500) TakePartyItem("MISC51")~ EXIT
  IF ~~ THEN REPLY @3 DO ~StartStore("Sto0703",LastTalkedToBy(Myself))~ EXIT
END