BEGIN ~JA#PRISO~

IF ~NumTimesTalkedTo(0)~ THEN JA#PRISO_0
  SAY @0
  IF ~~ THEN REPLY @1 GOTO JA#PRISO_1
  IF ~~ THEN REPLY @2 GOTO JA#PRISO_1
END

IF ~~ THEN JA#PRISO_1
  SAY @3
  IF ~~ THEN REPLY @4 GOTO JA#PRISO_2
  IF ~~ THEN REPLY @5 GOTO JA#PRISO_2
END

IF ~~ THEN JA#PRISO_2
  SAY @6 = @7
  IF ~~ THEN REPLY @8 GOTO JA#PRISO_3
  IF ~~ THEN REPLY @9 GOTO JA#PRISO_6
  IF ~~ THEN REPLY @10 GOTO JA#PRISO_6
  IF ~~ THEN REPLY @11 GOTO JA#PRISO_8
  IF ~Global("JA#HUSAM_MOVE","GLOBAL",1)~ THEN REPLY @12 GOTO JA#PRISO_10
END

IF ~~ THEN JA#PRISO_3
  SAY @13
  IF ~~ THEN REPLY @14 GOTO JA#PRISO_4
END

IF ~~ THEN JA#PRISO_4
  SAY @15
  IF ~~ THEN REPLY @16 GOTO JA#PRISO_5
  IF ~~ THEN REPLY @17 GOTO JA#PRISO_5
  IF ~~ THEN REPLY @18 GOTO JA#PRISO_5
END

IF ~~ THEN JA#PRISO_5
  SAY @19
  IF ~~ THEN REPLY @20 DO ~SetGlobal("JA#SHADOW_CUT","%NBaldursGate_DucalPalace_Cellar%",1)~ GOTO JA#PRISO_7
END

IF ~~ THEN JA#PRISO_6
  SAY @21
  IF ~~ THEN REPLY @14 GOTO JA#PRISO_4
END

IF ~~ THEN JA#PRISO_7
  SAY @22
  IF ~~ THEN JOURNAL @23 EXIT
END

IF ~~ THEN JA#PRISO_8
  SAY @24 = @25
  IF ~~ THEN REPLY @14 GOTO JA#PRISO_9
END

IF ~~ THEN JA#PRISO_9
  SAY @26
  IF ~~ THEN DO ~SetGlobal("JA#SHADOW_CUT","%NBaldursGate_DucalPalace_Cellar%",1)~ JOURNAL @23 EXIT
END

IF ~~ THEN JA#PRISO_10
  SAY @27
  IF ~~ THEN REPLY @14 GOTO JA#PRISO_4
END

IF ~True()~ THEN JA#PRISO_11
  SAY @28
  IF ~ Global("JA#SECRET_OPEN","GLOBAL",1)~ THEN REPLY @29 GOTO JA#PRISO_12
  IF ~!Global("JA#SECRET_OPEN","GLOBAL",1)~ THEN REPLY @30 GOTO JA#PRISO_13
  IF ~~ THEN REPLY @31 EXIT
END

IF ~~ THEN JA#PRISO_12
  SAY @32
  IF ~~ THEN DO ~MoveToPoint([591.344]) DestroySelf()~ EXIT
END

IF ~~ THEN JA#PRISO_13
  SAY @33
  IF ~~ THEN EXIT
END

// END JA#PRISO
