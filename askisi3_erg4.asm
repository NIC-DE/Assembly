LXI H,9000H ;ΠΕΡΙΕΧΟΜΕΝΟ ΘΕΣΗΣ ΜΝΗΜΗΣ ΤΟΥ ΠΡΩΤΟΥ ΔΙΑΝΥΣΜΑΤΟΣ


;ΥΠΟΛΟΓΙΣΜΟΣ ΕΜΒΑΔΟΥ 1ΟΥ ΟΡΘΟΓΩΝΙΟΥ 	

Α:
	
LXI H,9000	;ΦΟΡΤΩΝΩ ΤΟ ΜΗΚΟΣ ΤΟΥ ΠΡΩΤΟΥ ΟΡΘΟΓΩΝΙΟΥ
MOV A,M    ;AMΥΝΤΙΚΟΣ ΠΡΟΓΡΑΜΜΑΤΙΣΜΟΣ  
MVI D,0    ;ΦΟΡΤΩΝΩ ΤΟ ΚΑΤΩ ΟΡΙΟ ΔΙΑΣΤΑΣΕΩΝ ΓΙΑ ΕΛΕΝΓΧΟ
MVI C,B5   ;ΦΟΡΤΩΝΩ ΤΟ ΠΑΝΩ ΟΡΙΟ ΤΩΝ ΔΙΑΣΤΑΣΕΩΝ ΓΙΑ ΕΛΕΝΓΧΟ
CMP A,D    ;ΣΥΓΚΡΙΝΩ ΤΟΝ ΑΡΙΘΜΟ ΠΟΥ ΕΧΩ ΕΙΣΑΓΕΙ ΩΣ ΜΗΚΟΣ ΜΕ ΤΟ ΚΑΤΩ ΟΡΙΟ
JNC LAB1   ;AN ΕΙΝΑΙ >= ΠΑΩ ΣΤΟ LAB1
JMP Α
LAB1: 
CMP A,C    ;ΣΥΓΚΡΙΝΩ ΜΕ ΤΟ ΠΑΝΩ ΟΡΙΟ.ΑΝ ΕΙΝΑΙ ΜΙΚΡΟΤΕΡΟΣ ΑΠΟ ΤΟ ΠΑΝΩ ΟΡΙΟ
JC Α
MOV B,A


K:

LXI H,9001   ;OMΟΙΩΣ ΓΙΑ ΤΟ ΠΛΑΤΟΣ ΤΟΥ 1ΟΥ ΟΡΘΟΓΩΝΙΟΥ    
MOV A,M    
MVI D,0
MVI C,B5   
CMP A,D    
JNC LAB2   
JMP K 
LAB2: 
CMP A,C    
JC K 
MOV D,A


LXI H,0000  ;AΡΧΙΚΟΠΟΙΩ ΗL
MVI C,00    ;AΡΧΙΚΟΠΟΙΩ C
MOV E,D     ;METAΦΕΡΩ ΤΟ ΠΕΡΙΕΧΟΜΕΝΟ ΤΟΥ D ΣΤΟΝ Ε

LOOP:   
;ΠΟΛΛΑΠΛΑΣΙΑΣΜΟΣ ΠΛΕΥΡΩΝ
DAD B
DCR E
JNZ LOOP

MOV D,H
PUSH D   ;ΠΡΟΩΘΩ ΣΤΗΝ ΣΤΟΙΒΑ ΤΟ ΓΙΝΟΜΕΝΟ

LXI H,9002H ;ΠΕΡΙΕΧΟΜΕΝΟ ΘΕΣΗΣ ΜΝΗΜΗΣ ΤΟΥ ΔΕΥΤΕΡΟΥ ΔΙΑΝΥΣΜΑΤΟΣ

;ΥΠΟΛΟΓΙΣΜΟΣ ΕΜΒΑΔΟΥ 2ΟΥ ΟΡΘΟΓΩΝΙΟΥ 	

C:
LXI H,9002	  ;ΕΙΣΑΓΩ ΤΟ ΜΗΚΟΣ ΤΟΥ 2ΟΥ ΟΡΘΟΓΩΝΙΟΥ
MOV A,M	
MVI D,0   
MVI C,B5   
CMP A,D    
JNC LAB3   
JMP C
LAB3: 
CMP A,C   
JC C
MOV B,A

D:

LXI H 9003	  ;ΦΟΡΤΩΝΩ ΤΟ ΠΛΑΤΟΣ ΤΟΥ ΔΕΥΤΕΡΟΥ ΟΡΘΟΓΩΝΙΟΥ
MOV A,M    
MVI D,0     
MVI C,B5   
CMP A,D   
JNC LAB4   
JMP D
LAB4: 
CMP A,C     
JC D 
MOV D,A

LXI H,0000 ;AΡΧΙΚΟΠΟΙΗΣΗ HL
MVI C,00C  ;OMOIΩΣ ΓΙΑ C
MOV E,D    ;ΜΕΤΑΦΕΡΩ ΤΑ ΠΕΡΙΕΧΟΜΕΝΑ ΤΟΥ D ΣΤΟΝ Ε 

LOOP5:     
;ΠΟΛΛΑΠΛΑΣΙΑΜΣΟΣ ΠΛΕΥΡΩΝ
DAD B
DCR E
JNZ LOOP5
MOV B,H
PUSH B   ;ΠΡΟΩΘΩ ΣΤΗΝ ΣΤΟΙΒΑ ΤΟ ΓΙΝΟΜΕΝΟ

POP B    ;ANΤΛΩ ΑΠΟ ΤΗΝ ΣΤΟΙΒΑ ΤΟ ΔΕΥΤΕΡΟ ΔΕΔΟΜΕΝΟ
POP D    ;ANTΛΩ ΑΠΟ ΤΗΝ ΣΤΟΙΒΑ ΤΟ ΠΡΩΤΟ ΔΕΔΟΜΕΝΟ

MOV  A,B
ADD D
HLT

