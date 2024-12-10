<%-- 
    Document   : index.jsp
    Created on : 9 de dez. de 2024, 21:09:14
    Author     : ZeDaManga
--%>


<%@page import="java.text.NumberFormat"%>
<%@page import="com.mycompany.financeiro.Financeiro.*"%>
<%@page import="com.mycompany.financeiro.frmsaldo.frmSaldo"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="com.mycompany.financeiro.*,com.mycompany.consultas.*,com.mycompany.financeiro.*,com.mycompany.login.*"%>
<%
    Financeiro fin = (Financeiro) session.getAttribute("financeiro");
    if (fin==null)
       fin = new Financeiro();
       
     frmSaldo frms =(frmSaldo) session.getAttribute("frms");
        if (frms==null)
                frms = new frmSaldo();
        
        NumberFormat nf = NumberFormat.getCurrencyInstance();                
        Double saldo= frms.pegarSaldo();
        Double boletosVencer=fin.pegarValorBoletosVencer();
        Double boletosVencidos=fin.pegarValorBoletosVencidos();
        Double chequesVencer=fin.pegarValorChequesVencer();
        Double chequesVencidos=fin.pegarValorChequesVencidos();
        
       %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema Financeiro WEB</title>
    </head>
    <body>
        <h1>Boletos a Vencer: <%=nf.format(boletosVencer)%></h1><br>
        <h1>Cheques a Vencer: <%=nf.format(chequesVencer)%></h1><br>
        <h1>Boletos vencidos:<%=nf.format(boletosVencidos)%></h1><br>
        <h1>Cheques vencidos: <%=nf.format(chequesVencidos)%></h1><br>
        <h1>Saldo Conta:<%=nf.format(saldo)%></h1><br>
        
    </body>
</html>
