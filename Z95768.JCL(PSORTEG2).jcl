//SORTEG02 JOB ' ',CLASS=A,MSGLEVEL=(1,1),MSGCLASS=X,NOTIFY=&SYSUID
//DELET100 EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE Z95768.QSAM.AA NONVSAM
  IF LASTCC LE 08 THEN SET MAXCC = 00
//SORT0200 EXEC PGM=SORT
//SYSOUT   DD SYSOUT=*
//SORTIN   DD *
10001954ENES           AYYILDIZ       20010625
10002765ESMANUR        AYYILDIZ       20100705
10003978SU  DEN   UR   OZEKAL         20020403
10009978SERDAR         ORTAC          20020403
//SORTOUT  DD DSN=Z95768.QSAM.AA,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(RECFM=FB,LRECL=60)
//SYSIN    DD *
  SORT FIELDS=(1,7,CH,A)
  OUTREC FIELDS=(1,38,39,8,Y4T,TOJUL=Y4T,15C'0')
//DELET300 EXEC PGM=IEFBR14
//FILE01   DD DSN=Z95768.QSAM.BB,
//            DISP=(MOD,DELETE,DELETE),SPACE=(TRK,0)
//SORT0400 EXEC PGM=SORT
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=Z95768.QSAM.AA,DISP=SHR
//SORTOUT  DD DSN=Z95768.QSAM.BB,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(RECFM=FB,LRECL=47)
//SYSIN    DD *
    SORT FIELDS=COPY
    OUTREC FIELDS=(1,5,ZD,TO=PD,LENGTH=3,
                  6,3,ZD,TO=BI,LENGTH=2,
                  9,30,
                  39,7,ZD,TO=PD,LENGTH=4,
                  46,15,ZD,TO=PD,LENGTH=8)
