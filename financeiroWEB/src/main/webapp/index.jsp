<%-- 
    Document   : index.jsp
    Created on : 9 de dez. de 2024, 21:09:14
    Author     : ZeDaManga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="com.mycompany.financeiro.*,com.mycompany.consultas.*,com.mycompany.financeiro.*,com.mycompany.login.*"%>
<%
    Financeiro fin = (Financeiro) session.getAttribute("financeiro");
    if (fin==null)
       fin = new Financeiro();
       %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Financeiro WEB</title>
    </head>
    <body>
        <h1>Boletos a Vencer: <%=fin.pegarValorBoletosVencer()%></h1><br>
        <h1>Cheques a Vencer: <%=fin.pegarValorChequesVencer()%></h1><br>
        <h1>Boletos vencidos:<%=fin.pegarValorBoletosVencidos()%></h1><br>
        <h1>Cheques vencidos: <%=fin.pegarValorChequesVencidos()%></h1><br>
        <h1>Saldo Conta:<%=fin.saldo%></h1><br>
        
    </body>
</html>
