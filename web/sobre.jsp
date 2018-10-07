<%-- 
    Document   : sobre
    Created on : 05/10/2018, 15:14:35
    Author     : morga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

            table { 
                width: 50%;
                border-collapse: collapse;
            }

            table, td, th {
                text-align: center;
                background-color: #9C9C9C;
                border: 1px solid black;
            }
            /* importação de elementos */

            /* importação do font awesome para os ícones de abrir e fechar o menu responsivo */
            @import url('https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');



            /* importação da fonte do google fonts */
            @import url('https://fonts.googleapis.com/css?family=Open+Sans'); 



            body{
                margin: 0;
                padding: 0;  
                font-family: 'Open Sans', sans-serif;
                background-color: #000000;   
            }


            .one-page-website{
                width: 100%; 
                margin: 0; 
            }


            /* 1 - estilos desktop */ 

            /* estilos menu desktop */
            .menu-desktop{
                width: 100%;
                background: -webkit-linear-gradient(left, #584b88, #ae4bcf);
                background: -o-linear-gradient(right, #584b88, #ae4bcf);
                background: -moz-linear-gradient(right, #584b88, #ae4bcf);
                background: linear-gradient(to right, #584b88, #ae4bcf);
                padding-top: 20px; 
                padding-bottom: 20px;
                margin: 0; 
                position: fixed;
            }


            /* estilos menu desktop hiperligações */ 
            .menu-desktop a{
                text-decoration: none; 
            }


            /* estilos menu desktop texto */
            .menu-desktop p{
                font-size: 16px; 
                color: #fbfbfb; 
                display: inline;
                padding: 30px 30px; 
                text-transform: uppercase;
                letter-spacing: 5px; 
                text-align: center;
            }


            /* estilos menu desktop quando o utilizador passa com o rato por cima do texto */ 
            .menu-desktop p:hover{
                color: #fbfbfb; 
            }


            /* estilos clt */
            .clt{
                width: 100%; 
                height: 100%; 
                margin: 0 auto; 
                background-color: #9C9C9C;  
                float: left;
                text-align: justify;
                padding-top: 80px; 
                padding-bottom: 40px; 
            }

            .clt h1{
                text-align: center;
                color: black;               
                font-size: 28px; 
                text-transform: uppercase;
                line-height: 45px; 
                letter-spacing: 5px;
            }

            .clt p{
                color: #000000;
                font-size: 18px; 
                line-height: 40px; 
                letter-spacing: 3px;
                padding-left: 50px; 
                padding-right: 50px;  
            }


            /* estilos MEI */
            .mei{
                width: 100%; 
                height: 100%; 
                margin: 0 auto; 
                background-color: #CCCCCC; 
                float: left;
                text-align: justify;
                padding-top: 20px; 
                padding-bottom: 40px; 
            }	

            .mei h1{
                color: black; 
                text-align: center;
                font-size: 28px; 
                text-transform: uppercase;
                line-height: 45px; 
                letter-spacing: 5px;
            }

            .mei p{
                color: #000000;
                font-size: 18px; 
                line-height: 40px; 
                letter-spacing: 3px;
                padding-left: 50px; 
                padding-right: 50px;  
            }




            /* estilos meiclt */
            .meiclt{
                width: 100%; 
                height: 100%; 
                margin: 0 auto; 
                background-color: #E8E8E8; 
                float: left;
                text-align: justify;
                padding-top: 20px; 
                padding-bottom: 40px; 
            }

            .meiclt h1{
                color: black; 
                font-size: 28px; 
                text-align: center;
                text-transform: uppercase;
                letter-spacing: 5px;
                padding-bottom: 20px; 
            }

            .meiclt p{
                color: #000000;
                font-size: 18px; 
                line-height: 40px; 
                letter-spacing: 3px;
                padding-left: 50px; 
                padding-right: 50px;  
            }

            /* estilos footer */
            .footer{
                width: 100%;   
                background-color: #f47d4a; 
                margin: 0 auto; 
                float: left;
                text-align: center;
            }


            /* estilos footer texto */ 
            .footer h6{
                color: #fbfbfb; 
                font-size: 12px; 
                text-transform: uppercase;
                letter-spacing: 3px; 
            }


            /* estilos selecionar elementos e mudar de cor */
            ::selection{
                background-color: #f47d4a
            }




            /* 2 - estilos mobile */

            /* estilos menu mobile */
            .menu-mobile{
                width: 100%; 
                height: 100%;  
                background-color: #f47d4a; 
                float: right;
                /* esconder menu mobile no desktop */ 
                display: none; 
                padding-top: 10px; 
            }


            /* estilos icon hamburguer */
            .menu-mobile .fa{
                font-size: 50px; 
                color: #fbfbfb; 
                cursor: pointer; 	
                padding-top: 10px; 
                padding-bottom: 20px;
            }


            /* estilos conteudo menu mobile */
            .menu-mobile-conteudo{
                width: 100%; 
                height: 600px; 
                background-color: #f47d4a; 	
                display: none;  
                padding-top: 50px; 
            }



            /* estilos texto menu mobile */
            .menu-mobile-conteudo p{
                list-style: none;
                color: #fbfbfb; 
                width: 100%; 
                float: left;
                text-align: center; 
                font-size: 32px; 	
                text-transform: uppercase;
                letter-spacing: 20px; 
            }




            /* 3 - media queries */  
            @media (max-width: 1024px){
                .menu-desktop{display: none;}
                .menu-mobile{display: block;}
                .sobre{padding-top: 20px;}
                .servicos{padding-top: 20px;}
                .servicos-lista li{width: 100%;}  
                .portfolio{padding-top: 20px;}
                .portfolio img{width: 100%; height: 500px;}
                .contacto{padding-top: 20px;}
            }

            ol.f {list-style-type: decimal;}
            ol.t {list-style-type: upper-roman;}
            ul.a {
                  color: #000000;
                  font-size: 18px; 
                  line-height: 40px; 
                  letter-spacing: 3px;
                  padding-right: 30px;
                  padding-left: 70px; list-style-type: circle;}        
            </style>

            <script>
                // utilizando jQuery


                // mostrar icon hamburguer em ecrãs pequenos
                function showMenu() {
                    $('.menu-mobile-conteudo').fadeIn(1000, function () {

                        // trocar icon hamburguer por icon cruz  	
                        $('.menu-mobile').html('<i class="fa fa-times" aria-hidden="true" onclick="closeMenu()"></i>');
                    });

                    // esconder o scroll. apenas visível o conteúdo do menu
                    $('body').css('overflow', 'hidden');
                }


                // esconder menu mobile no desktop
                function escondeMenuMobile() {
                    var largura = window.innerWidth;

                    if (largura > 1024) {
                        $('.menu-mobile-conteudo').fadeOut(1000);
                    }
                }


                // fechar o icon cruz 
                function closeMenu() {
                    $('.menu-mobile-conteudo').fadeOut(1000);
                    $('.menu-mobile').html('<i class="fa fa-bars" aria-hidden="true" onclick="showMenu()"></i>');
                }


                // ir até ao conteúdo da página
                function vaiAteaoConteudo(destino) {
                    $('body').css('overflow', 'scroll');
                    var destino_conteudo = "#" + destino;

                    $('html, body').animate({
                        scrollTop: $(destino_conteudo).offset().top - 40
                    }, 3000);
                }



            </script>

            <meta charset="UTF-8">
            <title>SOBRE</title>

            <!-- ligação ao jquery. em alternativa ao download do ficheiro -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

            <!-- ligação ao documento jquery. não aplicável no codepen -->
            <script type="text/javascript" src="js/jquery-3.2.1.js"></script> 

            <!-- ligação ao documento javascript. não aplicável no codepen -->
            <script type="text/javascript" src="js/one-page-website.js"></script>

            <!-- ligação ao documento font awesome css. não aplicável no codepen -->
            <link rel="stylesheet" type="text/css" href="css/font-awesome.css"> 

            <!-- ligação ao documento css. não aplicável no codepen -->
            <link rel="stylesheet" type="text/css" href="css/one-page-website.css">

            <!-- ligação ao documento google fonts css. não aplicável bo codepen --> 
            <link rel="stylesheet" type="text/css" href="fonts/stylesheet.css"> 



        </head>

        <body onresize="escondeMenuMobile()">


            <div class="one-page-website">


            <!-- one page website responsivo utilizando html, css e javascript -->

            <!-- menu desktop -->
            <nav class="menu-desktop">
                <center>
                    <a href="principal2.jsp"><p>Voltar</p></a>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-clt')"><p>CLT</p></a>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-mei')"><p>MEI</p></a>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-meiclt')"><p>MEI x CLT</p></a>
                </center>		
            </nav>		



            <!-- icon menu mobile hamburguer -->
            <nav class="menu-mobile">
                <center>
                    <p><i class="fa fa-bars" aria-hidden="true" onclick="showMenu()"></i></p>
                </center>				
            </nav>		


            <!-- menu mobile -->
            <nav class="menu-mobile-conteudo">
                <center>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-clt')"><p>CLT</p></a>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-mei')"><p>MEI</p></a>
                    <a href="javascript:void(0)" onclick="vaiAteaoConteudo('conteudo-meiclt')"><p>MEI x CLT</p></a>
                </center>		
            </nav>		


            <!-- sobre -->
            <div class="clt" id="conteudo-clt">
                <h1>CLT</h1>
                <ol class="f">
                    <h2><li>Resumo</li></h2>
                    <p>
                        A Consolidação das Leis do Trabalho, como o próprio nome deixa a entender, é uma compilação das leis trabalhistas, em vigor no Brasil, a partir de 10 de novembro de 1943, conquanto aprovada pelo Decreto-lei nº 5.452, no governo de Getúlio Vargas. Distinguindo-se como a principal fonte do direito do trabalho. Nesta abordagem, iremos verificar a ordenação legal e jurídica sobre o trabalho no Brasil, como analisar os principais elementos e normas sobre o trabalho. Bem como, elucidar as formas de cálculos que impomos no algoritmo da CLT.
                    </p>
                    <br/>

                    <h2><li>Introdução</li></h2>
                    <p>
                        Percebemos que nossa estrutura jurídica na criação de leis que orientem as relações de trabalho seguem, geralmente, exemplos práticos e reais do cotidiano dos trabalhadores.
                    </p>
                    <p>
                        Além disso, o legislador e o sistema jurídico prezam pela continuidade e organicidade das instituições produtivas. As relações de trabalho devem ter como meta uma relação de construção e preservação, onde devem permanecer as perspectivas do trabalhador frente ao empregador, para que nesta relação não possuam incertezas.
                    </p>
                    <p>
                        Integrar a força de trabalho faz parte da dignidade humana. Neste sentido, a seguridade social é um sistema que ampara o trabalhador, é uma forma de seguro que tem como meta a reintegração ao mercado de trabalho.
                    </p>
                    <p>
                        Na CLT as relações de trabalho têm seus registros sob responsabilidade do trabalhador mediante Carteira de Trabalho. Além do salário, o trabalhador, possui outras garantias, que por sua vez não podem causar prejuízos ao empregador. Tendo o trabalhador direito, a previdência, que é um fundo público ou privado de garantia de renda após a aposentadoria ou impossibilidade de trabalho.
                    </p>
                    <br/>
                    <h2><li>Consolidação das Leis do Trabalho - CLT</li></h2>
                    <p>
                        A primeira CLT surgiu pelo Decreto-Lei nº 5.452, sancionada pelo então presidente Getúlio Vargas, unificando toda a legislação trabalhista existente no Brasil. Como principal objetivo, a CLT visa a regulamentação das relações individuais e coletivas do trabalho. Hoje podemos dizer que a CLT é o resultado de 13 anos de trabalho, desde o início do Estado Novo em 1943, de destacados juristas, de sindicatos, trabalhadores e da sociedade em geral, que se empenharam em criar uma legislação trabalhista que atendesse à necessidade de proteção do trabalhador, dentro de um contexto de estado regulamentador.
                    </p><p>
                        Como uma legislação que acompanha o texto constitucional de 1988, a Consolidação das Leis do Trabalho, cuja sigla é CLT, regulamenta as relações trabalhistas, tanto do trabalho urbano quanto do rural. Desde sua publicação já sofreu várias alterações, visando adaptar o texto às nuances da modernidade. Assim, ela continua sendo o principal instrumento para regulamentar as relações de trabalho e proteger os trabalhadores.
                    </p><p>
                        Apesar das críticas que vem sofrendo, a CLT cumpre seu papel, especialmente na proteção dos direitos do trabalhador. Entretanto, pelos seus aspectos burocráticos e excessivamente regulamentador, carece de uma atualização, especialmente para simplificação de normas aplicáveis a pequenas e médias empresas.
                    </p>
                    <br/>
                    <ol class="t">
                        <h2><li>O Empregado</li></h2>
                        <br/>
                        <p>
                            O empregado como pessoa que realiza uma atividade válida e produtiva na sociedade, também tem alguns deveres que fazem parte da expectativa do empregador, como, por exemplo:
                        </p>

                        <ul class="a">
                            <li>Trabalhar com dedicação;</li>
                            <li>Acatar e cumprir ordens;</li>
                            <li>Não faltar ao trabalho;</li>
                            <li>Usar medidas de proteção;</li>
                            <li>Respeitar chefes e colegas;</li>
                            <li>Não estragar o material de trabalho.</li>
                        </ul>
                        <p>
                            Este é um parâmetro ético que é referenciado como contrapartida do trabalhador. É o que o empregador necessita ao aceitar que mais alguém compartilhe do sistema de produção com sua força de trabalho.
                        </p>
                        <br/>
                        <h2><li>O Empregador</li></h2>
                        <p>As relações de trabalho prescindem também de algumas ações ou requisitos dos empregadores, sejam estes pessoas físicas ou empresas. É indicado que estes sejam realizados para que o trabalhador conheça também as suas atribuições, responsabilidades e direitos. Alguns deveres do empregador:</p>
                        <ul class="a">
                            <li>Assinar a CTPS do empregado;</li>
                            <li>Não pagar salário inferior ao mínimo e sem atrasos;</li>
                            <li>Respeitar o repouso semanal remunerado do empregado;</li> 
                            <li>Não discriminar os funcionários;</li> 
                            <li>Respeitar os direitos trabalhistas.</li>
                        </ul>
                        <br/>
                        <h2><li>A Carteira de Trabalho e Previdência Social - CTPS</li></h2>
                        <p>
                            O contrato de trabalho é um acordo de vontade entre o empregado e o empregador. Como tal, ela contribui para assegurar o futuro do trabalhador e seus dependentes. A CTPS garante seguro-desemprego, férias e saque do Fundo de Garantia por Tempo de Serviço (FGTS).
                        </p>
                        <br/>
                        <h2><li>Salário Mínimo</li></h2>
                        <p>O salário mínimo é o valor pago pelo empregador ao trabalhador como contraprestação pelos serviços prestados e deve ser pago até o 5º dia útil do mês seguinte ao mês trabalhado. O valor do salário registrado na CTPS deve corresponder ao salário efetivamente recebido pelo trabalhador. O registro na CTPS de salário inferior ao que é pago ao trabalhador é fraude e é conhecido como salário por fora.</p>
                        <p>A constituição Federal determina que todo trabalhador precisa receber pelo menos um salário mínimo por até 44 horas semanais trabalhadas.</p>
                        <br/>
                        <h2><li>13º salário</li></h2>
                        <p>Todo trabalhador tem direito ao 13º salário, inclusive o doméstico, geralmente pago em duas parcelas uma em novembro e outra em dezembro. É uma gratificação criada por lei e equivale a exatamente um salário mensal.</p>
                        <br/>  
                        <h2><li>Fundo de Garantia por Tempo de Serviço – FGTS</li></h2>
                        <p>O FGTS é um direito concedido a todos trabalhadores com carteira assinada. Deste modo, todo empregador tem direito a uma conta de FGTS na Caixa Econômica Federal, na qual o empregador deve depositar, todos os meses, um percentual de 8% do salário pago ou devido ao trabalhador. </p>
                        <br/>
                        <h2><li>Instituto Nacional do Seguro Social - INSS</li></h2>
                        <p>O INSS é um órgão do Ministério da Previdência Social, ligado diretamente ao Governo, criado em 1988. O INSS é o órgão responsável por receber as contribuições dos indivíduos, e tem como função fazer os pagamentos de aposentadorias, auxílio-doença, pensão por morte, auxílio-acidente, e outros vários benefícios previsto por lei.</p>
                        <p>A previdência social é um seguro que as pessoas contribuem durante o período trabalhado, e é o INSS que repassa a renda a pessoas que não tem outras fontes de renda no momento, independente do motivo. Os funcionários tem o valor do INSS descontados diretamente na sua folha de pagamento, e os valores a serem descontado vão depender do salário de cada um, e podem variar de 8% a 11%, quanto maior o salário, maior é o desconto.</p>
                        <br/>
                        <h2><li>Imposto de Renda Pessoa Física - IRPF</li></h2>
                        <p>O IRPF é o valor anual descontado do rendimento do trabalhador ou da empresa e entregue ao governo federal. Os funcionários tem o valor do IRPF descontados diretamente na sua folha de pagamento, e os valores a serem descontados vão depender do salário de cada um, acima do salário de R$ 1903,98, e podem variar de 7,5% a 27,5%, quanto maior o salário, maior é o desconto. O órgão responsável pela recolha do imposto de renda no Brasil é a Receita Federal. </p>
                        <br/>
                        <h2><li>Dispensa sem justa causa</li></h2>
                        <p>Quando o fim do contrato ocorre por vontade do empregador, o empregado tem o direito ao aviso prévio, férias vencidas, acrescidas de 1/3 de férias proporcionais, décimo terceiro salário proporcional, além de multa de 40% sobre o FGTS, que é a penalidade para dispensa imotivada. O empregado também tem o direito de sacar o FGTS e solicitar o recebimento do seguro-desemprego.</p>
                        <br/>
                        <h2><li>Dispensa por justa causa</li></h2>
                        <p>Quando o empregado comete faltas graves, como desonestidade ou má conduta, violação de segredo de empresa, alcoolismo, agressão física e à honra contra colegas, chefe e empregador, dentre outras, como previsto no artigo 482 da CLT, o empregado receberá apenas o saldo de salário e os períodos de férias vencidas.</p>
                        <br/>
                        <h2><li>Cálculo CLT</li></h2>
                        <p>No nosso código, do cálculo do CLT, precisamos levar em consideração algumas variáveis, para formulação do salário líquido. Tendo em vista o salário bruto, precisamos descontar o INSS e o IRPF, para obtermos o salário líquido mensal.</p>
                        <p>O cálculo do INSS é apenas a multiplicação do salário bruto pela alíquota, onde a alíquota pode ser vista na tabela do INSS. O cálculo do IRPF é dado da seguinte forma: IRPF=[(bruto - INSS)*alíquota] - (parcela a deduzir), onde a alíquota e a parcela a deduzir podem ser vistos na tabela do IRPF. Dessa forma, o salário líquido, é obtido, pela soma do valor do INSS e do IRPF, subtraído do salário bruto.</p>
                        <p>No cálculo do período de permanência do empregado, precisamos levar em consideração, algumas variáveis como o cálculo do 13º salário proporcional, um salário a mais pela despensa, 1/3 de férias proporcional, FGTS sobre um percentual de 8% do salário mensal e a multa sobre 40% do FGTS total. Todas essas variáveis são adicionadas para adquirirmos o total a ser recebido, durante uma quantidade de meses trabalhados, sob demissão.</p>
                        <center>
                            <table border="0" cellspacing="0">
                                <thead>
                                    <tr>
                                        <td colspan="2" align="center" valign="middle" width="700"><strong>Tabela para cálculo do INSS</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td align="center">Salário de Contribuição (R$)</td>
                                        <td align="center">Alíquota</td>
                                    </tr>
                                    <tr>
                                        <td align="center">Até R$ 1.693,72</td>
                                        <td align="center">8%</td>
                                    </tr>
                                    <tr>
                                        <td align="center">De R$ 1.693,73 a R$ 2.822,90</td>
                                        <td align="center">9%</td>
                                    </tr>
                                    <tr>
                                        <td align="center">De R$ 2.822,91 até R$ 5.645,80</td>
                                        <td align="center">11%</td>
                                    </tr>
                                </tbody>
                            </table>
                            <center><p>Tabela: Cálculo INSS [Fonte: <a href="https://www.inss.gov.br/servicos-do-inss/calculo-da-guia-da-previdencia-social-gps/tabela-de-contribuicao-mensal/">INSS</a>]</p></center>
                            <br/>

                            <table>
                                <thead>
                                    <tr>
                                        <td colspan="3" align="center" valign="middle" width="200"><strong>Tabela para cálculo do IRPF</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            Base de cálculo (R$)
                                        </td>
                                        <td>
                                            Alíquota (%)
                                        </td>
                                        <td>
                                            Parcela a deduzir do IRPF (R$)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Até (1.903,98)
                                        </td>
                                        <td>
                                            -
                                        </td>
                                        <td>
                                            -
                                        </td>
                                    </tr><tr><td>
                                            Acima de 1.903,98até 2.826,65
                                        </td>
                                        <td>
                                            7,5
                                        </td>
                                        <td>
                                            142,79850
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Acima de 2.826,65 até 3.751,05 
                                        </td>
                                        <td>
                                            15
                                        </td>
                                        <td>
                                            354,79725 
                                        </td>
                                    </tr><tr><td>
                                            Acima de 3.751,05  até 4.664,68
                                        </td>
                                        <td>
                                            22,5
                                        </td>
                                        <td>
                                            636,12600
                                        </td>
                                    </tr><tr><td>
                                            Acima de 4.664,68
                                        </td>
                                        <td>
                                            27,5
                                        </td>
                                        <td>
                                            869,36
                                        </td>
                                    </tr></tbody></table>

                            <center><p>Tabela: Cálculo IRPF [Fonte: <a href="http://idg.receita.fazenda.gov.br/acesso-rapido/tributos/irpf-imposto-de-renda-pessoa-fisica">IRPF</a>]</p></center>

                        </center>

                    </ol>
                    <br/>
                    <h2><li>Conclusão</li></h2>
                    <p>A Consolidação das Leis Trabalhistas define os limites e condições para a ação contratual do trabalho. O que podemos concluir, é que nem todos os interesses estão incluídos no contrato de trabalho. Onde as condições e produtividade, segurança, entre outros, são limites que vão da relação direta do empregador com o funcionário, como também estão baseadas no bom senso.</p>


                </ol>    


            </div>


            <div class="mei" id="conteudo-mei">

                <h1>MEI</h1>
                <ol class="f">
                    <h2><li>Resumo</li></h2>
                    <p>Microempreendedor individual (MEI) foi criado no Brasil a partir de 1 de julho de 2008 para as pessoas que trabalham por sua conta própria até um certo lucro se legalizarem e passar a ter benefícios.</p>
                    <br/>

                    <h2><li>Introdução</li></h2>
                    <p>O microempreendedor no Brasil, é o empresário individual a que se refere o artigo 966 do código civil brasileiro. Atua geralmente como empresa virtual “LTDA”, através de formas que independem de estabelecimento fixo, como internet, porta-a-porta, máquinas automáticas, correios e outros meios virtuais previstos por leis. O MEI trabalha por conta própria e se legaliza como pequeno empresário, desde que fature no máximo R$ 81.000.00 por ano, ou seja R$ 6.750,00 mensal, não tenha participação em outra empresa como sócio ou titular e tenha no máximo um empregado contratado que receba o salário mínimo ou o piso da categoria.</p>
                    <p>Esta é uma ótima opção para o trabalhador informal, já que tornando-se um MEI, terá CNPJ, o que lhe proporcionará mais facilidade para abertura de conta bancária, contratos com órgãos públicos, financiamentos e emissão de notas fiscais. </p>
                    <p>O microempreendedor individual está isento de tributos federais (Imposto de Renda, PIS, Cofins, IPI, CSLL) contudo, há outros valores a pagar. O MEI deverá pagar um valor fixo mensal de R$ 52,70, este valor é correspondentes ao INSS, onde R$ 5,00 (Município – Prestadores de Serviço) ou R$ 1,00 (Estado – Comercio e Indústria). O valor de INSS corresponde a 5% do salário mínimo e, portanto, pode ser reajustado. Podem ser cobradas também taxas estaduais/municipais, mas essas dependem de seu estado e município e da atividade exercida.</p>
                    <p>Com este pequeno pagamento mensal, o microempreendedor individual – MEI além de trabalhar de forma legalizada, tem direito a benefícios previdenciários como auxílio-maternidade, auxílio-doença, aposentadoria, entre outros.</p>

                    <h2><li>Conclusão</li></h2>
                    <p>Diante disto, percebemos que o MEI é uma excelente escolha para pessoas que desejam trabalhar de forma autônoma/individual, pois além de não haver redução do salário bruto ela ainda possui alguns benefícios, não tantos se comparado a CLT, entretanto, este empreendedor consegue gerenciar seu tempo de trabalho de forma bem mais flexível.</p>
                </ol>


            </div>							


            <div class="meiclt" id="conteudo-meiclt">
                <h1>MEI x CLT</h1>
                <p>De modo geral, ao pesquisarmos sobre CLT, percebemos que na literatura este regime é entendido como uma forma de proteção para o trabalhador, cujo evita abuso por partes das empresas. Porém o que concluímos, é que se formos contratados com CLT, não podemos pensar em uma garantia de serviço, pois a possibilidade de demissão acontece. Na CLT precisamos acatar ordens, trabalharmos sem liberdade de horários, mas temos direito a 13º salário, 1/3 de férias, FGTS e previdência.</p>
                <p>Atuarmos como empresa, na modalidade de Microempreendedor Individual, se tornou mais fácil. Essa categoria garante uma carga tributária reduzida, além de termos uma maior liberdade para definirmos nossos horários, escolhermos nossos clientes e tarefas. O problema que visualizamos no MEI é a falta de salário fixo, o que pode inferir em um mês ganharmos bem e em outros não termos rendimentos consideráveis. </p>
                <p>Para sabermos qual regime de trabalho que gera maior remuneração, programamos uma página WEB de cálculo de MEIxCLT. Dessa forma, optarmos por MEI ou CLT depende muito de nosso perfil frente à empresa, ou seja, podemos ser o empregador ou o empregado. O que percebemos no mercado, é que os empregadores estão preferindo pagar seus funcionários por metas atingidas e não mais por hora de trabalho.  </p>
                <p>No algoritmo, na parte do cálculo da diferença entre MEI e CLT, a iniciativa é podermos prever perante um tempo ou salário, se compensaria trabalharmos com MEI ou com CLT. Para isso, usamos de comparações entre o total recebido do MEI e o total recebido do CLT. Dessa forma, introduzimos tags para nos responder que condição nos geraria lucro.</p>

            </div>
        </div>
    </body>
</html>
