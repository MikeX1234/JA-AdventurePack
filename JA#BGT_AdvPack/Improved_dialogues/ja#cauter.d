REPLACE_STATE_TRIGGER CAUTER 0
~NumTimesTalkedTo(0)~
IF ~True()~

REPLACE_STATE_TRIGGER CAUTER 3
~True()~


REPLACE_ACTION_TEXT CAUTER
~EscapeArea\(Destroy\)?([0-9]*)~
~NoAction()~


ALTER_TRANS CAUTER
BEGIN 3 END
BEGIN 0 END
BEGIN
  "REPLY" ~@5~
END

EXTEND_BOTTOM CAUTER 3
IF ~~ THEN REPLY @0 GOTO JA#CAUTER_1
END


APPEND CAUTER

IF ~~ THEN BEGIN JA#CAUTER_1
SAY @1
IF ~~ THEN REPLY @2 DO ~EscapeAreaDestroy(90)~ EXIT
IF ~~ THEN REPLY @3 GOTO JA#CAUTER_2
END

IF ~~ THEN BEGIN JA#CAUTER_2
SAY @4
IF ~~ THEN DO ~EscapeAreaDestroy(90)~ EXIT
END

END // APPEND CAUTER