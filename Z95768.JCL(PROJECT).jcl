//PROJECT JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//DELET100 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE Z95768.QSAM.OUT NONVSAM
  IF LASTCC LE 08 THEN SET MAXCC = 00
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(PROJECT),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(PROJECT),DISP=SHR
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//RUN     EXEC PGM=PROJECT
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//INPFILE   DD DSN=&SYSUID..QSAM.INP,DISP=SHR
//IDXFILE   DD DSN=&SYSUID..VSAM.AA,DISP=SHR
//OUTFILE   DD DSN=&SYSUID..QSAM.OUT,
//             DISP=(NEW,CATLG,DELETE),
//             UNIT=SYSDA,
//             SPACE=(TRK,(10,10),RLSE),
//             DCB=(RECFM=FB,LRECL=101,BLKSIZE=0)
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
