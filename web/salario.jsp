<%-- 
    Document   : salario
    Created on : 02/09/2018, 03:55:07
    Author     : morga
--%>
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

            }
            td:nth-child(even) {
                border: 1px solid black;
                border-collapse: collapse;
                text-align: left;
                padding: 4px;
                height: 50px;
                width: 50%;
                background-color: #CCC;

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
                var totalinss, totalirpf, inss, irpf, receber, tempo, decimo, salarios, ferias, fgts, multa, totalrecebido;
                var djcausa, dsjcausa, jcausa, prejuizo, liquido, taginss, tagirpf;

                var t = quantidade;

                if (valor <= 1693.72) {
                    inss = 0.08 * valor;
                    taginss = 8;
                }
                if (valor >= 1693.73 && valor <= 2822.90) {
                    inss = 0.09 * valor;
                    taginss = 9;
                }
                if (valor >= 2822.91 && valor <= 5645.80) {
                    inss = 0.11 * valor;
                    taginss = 11;
                }
                if (valor > 5645.80) {
                    inss = 0.11 * 5645.80;
                    taginss = 11;
                }
                if (valor <= 1903.98) {
                    irpf = 0;
                    tagirpf = 0;
                }
                if (valor >= 1903.99 && valor <= 2826.65) {
                    irpf = ((valor - inss) * 0.075) - 142.80;
                    tagirpf = 7.5;
                }
                if (valor >= 2826.66 && valor <= 3751.05) {
                    irpf = ((valor - inss) * 0.15) - 354.80;
                    tagirpf = 15;
                }
                if (valor >= 3751.06 && valor <= 4664.68) {
                    irpf = ((valor - inss) * 0.225) - 636.13;
                    tagirpf = 22.5;
                }
                if (valor >= 4664.69) {
                    irpf = ((valor - inss) * 0.275) - 869.36;
                    tagirpf = 27.5;
                }

                liquido = valor - inss - irpf;

                receber = liquido * quantidade;

                tempo = quantidade / 12;

                tempo = parseInt(tempo);

                decimo = tempo * liquido;

                salarios = decimo + (quantidade * liquido) + liquido; 

                ferias = ((1 / 3) * tempo) * liquido;

                fgts = (0.08 * valor) * quantidade;

                multa = 0.4 * fgts;

                totalrecebido = salarios + ferias + fgts + multa;

                totalinss = inss * quantidade;

                totalirpf = irpf * quantidade;

                jcausa = salarios + ferias;

                prejuizo = totalrecebido - jcausa;

                dsjcausa = liquido + ((1 / 3) * liquido) + fgts + multa;

                djcausa = liquido + ((1 / 3) * liquido);

                document.getElementById("taginss").innerHTML = "INSS" + " (" + taginss + "%)";
                document.getElementById("inss").innerHTML = "R$" + " " + Math.round(inss * 100) / 100;
                document.getElementById("tagirpf").innerHTML = "IRPF" + " (" + tagirpf + "%)";
                document.getElementById("irpf").innerHTML = "R$" + " " + Math.round(irpf * 100) / 100;
                document.getElementById("liquido").innerHTML = "R$" + " " + Math.round(liquido * 100) / 100;
                document.getElementById("t").innerHTML = "Relativo a" + " " + t + " " + "meses";
                document.getElementById("totalinss").innerHTML = "R$" + " " + Math.round(totalinss * 100) / 100;
                document.getElementById("totalirpf").innerHTML = "R$" + " " + Math.round(totalirpf * 100) / 100;
                document.getElementById("decimo").innerHTML = "R$" + " " + Math.round(decimo * 100) / 100;
                document.getElementById("salarios").innerHTML = "R$" + " " + Math.round(salarios * 100) / 100;
                document.getElementById("ferias").innerHTML = "R$" + " " + Math.round(ferias * 100) / 100;
                document.getElementById("fgts").innerHTML = "R$" + " " + Math.round(fgts * 100) / 100;
                document.getElementById("multa").innerHTML = "R$" + " " + Math.round(multa * 100) / 100;
                document.getElementById("totalrecebido").innerHTML = "R$" + " " + Math.round(totalrecebido * 100) / 100;
                document.getElementById("dsjcausa").innerHTML = "R$" + " " + Math.round(dsjcausa * 100) / 100;

                document.getElementById("t1").innerHTML = "Relativo a" + " " + t + " " + "meses";
                document.getElementById("totalinss1").innerHTML = "R$" + " " + Math.round(totalinss * 100) / 100;
                document.getElementById("totalirpf1").innerHTML = "R$" + " " + Math.round(totalirpf * 100) / 100;
                document.getElementById("decimo1").innerHTML = "R$" + " " + Math.round(decimo * 100) / 100;
                document.getElementById("salarios1").innerHTML = "R$" + " " + Math.round(salarios * 100) / 100;
                document.getElementById("ferias1").innerHTML = "R$" + " " + Math.round(ferias * 100) / 100;
                document.getElementById("jcausa").innerHTML = "R$" + " " + Math.round(jcausa * 100) / 100;
                document.getElementById("prejuizo").innerHTML = "R$" + " " + Math.round(prejuizo * 100) / 100;
                document.getElementById("djcausa").innerHTML = "R$" + " " + Math.round(djcausa * 100) / 100;

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
                <center>
                    <thead>
                        <tr><th>Relativo a um mês </th><td>Valor</td></tr>
                    </thead>
                </center>
                <tr><th><p id="taginss"></p><td><p id="inss"></p></td></th></tr>
                <tr><th><p id="tagirpf"></p> <td><p id="irpf"></p></td></th></tr>
                <tr><th>Líquido <td><p id="liquido"></p></td></th></tr>


            </table>
            <br/>
            <br/>
            <br/>

            <center><h4>Dispensa sem Justa Causa</h4></center>
            <table>
                <tr><th><p id="t"><td>Valor</td></th></tr>
                <tr><th>Total INSS <td><p id="totalinss"></p></td></th></tr>
                <tr><th>Total IRPF <td><p id="totalirpf"></p></td></th></tr> 
                <tr><th>Décimo <td><p id="decimo"></p></td></th></tr>
                <tr><th>Salários <td><p id="salarios"></p></td></th></tr>
                <tr><th>Férias <td><p id="ferias"></p></td></th></tr>
                <tr><th>FGTS <td><p id="fgts"></p></td></th></tr>
                <tr><th>Multa FGTS <td><p id="multa"></p></td></th></tr>
                <tr><th>Total Recebido <td><p id="totalrecebido"></p></td></th></tr>
                <tr><th>Demissão: a receber <td><p id="dsjcausa"></p></td></th></tr>

            </table>


            <br/>
            <br/>
            <br/>
            <center><h4>Dispensa por Justa Causa</h4></center>

            <table>
                <tr><th><p id="t1"><td>Valor</td></th></tr>
                <tr><th>Total INSS <td><p id="totalinss1"></p></td></th></tr>
                <tr><th>Total IRPF <td><p id="totalirpf1"></p></td></th></tr> 
                <tr><th>Décimo <td><p id="decimo1"></p></td></th></tr>
                <tr><th>Salários<td><p id="salarios1"></p></td></th></tr>
                <tr><th>Férias<td><p id="ferias1"></p></td></th></tr>
                <tr><th>FGTS<td>-</td></th></tr>
                <tr><th>Multa FGTS<td>-</td></th></tr>
                <tr><th>Total Recebido <td><p id="jcausa"></p></td></th></tr>
                <tr><th>Prejuízo Justa Causa<td><p id="prejuizo"></p></td></th></tr>
                <tr><th>Demissão: a receber<td><p id="djcausa"></p></td></th></tr>

            </table>
        </div>
    </center>  





</body>
</html>