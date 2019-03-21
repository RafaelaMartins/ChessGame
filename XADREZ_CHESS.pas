Program XADREZ_CHESS ;
 USES CRT;
				TYPE
						JOGADOR= RECORD

						PLAYER:INTEGER;
						PECA:STRING[3];
						I:INTEGER;
						J:INTEGER;
						L:INTEGER;
						C:INTEGER;
						SIMBOLO:STRING;
						END;
						VAR VET:ARRAY [1..8,1..8] OF JOGADOR;
						I,X,jogador1,jogador2,J,L,C,jogada:INTEGER;
                                                XEQUE:CHAR;




 PROCEDURE XEQUE_MATE;
 BEGIN
 WRITELN('DIGITE A TECLA S CASOS NAO SEJE XEQUE MATE,OU N PARA XEQUE MATE ');
 READLN(XEQUE);
 IF XEQUE='N' THEN BEGIN
 WRITELN('XEQUE-MATE');
 WRITELN('DIGITE UMA TECLA');
 READKEY;
 EXIT;
 END;


end;




PROCEDURE REI_ANDA;
BEGIN

IF ((VET[L,C].PECA='K1') or (vet[L,C].PECA='K2' ))THEN BEGIN
                IF ((VET[L,C].PLAYER)=1) THEN BEGIN
                        IF (((I=(L-1)) AND (J=C))OR ((I=(L-1))AND (J=(C+1)))OR ((I=(L-1))AND (J=(C-1))) ) THEN BEGIN

	 VET[I,J].PECA:='K1';
	 VET[I,J].PLAYER:=1;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 vet[i,j].SIMBOLO:=#12;
	 end;
	 end
	 else begin
	                IF (((I=(L+1)) AND (J=C ))OR ((I=(L+1))AND (J=(C+1))) OR ((I=(L+1))AND (J=(C-1))) ) THEN BEGIN

	 VET[I,J].PECA:='K1';
	 VET[I,J].PLAYER:=2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 vet[i,j].SIMBOLO:=#12;
END;
end;
end;
end;



PROCEDURE RAINHA_COME;
BEGIN
IF (VET[L,C].PECA='Q1') THEN BEGIN

 IF (((I<=8) AND (J=C)) OR (((I=L) AND (J<=8))) or (((I=(L+1))) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN

	IF ((VET[I,J].SIMBOLO <> '_') and (VET[I,J].SIMBOLO <> #12)) THEN BEGIN
	 VET[I,J].SIMBOLO:=#11;
	 VET[I,J].PECA:='Q1';
	 VET[I,J].PLAYER:=1;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 END;
	 END;
 IF  ((VET[I,J].SIMBOLO = #12) AND (VET[I,J].PLAYER = 2))
 then BEGIN writeln('XEQUE');
  XEQUE_MATE;
  END;
 end;


IF  (VET[L,C].PECA='Q2')  THEN BEGIN
IF (((I<=8) AND (J=C)) OR ((I=L) AND (J<=8)) AND (I=(L+1)) AND (J=(C+1)) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN

	IF VET[I,J].SIMBOLO <> '_' THEN BEGIN
	 VET[I,J].SIMBOLO:=#11;
	 VET[I,J].PECA:='Q2';
	 VET[I,J].PLAYER:=2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 END;
	 END;
END;
IF  ((VET[I,J].SIMBOLO = #12) AND (VET[I,J].PLAYER = 1))
 then BEGIN writeln('XEQUE');
 XEQUE_MATE;
  END;
END;




PROCEDURE RAINHA_ANDA;
BEGIN
IF ((VET[L,C].PECA='Q1') OR (VET[L,C].PECA='Q2')) THEN BEGIN
IF (((I<=8) AND (J=C)) OR ((I=L) AND (J<=8)) OR (I=(L+1)) AND (J=(C+1)) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN

	IF VET[I,J].SIMBOLO = '_' THEN BEGIN
	 VET[I,J].SIMBOLO:=#11;
	 VET[I,J].PECA:=VET[L,C].PECA;
	 VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 END;

END
ELSE RAINHA_COME;
END;
END;


PROCEDURE CAVALO_INICIO;
BEGIN
IF VET[L,C].PLAYER=1 THEN BEGIN
 IF VET[L,C].PECA='C1' THEN BEGIN
  IF (((I=6) AND (J=1))OR((I=6) AND (J=3) ))  THEN
	BEGIN
	  VET[I,J].SIMBOLO:=#55;
	  VET[I,J].PECA:='C1';
	  VET[I,J].PLAYER:=1   ;
	  VET[L,C].SIMBOLO:='_';
	  VET[L,C].PECA:='';
	  VET[L,C].PLAYER:=0;
	END;
	END
		ELSE BEGIN
		IF(VET[L,C].PECA='C2')THEN BEGIN
      IF (((I=6) AND (J=8))OR ((I=6) AND (J=6)) ) THEN BEGIN
       VET[I,J].SIMBOLO:=#55;
       VET[I,J].PECA:='C2';
       VET[I,J].PLAYER:=1;
	     VET[L,C].SIMBOLO:='_';
	     VET[L,C].PECA:='';
	     VET[L,C].PLAYER:=0;
	     END;
		   END;
		   END;
		   END;
		 IF VET[L,C].PLAYER=2 THEN BEGIN
		 IF VET[L,C].PECA='C3' THEN BEGIN
  IF (((I=3) AND (J=1))OR((I=3) AND (J=3) ))  THEN
	BEGIN
	  VET[I,J].SIMBOLO:=#55;
	  VET[I,J].PECA:='C3';
	  VET[I,J].PLAYER:=2 ;
	  VET[L,C].SIMBOLO:='_';
	  VET[L,C].PECA:='';
	  VET[L,C].PLAYER:=0;
	END;
	END
		ELSE BEGIN
		IF(VET[L,C].PECA='C4')THEN BEGIN
      IF (((I=3) AND (J=8))OR ((I=3) AND (J=6)) ) THEN BEGIN
       VET[I,J].SIMBOLO:=#55;
       VET[I,J].PECA:='C4';
       VET[I,J].PLAYER:=2;
	     VET[L,C].SIMBOLO:='_';
	     VET[L,C].PECA:='';
	     VET[L,C].PLAYER:=0;
	     END;
		   END;
		   END;
		    END;

END;

PROCEDURE PEAO_INICIO;
BEGIN

  IF ((VET[L,C].PECA)='P9')  THEN
 	BEGIN
	 	IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= 'P9';
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;
	 IF ((VET[L,C].PECA)='P10') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= 'P10';
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;
   IF ((VET[L,C].PECA)='P11') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= 'P11';
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;
	IF ((VET[L,C].PECA)='P12') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= 'P12';
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;

		 IF ((VET[L,C].PECA)='P13') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= VET[L,C].PECA;
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;

		 END;

   IF ((VET[L,C].PECA)='P14') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= VET[L,C].PECA;
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;
		IF ((VET[L,C].PECA)='P15') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= VET[L,C].PECA;
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;
		 IF ((VET[L,C].PECA)='P16') THEN
	 BEGIN
	 IF (I=(L+1))OR (I=(L+2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= VET[L,C].PECA;
	 VET[I,J].PLAYER:= 2;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	   END;
	   END;





 IF ((VET[L,C].PECA='P1') OR (VET[L,C].PECA='P2') OR (VET[L,C].PECA='P3') OR (VET[L,C].PECA='P4') OR (VET[L,C].PECA='P5')OR (VET[L,C].PECA='P6') OR (VET[L,C].PECA='P7') OR (VET[L,C].PECA='P8'))  THEN
 BEGIN
	 IF (I=(L-1))OR (I=(L-2)) THEN BEGIN
	 VET[I,J].SIMBOLO:= #193;
	 VET[I,J].PECA:= VET[L,C].PECA;
	 VET[I,J].PLAYER:= 1;
	 VET[L,C].SIMBOLO:='_';
	 VET[L,C].PECA:='';
	 VET[L,C].PLAYER:=0;
	 END;
	 END;



 END;



 PROCEDURE PEAO_ANDA;
 BEGIN
   IF ((VET[L,C].PECA='P1') OR (VET[L,C].PECA='P2') OR (VET[L,C].PECA='P3') OR (VET[L,C].PECA='P4')OR(VET[L,C].PECA='P5') OR (VET[L,C].PECA='P6')OR(VET[L,C].PECA='P7') OR (VET[L,C].PECA='P8'))
	 THEN BEGIN
	 			IF (I=L-1)AND(J=C)
				THEN  BEGIN
	 			      VET[I,J].SIMBOLO:=#193;
    		      VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:= 1;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
              END;
				 END;
				 IF ((VET[L,C].PECA='P9') OR (VET[L,C].PECA='P10') OR (VET[L,C].PECA='P11') OR (VET[L,C].PECA='P12')OR(VET[L,C].PECA='P13') OR (VET[L,C].PECA='P14')OR(VET[L,C].PECA='P15') OR (VET[L,C].PECA='P16'))
	 			 THEN BEGIN
	 						IF (I=L+1)AND(J=C)
							THEN  BEGIN
	 			      			VET[I,J].SIMBOLO:=#193;
    		      			VET[I,J].PECA:= VET[L,C].PECA;
	 									VET[I,J].PLAYER:= 2;
	 									VET[L,C].SIMBOLO:='_';
	 								  VET[L,C].PECA:='';
	 									VET[L,C].PLAYER:=0;
              			END;
				 END;
		END;



PROCEDURE PEAO_COME;
BEGIN
		IF ((VET[L,C].PECA='P1') OR (VET[L,C].PECA='P2') OR (VET[L,C].PECA='P3') OR (VET[L,C].PECA='P4') OR (VET[L,C].PECA='P5')OR (VET[L,C].PECA='P6') OR (VET[L,C].PECA='P7') OR (VET[L,C].PECA='P8'))  THEN
      BEGIN
       IF (I=(L-1)) AND (J=(C+1)) THEN BEGIN
       	 IF (((VET[I,J].SIMBOLO) <>'_') AND ((VET[I,J].PLAYER)=2)AND (VET[I,J].SIMBOLO<>#12)) THEN BEGIN
       	 CLRSCR;
       	 JOGADOR1:=JOGADOR1+1;
       	  WRITELN('-------------------------------------------------------------JOGADOR 1:',JOGADOR1);
       	  VET[I,J].SIMBOLO:= #193;
	 				VET[I,J].PECA:= VET[L,C].PECA;
	 				VET[I,J].PLAYER:= 1;
	 				VET[L,C].SIMBOLO:='_';
	 				VET[L,C].PECA:='';
	 				VET[L,C].PLAYER:=0;
	        END
	        ELSE BEGIN IF (((VET[I,J].SIMBOLO) <>'_' )AND ((VET[I,J].PLAYER=1))AND ((VET[I,J].SIMBOLO = #12))) THEN
	       BEGIN
	                                VET[I,J].SIMBOLO:= #193;
	 				VET[I,J].PECA:= VET[L,C].PECA;
	 				VET[I,J].PLAYER:= 1;
	 				VET[L,C].SIMBOLO:='_';
	 				VET[L,C].PECA:='';
	 				VET[L,C].PLAYER:=0;
	 				END;
	 				END;
	 				END;
	 				END;
		IF ((VET[L,C].PECA='P9') OR (VET[L,C].PECA='P10') OR (VET[L,C].PECA='P11') OR (VET[L,C].PECA='P12') OR (VET[L,C].PECA='P13')OR (VET[L,C].PECA='P14') OR (VET[L,C].PECA='P15') OR (VET[L,C].PECA='P16'))  THEN
      BEGIN
       IF (I=(L-1)) AND (J=(C+1)) THEN BEGIN
       	 IF (((VET[I,J].SIMBOLO) <>'_') AND ((VET[I,J].PLAYER)=1)AND (VET[I,J].SIMBOLO<>#12)) THEN BEGIN
       	 CLRSCR;
       	 JOGADOR2:=JOGADOR2+1;
       	  WRITELN('-------------------------------------------------------------JOGADOR 2:',JOGADOR2);
       	  VET[I,J].SIMBOLO:= #193;
	 				VET[I,J].PECA:= VET[L,C].PECA;
	 				VET[I,J].PLAYER:= 2;
	 				VET[L,C].SIMBOLO:='_';
	 				VET[L,C].PECA:='';
	 				VET[L,C].PLAYER:=0;
	        END
	        ELSE BEGIN IF (((VET[I,J].SIMBOLO) <>'_' )AND ((VET[I,J].PLAYER)=2)AND ((VET[I,J].SIMBOLO)<>#12)) THEN
	        WRITELN('JOGADA INVÁLIDA!')
	        ELSE BEGIN
	        VET[I,J].SIMBOLO:= #193;
	 				VET[I,J].PECA:= VET[L,C].PECA;
	 				VET[I,J].PLAYER:= 1;
	 				VET[L,C].SIMBOLO:='_';
	 				VET[L,C].PECA:='';
	 				VET[L,C].PLAYER:=0;
	 				END;
	 				END;
	 				END;
	 				END;
                IF  ((VET[I,J].SIMBOLO = #12) AND (VET[I,J].PLAYER = 2))
 then BEGIN writeln('XEQUE');
   X:=X+1;
   END;
END;



PROCEDURE CAVALO_ANDA;
BEGIN
		IF ((VET[L,C].PECA='C1') OR (VET[L,C].PECA='C2') OR (VET[L,C].PECA='C3') OR (VET[L,C].PECA='C4'))
		THEN BEGIN
				 IF (((I=(L+2)) AND (J=(C+1))) OR 	((I=(L+2)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C+1)))OR ((I=(L-2)) AND (J=(C-1))) OR ((J=(C+2)) AND (I=(L+1))) OR ((J=(C+2)) AND (I=(L-1))) OR ((J=(C-2)) AND (I=(L+1))) OR ((J=(C-2)) AND (I=(L-1))))THEN
				  BEGIN
				 		VET[I,J].SIMBOLO:= #55;
	 					VET[I,J].PECA:= VET[L,C].PECA;
	 					VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 					VET[L,C].SIMBOLO:='_';
	 					VET[L,C].PECA:='';
	 					VET[L,C].PLAYER:=0;
					END
					ELSE WRITELN('JOGADA INVÁLIDA!');
				END;
END;

PROCEDURE CAVALO_COME;
BEGIN
IF ((VET[L,C].PECA='C1') OR (VET[L,C].PECA='C2'))
		THEN BEGIN
				 IF (((I=(L+2)) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C+1)))OR ((I=(L-2)) AND (J=(C-1))) OR ((J=(C+2)) AND (I=(L+1))) OR ((J=(C+2)) AND (I=(L-1))) OR ((J=(C-2)) AND (I=(L+1))) OR ((J=(C-2)) AND (I=(L-1))))
				 THEN BEGIN
				 		IF (((VET[I,J].PECA) <> '') AND ((VET[I,J].PLAYER)=2) and (vet[i,j].SIMBOLO<>#12))
				 		THEN BEGIN
				 			VET[I,J].SIMBOLO:= #55;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
						END
						ELSE BEGIN IF (VET[I,J].SIMBOLO=#12) THEN BEGIN
                                                               WRITELN('XEQUE');
                                                              XEQUE_MATE;
                                                               END;
                                                                END;
                                                end;
                         END;

					    IF ((VET[L,C].PECA='C3') OR (VET[L,C].PECA='C4'))
		THEN BEGIN
				 IF (((I=(L+2)) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C+1)))OR ((I=(L-2)) AND (J=(C-1))) OR ((J=(C+2)) AND (I=(L+1))) OR ((J=(C+2)) AND (I=(L-1))) OR ((J=(C-2)) AND (I=(L+1))) OR ((J=(C-2)) AND (I=(L-1))))
				 THEN BEGIN
				 		IF ((VET[I,J].PECA <> '') AND (VET[I,J].PLAYER=1)AND (vet[I,J].SIMBOLO<>#12))
				 		THEN BEGIN
				 			VET[I,J].SIMBOLO:= #55;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
						END
						ELSE BEGIN WRITELN('JOGADA INVÁLIDA') ;
                                                WRITELN('XEQUE');
                                                                XEQUE_MATE;
                                                END;
					END;
				END;

END;

PROCEDURE TORRE_COME;
BEGIN
   IF ((VET[L,C].PECA='T1') OR (VET[L,C].PECA='T2')) THEN BEGIN
   IF ( (((I<=8) AND (J=C))) OR ((I=L) AND (J<=8)))
       THEN BEGIN
   IF (((VET[I,J].PECA) <> '') AND ((VET[I,J].PLAYER)= 2)AND (vet[i,j].SIMBOLO<>#12))THEN BEGIN
   						VET[I,J].SIMBOLO:= #178;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
							JOGADOR1:=JOGADOR1+1;
							WRITELN('---------------------------------------------------------------JOGADOR1:',JOGADOR1);
							END
	ELSE WRITELN('OPERAÇAO INVÁLIDA');
	END;
	END;
	IF ((VET[L,C].PECA='T3') OR (VET[L,C].PECA='T4')) THEN BEGIN
	IF ( (((I<=8) AND (J=C))) OR ((I=L) AND (J<=8)))
       THEN BEGIN
   IF (((VET[I,J].PECA) <> '') AND ((VET[I,J].PLAYER)= 1)AND (vet[i,j].SIMBOLO<>#12))THEN BEGIN
   						VET[I,J].SIMBOLO:= #178;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
							JOGADOR2:=JOGADOR2+1;
							WRITELN('---------------------------------------------------------------JOGADOR2:',JOGADOR2);
							END
	ELSE WRITELN('OPERAÇAO INVÁLIDA');
	END;
	END;
        IF  ((VET[I,J].SIMBOLO = #12) AND (VET[I,J].PLAYER = 1))
 then BEGIN writeln('XEQUE');
 XEQUE_MATE;

  END;
END;


PROCEDURE TORRE_ANDA;

BEGIN
	IF ((VET[L,C].PECA='T1') OR (VET[L,C].PECA='T2') OR (VET[L,C].PECA='T3') OR (vet[i,j].SIMBOLO<>#12))
	THEN BEGIN
			 IF ( (((I<=8) AND (J=C))) OR ((I=L) AND (J<=8)))
       THEN BEGIN

			        IF VET[I,J].PECA='' THEN BEGIN
			 				VET[I,J].SIMBOLO:= #178;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
	 						END
	 						ELSE TORRE_COME;

			   END;
			   END;

			END;

PROCEDURE BISPO_COME;
BEGIN
IF (((VET[L,C].PECA)='B1') OR ((VET[L,C].PECA)='B2') )THEN BEGIN

	IF (((I=(L+1)) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN
	IF (((VET[I,J].PECA) <> '') AND ((VET[I,J].PLAYER)=2)) THEN BEGIN

	   VET[I,J].SIMBOLO:= #6;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
							END


		ELSE WRITELN('OPERAÇÃO INVÁLIDA');
		END;
	END;
	IF (((VET[L,C].PECA)='B3') OR ((VET[L,C].PECA)='B4'))	THEN BEGIN

	IF (((I=(L+1)) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN
	IF (((VET[I,J].PECA) <> '') AND ((VET[I,J].PLAYER)=1) AND ((vet[i,j].SIMBOLO<>#12))) THEN BEGIN

	   VET[I,J].SIMBOLO:= #6;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=2;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
							END


		ELSE BEGIN WRITELN('OPERAÇÃO INVÁLIDA');
                                IF (vet[i,j].SIMBOLO=#12) THEN   BEGIN
                                WRITELN('XEQUE');
                                XEQUE_MATE;
                                END;
                              END;


		END;
END;
        IF  ((VET[I,J].SIMBOLO = #12) AND (VET[I,J].PLAYER = 1))
 then BEGIN writeln('XEQUE');
  XEQUE_MATE;
  END;
END;










PROCEDURE BISPO_ANDA;

BEGIN

	IF (((VET[L,C].PECA)='B1') OR ((VET[L,C].PECA)='B2') OR ((VET[L,C].PECA)='B3') OR ((VET[L,C].PECA)='B4'))THEN BEGIN

	IF (((I=(L+1)) AND (J=(C+1))) OR ((I=(L+2)) AND (J=(C+2))) OR ((I=(L+3)) AND (J=(C+3))) OR ((I=(L+4)) AND (J=(C+4))) OR ((I=(L+5)) AND (J=(C+5))) OR ((I=(L+6)) AND (J=(C+6))) OR  ((I=(L+7)) AND (J=(C+7))) OR ((I=(L+8)) AND (J=(C+8))) OR ((I=(L-1)) AND (J=(C-1))) OR ((I=(L-2)) AND (J=(C-2))) OR ((I=(L-3)) AND (J=(C-3))) OR ((I=(L-4)) AND (J=(C-4))) OR ((I=(L-5)) AND (J=(C-5))) OR ((I=(L-6)) AND (J=(C-6))) OR ((I=(L-7)) AND (J=(C-7))) OR ((I=(L-8)) AND (J=(C-8))) OR ((I=(L-1)) AND (J=(C+1))) OR ((I=(L-2)) AND (J=(C+2))) OR ((I=(L-3)) AND (J=(C+3))) OR ((I=(L-4)) AND (J=(C+4))) OR ((I=(L-5)) AND (J=(C+5))) OR ((I=(L-6)) AND (J=(C+6))) OR ((I=(L-7)) AND (J=(C+7))) OR ((I=(L-8)) AND (J=(C+8))) OR ((I=(L+1)) AND (J=(C-1)))  OR ((I=(L+2)) AND (J=(C-2))) OR ((I=(L+3)) AND (J=(C-3))) OR ((I=(L+4)) AND (J=(C-4)))OR ((I=(L+5)) AND (J=(C-5)))OR ((I=(L+6)) AND (J=(C-6)))OR ((I=(L+7)) AND (J=(C-7))) OR ((I=(L+8)) AND (J=(C-8))))THEN BEGIN
	IF VET[I,J].PECA ='' THEN BEGIN

	   VET[I,J].SIMBOLO:= #6;
	 						VET[I,J].PECA:= VET[L,C].PECA;
	 						VET[I,J].PLAYER:=VET[L,C].PLAYER;
	 						VET[L,C].SIMBOLO:='_';
	 						VET[L,C].PECA:='';
	 						VET[L,C].PLAYER:=0;
							END

		ELSE BISPO_COME;
		END;
	END;
 END;

PROCEDURE COR_TABULEIRO;
BEGIN
IF ((I=1) AND((J MOD 2)=0)) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF ((I=1) AND((J MOD 2)<>0)) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF ((I=2) AND((J MOD 2)=0)) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF  (((I=2) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=3) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=3) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=4) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=4) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=5) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=5) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=6) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=6) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=7) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
IF (((I=7) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=8) AND ((J MOD 2)=0))) THEN BEGIN
TEXTCOLOR(BLUE);
END;
IF (((I=8) AND ((J MOD 2)<>0))) THEN BEGIN
TEXTCOLOR(WHITE);
END;
END;
PROCEDURE COR_PECAS;
						BEGIN

						IF (VET[I,J].PLAYER)=1 THEN
						TEXTCOLOR(WHITE);
						IF  (VET[I,J].PLAYER)=2  THEN
						TEXTCOLOR(GREEN);
						IF (VET[I,J].PLAYER)<1 THEN
						COR_TABULEIRO;
						END;



			PROCEDURE TABULEIRO;
		BEGIN
		for  i:=1 to 8 do

		begin
			 for j:=1 to 8 do
			 begin
			 COR_TABULEIRO;

			 write('|_');COR_PECAS;WRITE(vet[I,j].SIMBOLO);COR_TABULEIRO;WRITE('_|');
			 end;
			 writeln;
		end;
		END;

			 PROCEDURE COMANDO;
			 BEGIN

			TABULEIRO;
			repeat

			WRITELN('DIGITE A LINHA ATUAL DA PECA');
			READLN(L);
			WRITELN('DIGITE A COLUNA ATUAL DA PECA');
			READLN(C);
			VET[L,C].L:=L;
			VET[L,C].C:=C;
			WRITELN('DIGITE A LINHA DESEJADA') ;
			READLN(I);
			WRITELN('DIGITE A COLUNA DESEJADA');
			READLN(J);
			WRITELN('DIGITE A INICIAL E O NUMERO DA PECA');
			READLN(VET[L,C].PECA) ;
			WRITELN('DIGITE 1 PARA PLAYER 1 E 2 PARA PLAYER2');
			READLN(VET[L,C].PLAYER);
			VET[L,C].I:=1;
			VET[L,C].J:=J;
			CAVALO_INICIO;
			PEAO_INICIO;
			JOGADA:=JOGADA+1;
			TABULEIRO;
			UNTIL JOGADA=2  ;

			WHILE JOGADA>=2 DO
			BEGIN
			CLRSCR;
			TABULEIRO;

			WRITELN('DIGITE A LINHA ATUAL DA PECA');
			READLN(L);
			WRITELN('DIGITE A COLUNA ATUAL DA PECA');
			READLN(C);
			VET[L,C].L:=L;
			VET[L,C].C:=C;
			WRITELN('DIGITE A LINHA DESEJADA') ;
			READLN(I);
			WRITELN('DIGITE A COLUNA DESEJADA');
			READLN(J);
			WRITELN('DIGITE A INICIAL E O NUMERO DA PECA');
			READLN(VET[L,C].PECA) ;
			WRITELN('DIGITE 1 PARA PLAYER 1 E 2 PARA PLAYER2');
			READLN(VET[L,C].PLAYER);
			VET[L,C].I:=1;
			VET[L,C].J:=J;
			PEAO_ANDA;
			PEAO_COME;
			CAVALO_ANDA;
			CAVALO_COME;
			TORRE_ANDA;
			TORRE_COME;
			BISPO_ANDA;
			BISPO_COME;
			RAINHA_ANDA;
			RAINHA_COME;

			REI_ANDA;

			TABULEIRO;
			END;
			END;
	BEGIN
	    for  I:=1 to 8 do
			 begin
				for J:=1 to 8 do
					begin

						vet[I,j].SIMBOLO:='_';


							end;
							writeln;
							end;

			COR_PECAS;
			vet[1,1].SIMBOLO:=#178;
			vet[1,1].PLAYER:=2;
			VET[1,1].PECA:='T3';
			vet[1,2].SIMBOLO:=#55;
			vet[1,2].PLAYER:=2;
			VET[1,2].PECA:='C3';
			vet[1,3].PLAYER:=2;
			VET[1,3].PECA:='B3';
			vet[1,3].SIMBOLO:=#6;
			vet[1,4].SIMBOLO:=#11;
			vet[1,4].PLAYER:=2;
			VET[1,4].PECA:='Q2';
			vet[1,5].PLAYER:=2;
			VET[1,5].PECA:='K2';
			vet[1,5].SIMBOLO:=#12;
			vet[1,6].PLAYER:=2;
			VET[1,6].PECA:='B4';
			vet[1,6].SIMBOLO:=#6;
			vet[1,7].SIMBOLO:=#55;
			vet[1,7].PLAYER:=2;
			VET[1,7].PECA:='C4';
			vet[1,8].SIMBOLO:= #178;
			vet[1,8].PLAYER:=2;
			VET[1,8].PECA:='T4';
			FOR J:=1 TO 8 DO
			BEGIN
			vet[2,J].PLAYER:=2;
			VET[2,J].PECA:='P';
			VET[2,J].SIMBOLO:= #193;
			END;
			vet[8,1].PLAYER:=1;
			VET[8,1].PECA:='T1';
			vet[8,1].SIMBOLO:=#178;
			vet[8,2].SIMBOLO:=#55;
			vet[8,2].PLAYER:=1;
			VET[8,2].PECA:='C1';
			vet[8,3].SIMBOLO:=#6;
			vet[8,3].PLAYER:=1;
			VET[8,3].PECA:='B1';
			vet[8,4].PLAYER:=1;
			VET[8,4].PECA:='Q1';
			vet[8,4].SIMBOLO:=#11;
			vet[8,5].PLAYER:=1;
			VET[8,5].PECA:='K1';
			vet[8,5].SIMBOLO:=#12;
			vet[8,6].SIMBOLO:=#6;
			vet[8,6].PLAYER:=1;
			VET[8,6].PECA:='B2';
			vet[8,7].SIMBOLO:=#55;
			vet[8,7].PLAYER:=1;
			VET[8,7].PECA:='C2';
			vet[8,8].SIMBOLO:= #178;
			vet[8,8].PLAYER:=1;
			VET[8,8].PECA:='T2';
		  FOR J:=1 TO 8 DO
			BEGIN
			vet[7,J].PLAYER:=1;
			VET[7,J].PECA:='P';
			VET[7,J].SIMBOLO:= #193;
			END;
			 REPEAT
			 COMANDO;
			 UNTIL I=8000;

		  READKEY;
END  .
