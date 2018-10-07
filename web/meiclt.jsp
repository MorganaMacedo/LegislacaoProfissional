<%-- 
    Document   : meiclt
    Created on : 02/10/2018, 02:18:10
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
                var inss, irpf, receber, tempo, decimo, salarios, ferias, fgts, multa, totalrecebido;
                var meses, desconto, total, diferenca;
                var liquido, tagmaior;

                if (valor <= 1693.72) {
                    inss = 0.08 * valor;
                }
                if (valor >= 1693.73 && valor <= 2822.90) {
                    inss = 0.09 * valor;
                }
                if (valor >= 2822.91 && valor <= 5645.80) {
                    inss = 0.11 * valor;
                }
                if (valor > 5645.80) {
                    inss = 0.11 * 5645.80;
                }
                if (valor < 1903.99) {
                    irpf = 0;
                }
                if (valor >= 1903.99 && valor <= 2826.65) {
                    irpf = ((valor - inss) * 0.075) - 142.80;
                }
                if (valor >= 2826.66 && valor <= 3751.05) {
                    irpf = ((valor - inss) * 0.15) - 354.80;
                }
                if (valor >= 3751.06 && valor <= 4664.68) {
                    irpf = ((valor - inss) * 0.225) - 636.13;
                }
                if (valor >= 4664.69) {
                    irpf = ((valor - inss) * 0.275) - 869.36;
                }



                if (valor <= 6750.000000) {
                    meses = valor * quantidade;
                    desconto = 52.70 * quantidade;
                    total = meses - desconto;
                }
                if (valor > 6750.000000) {
                    meses = 6750 * quantidade;
                    desconto = 52.70 * quantidade;
                    total = meses - desconto;
                    alert("Calculamos o MEI para o valor limite R$ 6750,00, se você ganha a cima de R$ 6750,00 não se enquadra no MEI");
                }

                liquido = valor - inss - irpf;
                receber = liquido * quantidade;

                tempo = quantidade / 12;
                tempo = parseInt(tempo);

                decimo = tempo * liquido;

                salarios = decimo + (quantidade * liquido) + liquido; //                ?????????? liquido

                ferias = ((1 / 3) * tempo) * liquido;

                fgts = (0.08 * valor) * quantidade;

                multa = 0.4 * fgts;

                totalrecebido = salarios + ferias + fgts + multa;
                
                if (totalrecebido > total) {
                    diferenca = totalrecebido - total;
                    tagmaior = "CLT";
                }
                if (totalrecebido < total) {
                    diferenca = total - totalrecebido;
                    tagmaior = "MEI";
                }
                document.getElementById("totalrecebido").innerHTML = "R$" + " " + Math.round(totalrecebido * 100) / 100;

                document.getElementById("total").innerHTML = "R$" + " " + Math.round(total * 100) / 100;

                document.getElementById("tagmaior").innerHTML = "Lucro com" + " " + tagmaior;

                document.getElementById("diferenca").innerHTML = "R$" + " " + Math.round(diferenca * 100) / 100;



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
                <tr><th>CLT<td><p id="totalrecebido"></p></td></th></tr>
                <tr><th>MEI<td><p id="total"></p></td></th></tr>
                <tr><th><p id="tagmaior"></p><td><p id="diferenca"></p></td></th></tr> 
            </table>
        </div>
    </center>
</body>
</html>
