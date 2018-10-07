<%-- 
    Document   : mei
    Created on : 02/10/2018, 02:15:07
    Author     : morga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <style>
            fieldset
            {
                background-color:#CCC;
                max-width:150px;
                padding:16px;	
            }
            #container-table {display: none}
            table {
                border: 1px solid black;                
                height: 50px;
                border-collapse: collapse;
                width: 50%;
                background-color: white;
            }


            tr:nth-child(even) {
                background-color: white;
            }

            th {
                border: 1px solid black;
                text-align: left;
                padding: 4px;
                height: 50px;
                width: 50%;
                background-color: white;
                /*                background-color: #CCC;
                                color: black;*/
            }
            td:nth-child(even) {
                border: 1px solid black;
                border-collapse: collapse;
                text-align: left;
                padding: 4px;
                height: 50px;
                width: 50%;
                background-color: #CCC;
                /*                background-color: #CCC;
                                color: black;*/
            }

        </style>
        <!--<link rel="stylesheet" href="layout.css" type="text/css"/>-->
        <title>Cálculo de salário</title>
        <meta charset="UTF-8" />
        <script type="text/javascript">
            function calculaSalario1() {
                document.getElementById('container-table').style.display = "block";
                var valor = document.getElementById("valor").value;
                var quantidade = document.getElementById("quantidade").value;
                var meses, valor1, desconto, total;
                var t = quantidade;
                var meifixo = 52.70;

                if (valor <= 6750.000000) {
                    meses = valor * quantidade;
                    desconto = meifixo * quantidade;
                    total = meses - desconto;
                    valor1 = valor;
                }
                if (valor > 6750.000000) {
                    meses = 6750 * quantidade;
                    desconto = meifixo * quantidade;
                    total = meses - desconto;
                    valor1 = 6750, 00
                    alert("Calculamos o MEI para o valor limite R$ 6750,00, se você ganha a cima de R$ 6750,00 não se enquadra no MEI");
                }

                document.getElementById("meifixo1").innerHTML = "R$ 52.70";
                document.getElementById("t1").innerHTML = "Relativo a" + " " + t + " " + "meses";
                document.getElementById("valor1").innerHTML = "R$" + " " + Math.round(valor1 * 100) / 100;
                document.getElementById("desconto").innerHTML = "R$" + " " + Math.round(desconto * 100) / 100;
                document.getElementById("total").innerHTML = "R$" + " " + Math.round(total * 100) / 100;

            }


        </script>
    </head>
    <body>

        <a href="principal2.jsp" target="recebe">Voltar</a>

    <center>
        <fieldset>
            <legend>Cálculo do salário</legend> 
            <center>
                <label>Indique o salário bruto:</label></br>
                <input id="valor" type="text"/></br>
                <label>Meses trabalhados:</label></br>
                <input id="quantidade" type="text"/></br>
                <button id="calcular" onclick="calculaSalario1()">Calcular salário</button>
            </center>
        </fieldset> 
    </center>

    <br/>
    <br/>
    <br/>

    <center>
        <div id="container-table">
            <table>
                <tr><th>Relativo a um mês</th><td>Valor</td></tr>
                <tr><th>Líquido<td><p id="valor1"></p></td></th></tr>
                <tr><th>Taxa MEI<td><p id="meifixo1"></p></td></th></tr>
            </table>
            <br/>
            <br/>
            <br/>
            <table>
                <tr><th><p id="t1"><td>Valor</td></th></tr>                
                <tr><th>Taxa MEI<td><p id="desconto"></p></td></th></tr>
                <tr><th>Total Recebido<td><p id="total"></p></td></th></tr> 
            </table>
        </div>
    </center>  
</body>
</html>
