CREATE OR REPLACE Package Pk_Big_Blue_Button Authid Current_User Is

	/**
    %Autor Vin�cius Vieira de Moura
    %Criado 20/03/2017 11:14:24
    %Proposito 
    
    %Info Documenta��o completa da web confer�ncia BigBlueButton 
    {%link http://docs.bigbluebutton.org/dev/api.html}
  **/

	/**
  Vari�vel para retorno da fun��o de criptografia
  **/
	Lv_Hash_Value_Sh1 Raw(4000);
	/**
  Vari�vel para retorno da fun��o de criptografia, convertida em varchar2
  **/
	Lv_Varchar_Key_Sh1 Varchar2(4000);


	
	/** 
  URL da API do Big Blue Button 
  **/
	c_Url Constant Varchar2(4000) := 'yoururl';

	/**
  Chave, encontrada no arquivo properties da instal��o do BBB
  **/
	c_Salt Constant Varchar2(4000) := 'your salt';

	/**
		Senha de administrador e apresentador nas salas de webconfer�ncia
	**/
	v_Senha_Pro Varchar2(4000) := 'adm password'; 
	/**
		Senha de participante nas salas de webconfer�ncia
	**/
	v_Senha_Alu Varchar2(4000) := 'user password'; 
	/**
   Fun��o de convers�o de CLob para XMLtype
   %param  v_lob - par�metro de entrada em formato CLOB
   %return  Xmltype - tipo padr�o do oracle para tratar xml's ,com o conte�do retornado da API do BBB.
  **/
	Function Clobtoxmltype(v_Lob Clob) Return Xmltype;
	/**
    Cria sala a partir da URL
    %param  url - par�metro de entrada em formato Varchar2 representa a URL de cria��o de uma sala
    %return  varchar2 {*} Sucesso Sala j� existe! 
                      {*} Sucesso Sala criada com sucesso!
                      {*} Erro Erro ao criar sala! 
  **/
	Function Createroombyurl(Url Varchar2) Return Varchar2;
	/**
    Verifica se a sala ja foi criada
    %param  Meetingid - ID da sala de web confer�ncia em formato Varchar2
    %return  boolean {*} True - Sala j� foi criada
                     {*} False -Sala n�o foi criada
  
  **/
	Function Ismeetingcreated(Meetingid Varchar2) Return Boolean;
	/**
  Faz uma requisi��o para a URL passada e devolve um CLOB do reponse
  %param  url - par�metro de entrada em formato Varchar2 representa uma URL qualquer
  %return Clob - todo o conte�do da p�gina chamada.
  **/
	Function Callurl(Url Varchar2) Return Clob;
	/**
  Gera URL de acesso para um determinado usu�rio em uma sala espec�fica
  
  %param  Nomeusuario - Nome do usu�rio que ingressar� na sala em formato Varchar2
  %param  Meetingid - ID da sala de web confer�ncia em formato Varchar2
  %param Senha - Senha do usu�rio em formato Varchar2, deve bater com o valor de uma das vari�veis
                      {*}v_Senha_Pro - para ingressar com responsabilidade de apresentador
                      {*}v_Senha_Alu - para ingressar com responsabilidade de participante
                      
  %param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
  %return Varchar2 - URL para ingresso na sala.
  **/
	Function Join(Nomeusuario Varchar2, Meetingid Varchar2, Senha Varchar2, Parametrosadicionais Varchar2 Default '')
		Return Varchar2;
	/**
  Gera URL para criar a sala
	  %param Meetingid - ID da sala de web confer�ncia em formato Varchar2
		%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
		%return Varchar2 - URL para cria��o da sala.
  **/
	Function Creates(Meetingid Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Deterministic;
	/**
  Gera URL para encerramento da sala
	  %param Meetingid - ID da sala de web confer�ncia em formato Varchar2
		%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
		%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
		%return Varchar2 - URL para encerramento da sala.
  **/
	Function Close(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Deterministic;
	/**
  Gera URL para testar se a sala est� "no ar"
	%param Meetingid - ID da sala de web confer�ncia em formato Varchar2
	%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
	%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
	%return Varchar2 - URL para testar se a sala est� "no ar"
  **/
	Function Ismeetingruning(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2;
	/**
  Gera URL que retorna as informa��es da sala
	%param Meetingid - ID da sala de web confer�ncia em formato Varchar2
	%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
	%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
	%return Varchar2 - URL que retorna as informa��es da sala
  **/
	Function Getmeetinginfo(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2;
	/**
  Gera URL para solicitar grava��es(v�deos) da sala
	%param Meetingid - ID da sala de web confer�ncia em formato Varchar2
	%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
	%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
	%return Varchar2 - URL para solicitar as grava��es da sala
  **/
	Function Getrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2;
	/**
  Gera URL para solicitar publica��o dos v�deos da sala
	%param Meetingid - ID da sala de web confer�ncia em formato Varchar2
	%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
	%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
	%return Varchar2 - URL para solicitar publica��o dos v�deos da sala
  **/
	Function Publishrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2;
	/**
  Gera URL para apagar os v�deos da sala
	%param Meetingid - ID da sala de web confer�ncia em formato Varchar2
	%param Senhaadm - senha de apresentador da sala, deve bater com o valor da vari�vel v_Senha_Pro
	%param Parametrosadicionais - par�metros adicionais poss�veis, conforme documenta��o da API
	%return Varchar2 - URL para apagar os v�deos da sala
  **/
	Function Deleterecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2;
	/**
  Gera URL que retorna as salas que est�o "no ar"
  **/
	Function Getmeetings Return Varchar2;
	/**
  Gera URL que retorna as configura��es padr�o da Web Confer�ncia
	%return Varchar2 - URL para apagar os v�deos da sala
  **/
	/*
	Function Getdefaultconfigxml Return Varchar2;
	Function Setconfigxml Return Varchar2;
	Function Enter Return Varchar2;
	Function Configxml Return Varchar2;
	Function Signout Return Varchar2;
	*/
End Pk_Big_Blue_Button;
/
CREATE OR REPLACE Package Body Pk_Big_Blue_Button Is

	Procedure Generatehash(Method Varchar2, Query Varchar2) Is
		/*Vari�veis para gera��o do HASH*/
		v_String Varchar2(4000);
	
	Begin
		/*Concatena as vari�veis na ordem correta de gera��o da chave*/
		v_String := Method || Query || c_Salt;
	
		/*Gera chave criptografada (SH-1)*/
		Lv_Hash_Value_Sh1 := Dbms_Crypto.Hash(Src => Utl_Raw.Cast_To_Raw(v_String), Typ => Dbms_Crypto.Hash_Sh1);
	
		/*Converte para varchar2*/
		Select Lower(To_Char(Rawtohex(Lv_Hash_Value_Sh1)))
		Into   Lv_Varchar_Key_Sh1
		From   Dual;
	End;

	/*Faz uma requisi��o para a URL passada e devolve um CLOB do reponse*/
	Function Callurl(Url Varchar2) Return Clob Is
		t_Part Utl_Http.Html_Pieces;
		v_Ret  Clob;
	Begin
		t_Part := Utl_Http.Request_Pieces(Url);
	
		For i In 1 .. t_Part.Count Loop
			v_Ret := v_Ret || t_Part(i);
		End Loop;
	
		Return v_Ret;
	End;

	/*Converte Clob em XML*/
	Function Clobtoxmltype(v_Lob Clob) Return Xmltype Is
		Xml Xmltype := Xmltype(v_Lob);
	Begin
		Return Xml;
	End;

	/*Cria sala a partir da URL*/
	Function Createroombyurl(Url Varchar2) Return Varchar2 Is
		Xml       Xmltype;
		v_Code    Varchar2(1000);
		v_Message Varchar2(4000);
		v_Ret     Varchar2(4000);
	Begin
		Xml := Clobtoxmltype(Callurl(Url));
	
		Select Extractvalue(Value(p), '/response/returncode')
					,Extractvalue(Value(p), '/response/message')
		Into   v_Code
					,v_Message
		From   Table(Xmlsequence(Extract(Xml, '/response'))) p;
	
		If (v_Code = 'SUCCESS') Then
			If (v_Message Is Not Null) Then
				v_Ret := 'Sala j� existe! ';
			Else
				v_Ret := 'Sala criada com sucesso! ';
			End If;
		Else
			v_Ret := 'Erro ao criar sala! ';
		End If;
	
		v_Ret := v_Ret || v_Message;
	
		Return v_Code;
	End;

	/*Verifica se a sala ja foi criada*/
	Function Ismeetingcreated(Meetingid Varchar2) Return Boolean Is
		Xml    Xmltype;
		v_Code Varchar2(1000);
		v_Ret  Varchar2(4000);
	Begin
		Xml := Clobtoxmltype(Callurl(Getmeetinginfo(Meetingid, v_Senha_Pro)));
	
		Select Extractvalue(Value(p), '/response/returncode')
		Into   v_Code
		From   Table(Xmlsequence(Extract(Xml, '/response'))) p;
	
		If (v_Code = 'SUCCESS') Then
			Return True;
		Else
			Return False;
		End If;
	
		Return False;
	End Ismeetingcreated;

	/*Gera URL de acesso para um determinado usu�rio em uma sala espec�fica*/
	Function Join(Nomeusuario Varchar2, Meetingid Varchar2, Senha Varchar2, Parametrosadicionais Varchar2 Default '')
		Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'join';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para acesso a sala*/
		v_Query := 'fullName=' || Nomeusuario || '&meetingID=' || Meetingid || '&password=' || Senha || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para criar a sala*/
	Function Creates(Meetingid Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Deterministic Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'create';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para criar a sala*/
		v_Query := 'attendeePW=' || v_Senha_Alu || '&meetingID=' || Meetingid || '&moderatorPW=' || v_Senha_Pro ||
							 Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para encerramento da sala*/
	Function Close(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Deterministic Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'end';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para encerrar a sala*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para testar se a sala est� "no ar"*/
	Function Ismeetingruning(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'isMeetingRunning';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para testar se a sala est� no ar*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL que retorna as informa��es da sala*/
	Function Getmeetinginfo(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'getMeetingInfo';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para verificar as informa��es da sala*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para solicitar grava��es(v�deos) da sala*/
	Function Getrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'getRecordings';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para solicitar as grava��es*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para solicitar publica��o dos v�deos da sala*/
	Function Publishrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'publishRecordings';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para solicitar as grava��es*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL para apagar os v�deos da sala*/
	Function Deleterecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'deleteRecordings';
		v_Query  Varchar2(4000);
	
	Begin
		/*Monta query com par�metros obrigat�rios para solicitar as grava��es*/
		v_Query := 'meetingID=' || Meetingid || '&password=' || Senhaadm || Parametrosadicionais;
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || '&checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL que retorna as salas que est�o "no ar"*/
	Function Getmeetings Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'getMeetings';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || 'checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*Gera URL que retorna as configura��es padr�o da Web Confer�ncia*/
	Function Getdefaultconfigxml Return Varchar2 Is
		/*M�todo (Ex: create,join,end, etc...)*/
		v_Method Varchar2(40) := 'getDefaultConfigXML';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query || 'checksum=' || Lv_Varchar_Key_Sh1;
	End;

	/*
	Function Setconfigxml Return Varchar2 Is
		v_Method Varchar2(40) := 'setConfigXML';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query;
	End;

	Function Enter Return Varchar2 Is
		v_Method Varchar2(40) := 'enter';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query;
	End;

	Function Configxml Return Varchar2 Is
		v_Method Varchar2(40) := 'configXML';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query;
	End;

	Function Signout Return Varchar2 Is
		v_Method Varchar2(40) := 'signOut';
		v_Query  Varchar2(4000);
	Begin
		Generatehash(v_Method, v_Query);
	
		Return c_Url || v_Method || '?' || v_Query;
	End;
	*/

End Pk_Big_Blue_Button;
/
