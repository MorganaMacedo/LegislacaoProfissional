<%-- 
    Document   : principal2
    Created on : 03/10/2018, 14:11:18
    Author     : morga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

            @import url('https://fonts.googleapis.com/css?family=Bree+Serif');
            * {
                margin: 0 auto;
                padding: 0 auto;
                font-family: 'Open Sans', sans-serif;
                font-size: 12px;
            }
            body,
            html {
                height: 100%;
            }
            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                font-family: 'Bree Serif', serif;
            }
            .menu {
                position: fixed;
                z-index: 2;
                width: 100%;
                height: 80px;
                background: #fff;
                display: flex;
                flex-wrap: no-wrap;
                justify-content: center;
                align-items: center;
                align-content: center;
            }
            .menu-hamburguer {
                max-height: 100%;
            }
            .menu-hamburguer img {
                width: 100%;
                height: 30px;
            }
            .fundo {
                display: flex;
                flex-direction: column;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                align-content: center;
                min-height: 100%;
            }
            .fundo-cor-degrade-roxo {
                background: -webkit-linear-gradient(left, #584b88, #ae4bcf);
                background: -o-linear-gradient(right, #584b88, #ae4bcf);
                background: -moz-linear-gradient(right, #584b88, #ae4bcf);
                background: linear-gradient(to right, #584b88, #ae4bcf);
                width: 100%;
            }
            .fundo-teste2 {
                background: #fff;
                width: 100%;
                padding-top:100px;
                padding-bottom:100px;
            }
            .logo {
                margin: 0 auto;
                text-align: center;
                text-align: center;
                padding-top: 100px;
            }
            .logo img {
                width: 400px;
                max-width: 90%;
            }
            .logo h1 {
                color: #fff;
                text-align: center;
                font-size: 22px;
                font-weight: 0;
            }
            .imagem-responsiva {
                max-width: 100%;
            }
            .menu-opcoes {
                flex-grow: 1;
            }
            .menu-principal {
                flex-grow: 100;
            }
            .menu-principal ul {
                width: 90%;
                text-align: right;
                justify-content: flex-end;
            }
            .menu-principal ul li {
                display: inline-block;
            }
            .menu-principal ul li a {
                text-decoration: none;
                text-transform: uppercase;
                color: #4e4646;
                margin-right: 20px;
                transition: 0.5s;
                borde-color: #ae4bcf;
            }

            .menu-label {
                font-size: 1em;
                cursor: pointer;
                display: inline-block;
                transition: 1s;
                z-index: 99;
            }
            .menu-input {
                display: none;
                transition: 1s;
            }
            .fundo-menu {
                background: #ccc;
                transition: 1s;
            }
            .menu-content {
                width: 100%;
                height: 90%;
                position: absolute;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                align-content: center;
                transition: 1s;
                top: 80px;
            }
            .menu-input:not(checked) ~ .menu-content {
                display: none;
                transition: 1s;
            }
            .menu-input:checked ~ .menu-content {
                display: block;
                transition: 1s;
            }
            .menu-list {
                text-align: center;
                flex-grow: 1;
                background: rgba(0, 0, 0, 0.9);
                height: 100vh;
                margin: 0;
                padding: 0;
                width: 100%;
            }
            .menu-list-item {
                flex-grow: 1;
                margin: 0;
                padding: 0;
            }
            .menu-list-item a {
                font-family: 'Bree Serif', serif;
                margin: 0;
                padding: 0;
                color: #fff;
                font-size: 40px;
                text-decoration: none;
                transition: 0.6s;
                text-transform: uppercase;
            }
            .menu-list-item a:hover,
            .menu-list-item a:focus {
                font-size: 44px;
                -webkit-animation: example 2s infinite;
                animation: example 2s infinite;
            }
            .fechar-lado{
                text-align: right;
            }
            .fechar {
                color: #ae4bcf;
                border: none;
                background: transparent;
                font-size: 22px;
                padding: 1% 3%;
                border-radius: 10px;
                -webkit-animation: example 5s infinite;
                animation: example 5s infinite;
            }
            @keyframes example {
                0% {
                    color: #584b88;
                }
                25% {
                    color: #ae4bcf;
                }
                50% {
                    color: #584b88;
                }
                75% {
                    color: #ae4bcf;
                }
                100% {
                    color: #584b88;
                }
            }
            @media only screen and (max-width: 500px) {
                .menu-principal ul {
                    display: none;
                }
                .menu-list {
                    background: rgba(0, 0, 0, 0.9);
                }
                .menu-list-item a {
                    font-size: 20px!important;
                }
                .menu-list-item a:hover,
                .menu-list-item a:focus {
                    font-size: 22px!important;
                }
            }
            .tela {
                background: #fff;
                width: 500px;
                max-width: 90%;
                box-shadow: 0px 0px 20px 5px rgba(0, 0, 0, 0.2);
                border-radius: 6px;
                margin-top: 50px;
                margin-bottom: 50px;
            }
            .toolbar {
                width: 100%;
                height: 50px;
                background: #E5E3E5;
                transition: 0.6s;
                border-top-right-radius: 6px;
                border-top-left-radius: 6px;
            }
            .tab {
                height: 100%;
                width: 100%;
                display: flex;
                align-items: center;
                justify-content: flex-start;
                float: left;
                text-align: left;
                transition: 0.6s;
            }
            .tab ul {
                margin: 0;
                padding: 0;
                padding-left: 5%;
            }
            .tab ul li {
                display: inline-block;
                width: 20px;
                height: 20px;
                border-radius: 50%;
            }
            .vermelho {
                background: #FF4E4E!important;
                transition: 0.9s;
            }
            .amarelo {
                background: #FFB92D!important;
                transition: 0.9s;
            }
            .verde {
                background: #00CA3B!important;
                transition: 0.9s;
            }
            .area {
                width: 90%;
                margin-top: 0px;
                padding-bottom: 20px;
            }
            .img {
                width: 100%;
            }
            .flecha {
                text-align: center;
            }
            .flecha-svg {
                width: 60px;
                height: 70px;
                position: relative;
                animation-name: flecha;
                animation-duration: 2s;
                animation-iteration-count: infinite;
                text-align: center;
            }
            @keyframes flecha {
                0% {
                    top: 0px;
                }
                50% {
                    top: 20px;
                }
                100% {
                    top: 0px;
                }
            }

            .fundo-teste2 p {
                font-family: 'Bree Serif', serif;
                text-align:center;
                font-size:22px;
                opacity:0.5;
                transition:1s
            }
            .fundo-teste2 p:hover {
                opacity:1
            }

            .fundo-teste2 a {
                font-family: 'Bree Serif', serif;
                font-size:22px;
                text-decoration:none
            }

        </style>
        <title>Principal</title>
    </head>
    <body>
        <form>
            <div class="menu-rel">
                <div class="menu">
                    <div class="menu-opcoes">
                        <div class="menu-hamburguer">
                            <input type="checkbox" value="selected" id="menu-hamburguer" class="menu-input">
                            <label for="menu-hamburguer" class="menu-label">
                                <img src="http://svgshare.com/i/Jj.svg">
                            </label>
                            <div role="menu" id="menuid" class="menu-content">
                                <div class="menu-list">	
                                    <div class="menu-list-item fechar-lado"><button class="fechar" type="reset">
                                            <i class="fa fa-times-circle fa-2x" aria-hidden="true"></i></button>
                                    </div>
                                    <div class="menu-list-item"><a href="sobre.jsp">Sobre</a></div>
                                    <div class="menu-list-item"><a href="salario.jsp">CLT</a></div>
                                    <div class="menu-list-item"><a href="mei.jsp">MEI</a></div>
                                    <div class="menu-list-item"><a href="meiclt.jsp">MEI x CLT</a></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="menu-principal">
                        <ul>
                            <li><a href="javascript:void(0);">Legislação Profissional</a></li>
                            
                        </ul>
                    </div>

                </div>
            </div>
        </form>
        <div class="fundo fundo-cor-degrade-roxo">
            <div class="div logo">
                <p><h1>Universidade Católica de Pelotas</h1></p>
                <p><h1>Engenharia de Computação</h1></p>
            </div>
            <div class="div tela">
                <div class="toolbar">
                    <div class="tab">
                        <ul>
                            <li class="vermelho"></li>
                            <li class="amarelo"></li>
                            <li class="verde"></li>
                        </ul>
                    </div>
                </div>
                <div class="area">
                    <div class="img-grid">
                        <center>
                        <img src="comp.png" class="imagem-responsiva">
                        </center>
                    </div>
                </div>
            </div>
            <div class="div flecha">
                <div class="flecha-svg">
                    <img src="https://gustavoquinalha.github.io/levecomoplumacss/img/flecha.svg" class="img">
                </div>
            </div>
        </div>
        <div class="fundo-teste2">
            <p>Desenvolvido por <a href="https://github.com/MorganaMacedo/LegislacaoProfissional">Morgana Macedo e Michel Madruga</a></p>
        </div>


    </body>
</html>
