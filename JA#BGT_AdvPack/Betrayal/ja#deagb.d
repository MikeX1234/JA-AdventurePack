BEGIN ~JA#DEAGB~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN JA#DEAGB_1
SAY @25 = @26
IF ~~ THEN REPLY @27 GOTO JA#DEAGB_2
IF ~~ THEN REPLY @28 GOTO JA#DEAGB_3
END

IF ~~ THEN BEGIN JA#DEAGB_2
SAY @29
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("JA#CUDEC")~ EXIT
END

IF ~~ THEN BEGIN JA#DEAGB_3
SAY @30
IF ~~ THEN REPLY @31 GOTO JA#DEAGB_2
IF ~~ THEN REPLY @32 GOTO JA#DEAGB_4
IF ~~ THEN REPLY @33 GOTO JA#DEAGB_4
END

IF ~~ THEN BEGIN JA#DEAGB_4
SAY @34
IF ~~ THEN DO ~SetGlobal("Capture800","GLOBAL",0) EscapeAreaDestroy(90)~ EXIT
END

// END JA#DEAGB