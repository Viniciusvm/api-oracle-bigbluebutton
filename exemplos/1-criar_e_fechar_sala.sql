/*Criar e fechar sala de web confer�ncia */
Declare
	/*Define o identificador da confer�ncia*/
	v_id_conferencia Varchar2(1000) := 'IDdaConferencia';
	
	/*Vari�vel para guardar o retorno da chamada da funcao de criar sala*/
	v_url_criacao Varchar2(1000);

	/*Vari�vel para guardar o retorno da chamada da funcao de fechamento da sala*/
	v_url_fechamento Varchar2(1000);

Begin
	/*Gera url de cria��o da sala*/
	v_url_criacao:= pk_big_blue_button.Creates(v_id_conferencia);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_criacao);
	
	/*Gera url de fechamento da sala*/
	v_url_fechamento := pk_big_blue_button.Close(v_id_conferencia, pk_big_blue_button.v_Senha_Pro);
	
	/*Imprime retorno*/
	dbms_output.put_line(v_url_fechamento);
	
End;
