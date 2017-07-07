/*

1) Cria sala
2) Vincula apresentador
3) Vincula participante
4) Fecha sala

*/
Declare
	/*Define o identificado da conferencia, pode ser o melhor convir*/
	v_id_conferencia Varchar2(1000) := 'IDdaConferencia';
	
	/*variavel para guardar o retorno da chamada da funcao de criar sala*/
	v_url_criacao Varchar2(1000);

	/*variavel para guardar o retorno da chamada da funcao de fechamento da sala*/
	v_url_fechamento Varchar2(1000);
	
	v_url_apresentador Varchar2(1000);
	
	v_url_participante Varchar2(1000);
	
Begin
	/*Gera url de criação da sala*/
	v_url_criacao:= pk_big_blue_button.Creates(v_id_conferencia);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_criacao);
	
	/*Gera url para o apresentador da conferencia*/
	v_url_apresentador := pk_big_blue_button.Join('nomedoapresentador',v_id_conferencia,pk_big_blue_button.v_Senha_Pro);
			
	/*Imprime retorno*/
	dbms_output.put_line(v_url_apresentador);
	
	v_url_participante := pk_big_blue_button.Join('nomedoaparticipante',v_id_conferencia,pk_big_blue_button.v_Senha_alu);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_participante);
	
	/*Gera url de fechamento da sala*/
	v_url_fechamento := pk_big_blue_button.Close(v_id_conferencia, pk_big_blue_button.v_Senha_Pro);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_fechamento);
	
End;
