PROGRAM Hello_World
  VAR
    Start_PB AT %I0.0 : BOOL := FALSE;
    Stop_PB AT %I0.1 : BOOL := FALSE;
    Motor_Starter AT %Q0.0 : BOOL := FALSE;
  END_VAR

  Motor_Starter := NOT(Stop_PB) AND (NOT(Motor_Starter) OR Start_PB);
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : Hello_World;
  END_RESOURCE
END_CONFIGURATION
