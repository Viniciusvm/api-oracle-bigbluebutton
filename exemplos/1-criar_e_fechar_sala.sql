/*Criar e fechar sala de web conferência */
Declare
	/*Define o identificado da conferencia, pode ser o melhor convir*/
	v_id_conferencia Varchar2(1000) := 'IDdaConferencia';
	
	/*variavel para guardar o retorno da chamada da funcao de criar sala*/
	v_url_criacao Varchar2(1000);

	/*variavel para guardar o retorno da chamada da funcao de fechamento da sala*/
	v_url_fechamento Varchar2(1000);

Begin
	/*Gera url de criação da sala*/
	v_url_criacao:= pk_big_blue_button.Creates(v_id_conferencia);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_criacao);
	
	/*Gera url de fechamento da sala*/
	v_url_fechamento := pk_big_blue_button.Close(v_id_conferencia, pk_big_blue_button.v_Senha_Pro);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_fechamento);
	
End;
