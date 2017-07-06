
<HTML>
 <HEAD>
 <META name="object" content="PACKAGE">
 <META name="name" content="CEOS.Pk_Big_Blue_Button">
 <META name="description" content="%Autor Vin&#237;cius Vieira de Moura">
</HEAD>
<BODY>
<TABLE CLASS="MAIN_TABLE"><TR><TD CLASS="DESC_TEXT">
<BR>
<TABLE CLASS="MAIN_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=10%>
Autor</TD><TD CLASS="DESC_TEXT" WIDTH=90%>
Vin&#237;cius Vieira de Moura
</TD></TR>
</TABLE>
<BR>
<TABLE CLASS="MAIN_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=10%>
Criado em</TD><TD CLASS="DESC_TEXT" WIDTH=90%>
20/03/2017 11:14:24
</TD></TR>
</TABLE>
<BR>
<TABLE CLASS="MAIN_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=10%>
Propósito</TD><TD CLASS="DESC_TEXT" WIDTH=90%>
Package de geração de chamadas a API do BigBlueButton. 
</TD></TR>
</TABLE>
<BR>
<TABLE CLASS="MAIN_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=10%>Informação
</TD><TD CLASS="DESC_TEXT" WIDTH=90%>
Documenta&#231;&#227;o completa da web confer&#234;ncia BigBlueButton <A HREF="http://docs.bigbluebutton.org/dev/api.html">http://docs.bigbluebutton.org/dev/api.html</A>
</TD></TR>
</TABLE>
<BR>
</TD></TR></TABLE>
<HR>
<A NAME="Program units"></A>
<TABLE CLASS="SUB_TABLE"><TR><TD CLASS="SUB_TITLE">
Program units
</TD></TR></TABLE>
<TABLE CLASS="SUB_TABLE">
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Clobtoxmltype">Clobtoxmltype</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Fun&#231;&#227;o de convers&#227;o de CLob para XMLtype
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Createroombyurl">Createroombyurl</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Cria sala a partir da URL
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Ismeetingcreated">Ismeetingcreated</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Verifica se a sala ja foi criada
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Callurl">Callurl</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Faz uma requisi&#231;&#227;o para a URL passada e devolve um CLOB do reponse
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Join">Join</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL de acesso para um determinado usu&#225;rio em uma sala espec&#237;fica
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Creates">Creates</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para criar a sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Close">Close</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para encerramento da sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Ismeetingruning">Ismeetingruning</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para testar se a sala est&#225; &quot;no ar&quot;
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Getmeetinginfo">Getmeetinginfo</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL que retorna as informa&#231;&#245;es da sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Getrecordings">Getrecordings</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para solicitar grava&#231;&#245;es(v&#237;deos) da sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Publishrecordings">Publishrecordings</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para solicitar publica&#231;&#227;o dos v&#237;deos da sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Deleterecordings">Deleterecordings</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL para apagar os v&#237;deos da sala
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Getmeetings">Getmeetings</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Gera URL que retorna as salas que est&#227;o &quot;no ar&quot;
</TD></TR>
</TABLE>
<BR>
<A NAME="Variables"></A>
<TABLE CLASS="SUB_TABLE"><TR><TD CLASS="SUB_TITLE">
Variables
</TD></TR></TABLE>
<TABLE CLASS="SUB_TABLE">
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Lv_Hash_Value_Sh1">Lv_Hash_Value_Sh1</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Vari&#225;vel para retorno da fun&#231;&#227;o de criptografia
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#Lv_Varchar_Key_Sh1">Lv_Varchar_Key_Sh1</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Vari&#225;vel para retorno da fun&#231;&#227;o de criptografia, convertida em varchar2
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#v_Senha_Pro">v_Senha_Pro</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Senha de administrador e apresentador nas salas de webconfer&#234;ncia
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#v_Senha_Alu">v_Senha_Alu</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Senha de participante nas salas de webconfer&#234;ncia
</TD></TR>
</TABLE>
<BR>
<A NAME="Constants"></A>
<TABLE CLASS="SUB_TABLE"><TR><TD CLASS="SUB_TITLE">
Constants
</TD></TR></TABLE>
<TABLE CLASS="SUB_TABLE">
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#c_Url">c_Url</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
URL da API do Big Blue Button
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="TYPE_ITEM">
<A HREF="#c_Salt">c_Salt</A>&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Chave, encontrada no arquivo properties da instal&#231;&#227;o do BBB
</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Lv_Hash_Value_Sh1"></A>
<P CLASS="TYPE_TITLE">
Lv_Hash_Value_Sh1
</P>
<PRE CLASS="DECL_TEXT">
Lv_Hash_Value_Sh1 Raw(4000);
</PRE>
<P CLASS="DESC_TEXT">
Vari&#225;vel para retorno da fun&#231;&#227;o de criptografia<br>

<BR>
</P>
<HR>
<A NAME="Lv_Varchar_Key_Sh1"></A>
<P CLASS="TYPE_TITLE">
Lv_Varchar_Key_Sh1
</P>
<PRE CLASS="DECL_TEXT">
Lv_Varchar_Key_Sh1 Varchar2(4000);
</PRE>
<P CLASS="DESC_TEXT">
Vari&#225;vel para retorno da fun&#231;&#227;o de criptografia, convertida em varchar2<br>

<BR>
</P>
<HR>
<A NAME="c_Url"></A>
<P CLASS="TYPE_TITLE">
c_Url
</P>
<PRE CLASS="DECL_TEXT">
c_Url Constant Varchar2(4000) := 'http://minhaurldobigbluebutton/bigbluebutton/api/';
</PRE>
<P CLASS="DESC_TEXT">
URL da API do Big Blue Button<br>

<BR>
</P>
<HR>
<A NAME="c_Salt"></A>
<P CLASS="TYPE_TITLE">
c_Salt
</P>
<PRE CLASS="DECL_TEXT">
c_Salt Constant Varchar2(4000) := 'minhachave';
</PRE>
<P CLASS="DESC_TEXT">
Chave, encontrada no arquivo properties da instal&#231;&#227;o do BBB<br>

<BR>
</P>
<HR>
<A NAME="v_Senha_Pro"></A>
<P CLASS="TYPE_TITLE">
v_Senha_Pro
</P>
<PRE CLASS="DECL_TEXT">
v_Senha_Pro Varchar2(4000) := 'minhasenhadeadm';
</PRE>
<P CLASS="DESC_TEXT">
Senha de administrador e apresentador nas salas de webconfer&#234;ncia<br>

<BR>
</P>
<HR>
<A NAME="v_Senha_Alu"></A>
<P CLASS="TYPE_TITLE">
v_Senha_Alu
</P>
<PRE CLASS="DECL_TEXT">
v_Senha_Alu Varchar2(4000) := 'minhasenhadeparticipante';
</PRE>
<P CLASS="DESC_TEXT">
Senha de participante nas salas de webconfer&#234;ncia<br>

<BR>
</P>
<HR>
<A NAME="Clobtoxmltype"></A>
<P CLASS="TYPE_TITLE">
Clobtoxmltype
</P>
<PRE CLASS="DECL_TEXT">
Function Clobtoxmltype(v_Lob Clob) Return Xmltype
</PRE>
<P CLASS="DESC_TEXT">
Fun&#231;&#227;o de convers&#227;o de CLob para XMLtype<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
v_lob&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metro de entrada em formato CLOB<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Xmltype - tipo padr&#227;o do oracle para tratar xml's ,com o conte&#250;do retornado da API do BBB.<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Createroombyurl"></A>
<P CLASS="TYPE_TITLE">
Createroombyurl
</P>
<PRE CLASS="DECL_TEXT">
Function Createroombyurl(Url Varchar2) Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Cria sala a partir da URL<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
url&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metro de entrada em formato Varchar2 representa a URL de cria&#231;&#227;o de uma sala<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
varchar2<br>

<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Sucesso&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Sala j&#225; existe!<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Sucesso&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Sala criada com sucesso!<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Erro&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Erro ao criar sala!<br>

</TD></TR>
</TABLE>
<BR>
</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Ismeetingcreated"></A>
<P CLASS="TYPE_TITLE">
Ismeetingcreated
</P>
<PRE CLASS="DECL_TEXT">
Function Ismeetingcreated(Meetingid Varchar2) Return Boolean
</PRE>
<P CLASS="DESC_TEXT">
Verifica se a sala ja foi criada<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
boolean<br>

<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
True&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- Sala j&#225; foi criada<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
False&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
-Sala n&#227;o foi criada<br>

</TD></TR>
</TABLE>
<BR>
</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Callurl"></A>
<P CLASS="TYPE_TITLE">
Callurl
</P>
<PRE CLASS="DECL_TEXT">
Function Callurl(Url Varchar2) Return Clob
</PRE>
<P CLASS="DESC_TEXT">
Faz uma requisi&#231;&#227;o para a URL passada e devolve um CLOB do reponse<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
url&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metro de entrada em formato Varchar2 representa uma URL qualquer<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Clob - todo o conte&#250;do da p&#225;gina chamada.<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Join"></A>
<P CLASS="TYPE_TITLE">
Join
</P>
<PRE CLASS="DECL_TEXT">
Function Join(Nomeusuario Varchar2, Meetingid Varchar2, Senha Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL de acesso para um determinado usu&#225;rio em uma sala espec&#237;fica<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Nomeusuario&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- Nome do usu&#225;rio que ingressar&#225; na sala em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senha&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- Senha do usu&#225;rio em formato Varchar2, deve bater com o valor de uma das vari&#225;veis<br>

<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
v_Senha_Pro&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- para ingressar com responsabilidade de apresentador<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
v_Senha_Alu&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- para ingressar com responsabilidade de participante<br>

</TD></TR>
</TABLE>
<BR>
</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para ingresso na sala.<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Creates"></A>
<P CLASS="TYPE_TITLE">
Creates
</P>
<PRE CLASS="DECL_TEXT">
Function Creates(Meetingid Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para criar a sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para cria&#231;&#227;o da sala.<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Close"></A>
<P CLASS="TYPE_TITLE">
Close
</P>
<PRE CLASS="DECL_TEXT">
Function Close(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para encerramento da sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para encerramento da sala.<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Ismeetingruning"></A>
<P CLASS="TYPE_TITLE">
Ismeetingruning
</P>
<PRE CLASS="DECL_TEXT">
Function Ismeetingruning(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para testar se a sala est&#225; &quot;no ar&quot;<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para testar se a sala est&#225; &quot;no ar&quot;<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Getmeetinginfo"></A>
<P CLASS="TYPE_TITLE">
Getmeetinginfo
</P>
<PRE CLASS="DECL_TEXT">
Function Getmeetinginfo(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL que retorna as informa&#231;&#245;es da sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL que retorna as informa&#231;&#245;es da sala<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Getrecordings"></A>
<P CLASS="TYPE_TITLE">
Getrecordings
</P>
<PRE CLASS="DECL_TEXT">
Function Getrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para solicitar grava&#231;&#245;es(v&#237;deos) da sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para solicitar as grava&#231;&#245;es da sala<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Publishrecordings"></A>
<P CLASS="TYPE_TITLE">
Publishrecordings
</P>
<PRE CLASS="DECL_TEXT">
Function Publishrecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para solicitar publica&#231;&#227;o dos v&#237;deos da sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para solicitar publica&#231;&#227;o dos v&#237;deos da sala<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Deleterecordings"></A>
<P CLASS="TYPE_TITLE">
Deleterecordings
</P>
<PRE CLASS="DECL_TEXT">
Function Deleterecordings(Meetingid Varchar2, Senhaadm Varchar2, Parametrosadicionais Varchar2 Default '') Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL para apagar os v&#237;deos da sala<br>

<BR>
</P>
<A NAME="Parameters"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Parameters
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Meetingid&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- ID da sala de web confer&#234;ncia em formato Varchar2<br>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Senhaadm&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- senha de apresentador da sala, deve bater com o valor da vari&#225;vel <A HREF=#v_Senha_Pro>v_Senha_Pro</A>

</TD></TR>
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
Parametrosadicionais&nbsp;&nbsp;
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
- par&#226;metros adicionais poss&#237;veis, conforme documenta&#231;&#227;o da API<br>

</TD></TR>
</TABLE>
<BR>
<A NAME="Returns"></A>
<TABLE CLASS="LIST_TABLE"><TR><TD CLASS="LIST_TITLE">
Returns
</TD></TR></TABLE>
<TABLE CLASS="LIST_TABLE">
<TR><TD VALIGN="TOP" CLASS="LIST_ITEM" WIDTH=1%>
</TD><TD CLASS="DESC_TEXT" WIDTH=95%>
Varchar2 - URL para apagar os v&#237;deos da sala<br>

</TD></TR>
</TABLE>
<BR>
<HR>
<A NAME="Getmeetings"></A>
<P CLASS="TYPE_TITLE">
Getmeetings
</P>
<PRE CLASS="DECL_TEXT">
Function Getmeetings Return Varchar2
</PRE>
<P CLASS="DESC_TEXT">
Gera URL que retorna as salas que est&#227;o &quot;no ar&quot;<br>

<BR>
</P>
<P>&nbsp;</P>
<P>&nbsp;</P>
</BODY>
</HTML>
