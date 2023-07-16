       IDENTIFICATION DIVISION.
       PROGRAM-ID. PBEG006.
       AUTHOR.     ENES AYYILDIZ.
      *----
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OUT-FILE ASSIGN TO OUTFILE
                           STATUS CHECK-FILE-OUTPUT.
           SELECT INP-FILE ASSIGN TO INPFILE
                           STATUS CHECK-FILE-INPUT.
           SELECT IDX-FILE ASSIGN TO IDXFILE
                           ORGANIZATION IS INDEXED
                           ACCESS RANDOM
                           RECORD KEY IDX-FILE-KEY
                           STATUS CHECK-FILE-INDEX.
       DATA DIVISION.
       FILE SECTION.
       FD  OUT-FILE RECORDING MODE F.
         01  OUT-REC.
           05 OUT-PRO-TYPE           PIC 9(01).
           05 OUT-ID                 PIC 9(05).
           05 OUT-DVZ                PIC 9(03).
           05 OUT-RETURN-CODE        PIC 9(02).
           05 OUT-DESC               PIC X(30).
           05 OUT-FNAME-FROM         PIC X(15).
           05 OUT-FNAME-TO           PIC X(15).
           05 OUT-LNAME-FROM         PIC X(15).
           05 OUT-LNAME-TO           PIC X(15).
       FD  INP-FILE RECORDING MODE F.
         01  INP-REC.
           05 INP-ISLEM-TIPI         PIC X(01).
           05 INP-ID                 PIC X(05).
           05 INP-DOVIZ              PIC X(03).
       FD  IDX-FILE.
         01 IDX-FILE-MEMBERS.
           05 IDX-FILE-KEY.
             10 IDX-FILE-ID          PIC S9(5)  COMP-3.
             10 IDX-FILE-DOVIZ       PIC S9(3)  COMP.
           05 IDX-FILE-NAME          PIC X(15).
           05 IDX-FILE-SURNAME       PIC X(15).
           05 IDX-FILE-DATE          PIC S9(7)  COMP-3.
           05 IDX-FILE-BALANCE       PIC S9(15) COMP-3.
       WORKING-STORAGE SECTION.
       01  WS-WORK-AREA.
           05 WS-PBEG-IDX            PIC X(08)    VALUE 'PBEGIDX'.
           05 CHECK-FILE-OUTPUT      PIC 9(02).
              88 OUTPUT-FILE-SUCCESS              VALUE 00 97.
           05 CHECK-FILE-INPUT       PIC 9(02).
              88 INPUT-FILE-EOF                   VALUE 10.
              88 INPUT-FILE-SUCCESS               VALUE 00 97.
           05 CHECK-FILE-INDEX       PIC 9(2).
              88 INDEX-FILE-SUCCESS               VALUE 00 97.
           05 WS-ISLEM-TIPI          PIC 9(01).
              88 WS-ISLEM-TIPI-VALID              VALUE 1 2 THRU 3 5.
           05 WS-SUB-AREA.
              07 WS-SUB-FUNC         PIC 9(01).
                 88 WS-FUNC-OPEN                  VALUE 1.
                 88 WS-FUNC-UPDATE                VALUE 3.
                 88 WS-FUNC-CLOSE                 VALUE 9.
              07 WS-SUB-ID           PIC 9(05).
              07 WS-TEMP-NAME        PIC X(15).
              07 WS-SUB-DVZ          PIC 9(03).
              07 WS-SUB-RC           PIC 9(02).
              07 WS-SUB-DATA         PIC X(60).
           03  WS-STRING             PIC X(15).
           03  WS-WORK-STRING        PIC X(15).
           03  WS-SUB                PIC 9(08)   COMP.
           03  WS-SURNAME            PIC X(15).
       PROCEDURE DIVISION.
       0001-MAIN-PROCESS.
           PERFORM H100-OPEN-FILES.
           PERFORM H300-MOVE UNTIL INPUT-FILE-EOF.
           PERFORM H999-EXIT.
       0001-END. EXIT.
       H100-OPEN-FILES.
           OPEN INPUT  INP-FILE.
           OPEN OUTPUT OUT-FILE.
           OPEN I-O  IDX-FILE.
           PERFORM H110-FILE-CONTROL.
           READ INP-FILE.
       H100-END. EXIT.
      *-----
       H110-FILE-CONTROL.
           IF (CHECK-FILE-INPUT NOT = 97) AND (CHECK-FILE-INPUT NOT = 0)
              DISPLAY "FILE NOT OPENED. ERROR CODE:" CHECK-FILE-INPUT
              PERFORM H999-EXIT
           END-IF.
           IF (CHECK-FILE-OUTPUT NOT = 97) AND
      -       (CHECK-FILE-OUTPUT NOT = 0)
              DISPLAY "FILE NOT OPENED. ERROR CODE:" CHECK-FILE-OUTPUT
              PERFORM H999-EXIT
           END-IF.
           IF (CHECK-FILE-INDEX NOT = 97) AND (CHECK-FILE-INDEX NOT = 0)
              DISPLAY "FILE NOT OPENED. ERROR CODE:" CHECK-FILE-INDEX
              PERFORM H999-EXIT
           END-IF.
       H110-END. EXIT.

       H300-MOVE.
           COMPUTE WS-ISLEM-TIPI = FUNCTION NUMVAL(INP-ISLEM-TIPI)


           IF WS-ISLEM-TIPI-VALID
                 EVALUATE WS-ISLEM-TIPI
                     WHEN 1
                        PERFORM READ-RECORD
                     WHEN 2
                       PERFORM UPDATE-RECORD
                     WHEN 3
                       PERFORM ADD-RECORD
                     WHEN 5
                       PERFORM DELETE-RECORD
                 END-EVALUATE
           ELSE
              DISPLAY 'INVALID ISLEM TIPI' INP-ISLEM-TIPI
           END-IF.


           READ INP-FILE
           AT END SET INPUT-FILE-EOF TO TRUE.

           IF NOT INPUT-FILE-EOF
              PERFORM H300-MOVE
           END-IF.
       H300-END. EXIT.
      *-----
       WRONG-RECORD.
           DISPLAY 'WRONG RECORD' IDX-FILE-KEY.
       WRONG-END. EXIT.
      *---

       UPDATE-RECORD.
           COMPUTE IDX-FILE-ID=FUNCTION NUMVAL (INP-ID)
           COMPUTE IDX-FILE-DOVIZ=FUNCTION NUMVAL (INP-DOVIZ)
           READ IDX-FILE KEY IS IDX-FILE-KEY
           INVALID KEY MOVE 'KAYIT BULUNAMADI' TO OUT-DESC
           NOT INVALID KEY MOVE 'KAYIT BULUNDU' TO OUT-DESC.
           MOVE WS-ISLEM-TIPI TO OUT-PRO-TYPE
           MOVE INP-ID      TO OUT-ID
           MOVE INP-DOVIZ      TO OUT-DVZ
           MOVE IDX-FILE-SURNAME TO WS-SURNAME
           MOVE IDX-FILE-NAME TO OUT-FNAME-FROM
           MOVE IDX-FILE-SURNAME TO OUT-LNAME-FROM

           MOVE IDX-FILE-NAME TO WS-STRING.
           MOVE ZERO TO WS-SUB.
           MOVE 1 TO TALLY.
           MOVE SPACES TO WS-WORK-STRING.

           PERFORM UNTIL TALLY > LENGTH OF WS-STRING
              IF WS-STRING (TALLY:1) NOT = SPACE
                 ADD 1 TO WS-SUB
                 MOVE WS-STRING (TALLY:1) TO WS-WORK-STRING (WS-SUB:1)
              END-IF
                 ADD 1 TO TALLY
           END-PERFORM.
           INSPECT WS-SURNAME REPLACING ALL "E" BY "I".
           INSPECT WS-SURNAME REPLACING ALL "A" BY "E".
           DISPLAY WS-SURNAME.
           MOVE WS-WORK-STRING TO WS-STRING.
           MOVE WS-SURNAME TO IDX-FILE-SURNAME.
           MOVE WS-STRING TO IDX-FILE-NAME.
           MOVE IDX-FILE-NAME TO OUT-FNAME-TO
           MOVE IDX-FILE-SURNAME TO OUT-LNAME-TO
           DISPLAY WS-STRING.
           REWRITE IDX-FILE-MEMBERS.
           WRITE OUT-REC.
       UPDATE-END. EXIT.

       READ-RECORD.
           COMPUTE IDX-FILE-ID=FUNCTION NUMVAL (INP-ID)
           COMPUTE IDX-FILE-DOVIZ=FUNCTION NUMVAL (INP-DOVIZ)
           READ IDX-FILE KEY IS IDX-FILE-KEY
           INVALID KEY MOVE 'KAYIT BULUNAMADI' TO OUT-DESC
           NOT INVALID KEY MOVE 'KAYIT BULUNDU' TO OUT-DESC.
           MOVE WS-ISLEM-TIPI TO OUT-PRO-TYPE
           MOVE INP-ID      TO OUT-ID
           MOVE IDX-FILE-NAME TO OUT-FNAME-TO
           MOVE IDX-FILE-SURNAME TO OUT-LNAME-TO
           WRITE OUT-REC.
       READ-END. EXIT.

       DELETE-RECORD.
           COMPUTE IDX-FILE-ID = FUNCTION NUMVAL(INP-ID)
           COMPUTE IDX-FILE-DOVIZ = FUNCTION NUMVAL(INP-DOVIZ)
           READ IDX-FILE KEY IS IDX-FILE-KEY
               INVALID KEY
                   MOVE 'KAYIT BULUNAMADI' TO OUT-DESC
               NOT INVALID KEY
                   DELETE IDX-FILE
                   MOVE 'KAYIT SILINDI' TO OUT-DESC.
           MOVE IDX-FILE-NAME TO OUT-FNAME-FROM
           MOVE IDX-FILE-SURNAME TO OUT-LNAME-FROM

           MOVE WS-ISLEM-TIPI TO OUT-PRO-TYPE
           MOVE INP-ID TO OUT-ID
           WRITE OUT-REC.

       DELETE-END. EXIT.

       ADD-RECORD.
           COMPUTE IDX-FILE-ID=FUNCTION NUMVAL (INP-ID)
           COMPUTE IDX-FILE-DOVIZ=FUNCTION NUMVAL (INP-DOVIZ)
           MOVE 'ENES' TO WS-STRING.
           MOVE 'AYYILDIZ' TO WS-WORK-STRING.
           MOVE WS-WORK-STRING TO IDX-FILE-NAME.
           MOVE WS-STRING TO IDX-FILE-SURNAME.
           MOVE '20230715' TO IDX-FILE-DATE.
           MOVE 0 TO IDX-FILE-BALANCE.

           MOVE WS-ISLEM-TIPI TO OUT-PRO-TYPE
           MOVE INP-ID TO OUT-ID
           MOVE INP-DOVIZ TO OUT-DVZ
           MOVE IDX-FILE-NAME TO OUT-FNAME-FROM
           MOVE IDX-FILE-SURNAME TO OUT-LNAME-FROM
           MOVE 'KAYIT EKLENDI' TO OUT-DESC.
           

           WRITE OUT-REC.
           WRITE IDX-FILE-MEMBERS.
       ADD-END. EXIT.


       H999-EXIT.
           CLOSE INP-FILE.
           CLOSE OUT-FILE.
           CLOSE IDX-FILE.
           STOP RUN.
       H999-END. EXIT.
      *-----
