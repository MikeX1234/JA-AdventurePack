REPLACE_STATE_TRIGGER NOBL2 0
~NumTimesTalkedTo(0)~
IF ~True()~

REPLACE_ACTION_TEXT NOBL2
~EscapeArea\(Destroy\)?([0-9]*)~
~NoAction()~


APPEND NOBL2

IF ~True()~ THEN BEGIN JA#NOBL2_1
SAY @0
IF ~~ THEN EXIT
END

END // APPEND NOBL2