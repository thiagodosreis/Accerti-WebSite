<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Controles/PreLoader.ascx" TagName="PreLoader" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="author" content="ACCERTI Tecnologia Digital">
    <title>Accerti Tecnologia Digital</title>
    <meta name="keywords" content="Desenvolvemos sistemas, Web Site, Sistema de Gestão Empresarial (ERP) e Mobilidade, .Net, Php, Jsp, Web Services, ADVPL (Microsiga), CSM, ERP, Criação de Web Sites, Desenvolvimento modular de Sistema,	Web Sites B2B e B2C, Integração com Web Site,Divulgação de Web Sites,Customizações e Suporte em ERP, Microsiga, Registro e Hospedagem, Mobilidade, E-Learning,E-Commerce, Intranet e Extranet, Sistema de Automação de Força de Venda,Help Desk,Integração com sistema local e web site" />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900'
        rel='stylesheet' type='text/css'>
    <!-- Files Style -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="css/prettyPhoto.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
		<script src="./js/html5shiv.js"></script>
		<script src="./js/respond.min.js"></script>
	<![endif]-->
    <!-- Favicons -->
    <link rel="shortcut icon" href="fav.ico" type="image/x-icon" />
    <link href="fav.ico" type="image/x-icon" rel="icon" />
    <script>
        function limparPadrao(campo) {
            if (campo.value == campo.defaultValue) {
                campo.value = "";
            }
        }

        function escreverPadrao(campo) {
            if (campo.value == "") {
                campo.value = campo.defaultValue;
            }
        }
        function validacontato() {

            if (document.getElementById('<%= txtNome.ClientID %>').value == 'Nome' || document.getElementById('<%= txtNome.ClientID %>').value == 'nome') {
                alert('Preencha o campo Nome!');
                document.getElementById('<%= txtNome.ClientID %>').focus();
                return false;
            }

            if (document.getElementById('<%= txtEmail.ClientID %>').value == 'E-mail' || document.getElementById('<%= txtEmail.ClientID %>').value == 'e-mail') {
                alert('Preencha o campo E-mail!');
                document.getElementById('<%= txtEmail.ClientID %>').focus();
                return false;
            }

            if (document.getElementById('<%= txtTel.ClientID %>').value == 'Telefone' || document.getElementById('<%= txtTel.ClientID %>').value == 'telefone') {
                alert('Preencha o campo Telefone!');
                document.getElementById('<%= txtTel.ClientID %>').focus();
                return false;
            }

            if (document.getElementById('<%= txtAssunto.ClientID %>').value == 'Assunto' || document.getElementById('<%= txtAssunto.ClientID %>').value == 'assunto') {
                alert('Preencha o campo Assunto!');
                document.getElementById('<%= txtAssunto.ClientID %>').focus();
                return false;
            }

            if (document.getElementById('<%= txtMensagem.ClientID %>').value == 'Mensagem' || document.getElementById('<%= txtMensagem.ClientID %>').value == 'mensagem') {
                alert('Preencha o campo Mensagem!');
                document.getElementById('<%= txtMensagem.ClientID %>').focus();
                return false;
            }

            return true;
        }

    </script>
</head>
<body id="wpdesk-body-page">
    <form id="Form1" method="post" runat="server" action="default.aspx#section-contact" onsubmit="return validacontato()">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <!-- Static navbar -->
        <header id="wpdesk-header-page" class="navbar navbar-default navbar-fixed-top" style="background: #FFFFFF">
            <div class="container">

                <div id="wpdesk-navbar-header" class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a id="wpdesk-navbar-brand" class="navbar-brand retina" href="#">
                        <img alt="" title="" class="img-responsive" src="images/logo-vermelho-new.jpg" data-at2x="./images/logo-vermelho-new.jpg" style="width: 200px;" />
                    </a>
                </div>
                <!-- /#wpdesk-navbar-header -->

                <div class="navbar-collapse collapse">

                    <ul class="nav navbar-nav navbar-right">
                        <li class="active displaynone"><a href="#wpdesk-Carousel">home</a></li>
                        <li><a href="#empresa">empresa</a></li>
                        <li><a href="#solucoes">produtos & soluções</a></li>
                        <li><a href="#tecnologia">tecnologia</a></li>
                        <li><a href="#section-works">portifólio</a></li>
                        <li><a href="#section-clients">clientes</a></li>
                        <li><a href="#section-contact">contato</a></li>
                    </ul>

                </div>
                <!--/.nav-collapse -->

            </div>
            <!-- /.container -->
        </header>
        <!-- /#wpdesk-header-page -->
        <!-- Carousel -->
        <div id="wpdesk-Carousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#wpdesk-Carousel" data-slide-to="0" class="active"></li>
                <li data-target="#wpdesk-Carousel" data-slide-to="1"></li>
                <li data-target="#wpdesk-Carousel" data-slide-to="2"></li>
                <li data-target="#wpdesk-Carousel" data-slide-to="3"></li>
            </ol>
            <div class="carousel-inner">
                <!-- Carousel Slide 1 -->
                <div id="slide-1" class="item active" style="height: 428px!important; background: url(images/bg-1.jpg) center center no-repeat;">
                    <div class="container">
                        <div class="col-md-6" style="float: right; margin-top: -10px;">
                            <h2 style="font-weight: normal; text-align: center;">
                                <b style="font-size: 30px;">
                                    <img src="images/AccertiERP-branco.png" style="width: 300px;" /></b><br>
                                Gestão Empresarial: Ideal para pequenas e médias empresas. Controle integrado de
                            Compras, Estoque, Financeiro, Serviços e Faturamento (NF-e e NFS-e)</h2>
                            <a href="http://www.accerti.com.br/erp" class="link-demo"></a>
                        </div>
                        <div class="col-md-6">
                        </div>
                    </div>
                </div>
                <div id="slide-2" class="item" style="height: 428px!important; background: url(images/bg-2.jpg) center center no-repeat;">
                    <div class="container">
                        <div class="col-md-6" style="float: right; margin-top: -20px;">
                            <h2 style="font-weight: normal; text-align: center; color: #034f7c">
                                <b style="font-size: 30px; color: #034f7c">
                                    <img src="images/Accerti_CRM.png" style="width: 300px;" /></b><br>
                                CRM como Serviço: Tenha total controle das prospecções do seu negócio. Gerencie
                            sua força de vendas e aumente suas vendas na nuvem.<br>
                            </h2>
                            <a href="default.aspx#solucoes" class="link-demo"></a>
                        </div>
                    </div>
                    <!-- /.container -->
                </div>
                <!-- /#slide-2 -->
                <div id="slide-3" class="item" style="height: 428px!important; background: url(images/bg-4.jpg) center center no-repeat;">
                    <div class="container">
                        <div class="col-md-6" style="float: right; margin-top: -20px;">
                            <h2 style="font-weight: normal; color: #fff">
                                <b style="font-size: 30px; color: #fff">
                                    <img src="images/AccertiPDV-branco.png" style="width: 300px;" /></b><br>
                                Portal de Representantes Comerciais integrado a ERP líderes de mercado, como o sistema
                            Protheus da TOTVS.
                            <br>
                            </h2>
                            <a href="default.aspx#solucoes" class="link-demo"></a>
                        </div>
                    </div>
                    <!-- /.container -->
                </div>
                <!-- /#slide-2 -->
                <div id="slide-4" class="item" style="height: 428px!important; background: url(images/bg-3.jpg) center center no-repeat;">
                    <div class="container">
                        <div class="col-md-6" style="float: right; margin-top: -20px; text-align: center;">
                            <h2 style="font-weight: normal; color: #fff; text-align: center;">
                                <b style="font-size: 30px; color: #fff">
                                    <img src="images/AccertiCMS-branco.png" style="width: 300px;" /></b><br>
                                Sistema de Gerenciamento de Conteúdo com layout totalmente personalizado.
                            <br>
                            </h2>
                            <a href="default.aspx#solucoes" class="link-demo"></a>
                        </div>
                    </div>
                    <!-- /.container -->
                </div>
                <!-- /#slide-2 -->
            </div>
            <!-- /.carousel-inner -->
            <a class="left carousel-control visible-md visible-lg" href="#wpdesk-Carousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control visible-md visible-lg"
                    href="#wpdesk-Carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
        </div>
        <!-- #wpdesk-Carousel -->
        <!-- Section Tagline -->
        <section id="section-tagline" class="section-page">
            <div class="container" style="background: url(images/logo2.png) no-repeat right center; height: 98px;">

                <p class="frase-top">Profissionalismo integrado com <b>tecnologia inovadora.</b></p>

            </div>
        </section>
        <!-- Section Services -->
        <section id="empresa" class="section-page" style="background: #efefef url(images/back-empresa2.jpg) bottom center no-repeat;">
            <div class="container">

                <div class="head-section">
                    <img src="images/back-empresa.jpg" style="float: right; margin-right: -50px;" class="foto-empresa"><br>

                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; margin-top: 50px; color: #990000; margin-top: 25px;">Soluções em software</h2>

                    <p>A Tecnologia da Informação é um dos principais pilares para o crescimento e sustentação das empresas ao redor do mundo. A aplicação de diferentes segmentos da tecnologia no processamento de dados e informações tornou-se imprescindível para apoiar o negócio das empresas atualmente.</p>

                    <p>
                        Com mais de 15 anos de atuação no mercado de desenvolvimento de software, a
                        <br>
                        <b>Accerti Tecnologia Digital</b> cria e entrega soluções online de sistemas com alta tecnologia embarcada e custo acessível para seus clientes, atendendo as necessidades específicas de cada negócio.
                    </p>

                    <p>Abra caminho para o progresso da sua empresa, conheça mais sobre nossos produtos e soluções.</p>


                </div>
                <!-- /.head-section -->

                <br />
                <br />

            </div>
            <!-- .container -->
        </section>
        <!-- #section-services -->
        <!-- Section Works -->
        <section id="solucoes" class="section-page" style="background: #333333;">
            <div class="container">

                <div class="head-section">
                    <br>

                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; margin-top: 50px; color: #fff; margin-top: 25px;">Nossos Produtos & Soluções</h2>

                    <p style="color: #fff;">Desenvolver produtos e soluções úteis, acessíveis e que agreguem valor ao seu negócio é o nosso trabalho. Conheça:</p>


                </div>



                <div class="row" style="padding-bottom: 30px;">



                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-25" style="text-align: center; color: #fff;">
                            <br>
                            <a href="#">
                                <img src="images/AccertiERP-branco.png" width="200" class="img-solucao"></a>
                            <p>
                                Gestão Empresarial: O sistema feito para as pequenas e médias empresas. Realize o controle integrado de Compras, Estoque, Financeiro, Serviços e Faturamento (NF-e e NFS-e).
                            </p>
                        </div>
                        <!-- /#person_1 -->


                        <div class="col-xs-12 col-sm-12 col-md-25" style="text-align: center; color: #fff;">
                            <br>
                            <a href="#">
                                <img src="images/AccertiCRM-branco.png" width="200" class="img-solucao"></a>
                            <p>
                                CRM como Serviço: Tenha total controle das prospecções do seu negócio. Gerencie sua força de vendas e aumente suas vendas na nuvem.
                            </p>
                        </div>
                        <!-- /#person_4 -->

                        <div class="col-xs-12 col-sm-12 col-md-25" style="text-align: center; color: #fff;">
                            <br>
                            <a href="#">
                                <img src="images/AccertiLoja-branco.png" width="200" class="img-solucao"></a>
                            <p>
                                e-Commerce com gestão: A sua loja virtual com retaguarda moderna e voltada para a gestão. Esqueça os antigos e limitados painéis de controle.
                            </p>
                        </div>
                        <!-- /#person_2 -->

                        <div class="col-xs-12 col-sm-12 col-md-25" style="text-align: center; color: #fff;">
                            <br>
                            <a href="#">
                                <img src="images/AccertiCMS-branco.png" width="200" class="img-solucao"></a>
                            <p>
                                Gestão de Conteúdo: Ferramenta profissional para a gestão de conteúdo. Aplicável em qualquer site. Não dependa de um desenvolvedor para cada alteração no seu site.

                            </p>
                        </div>
                        <!-- /#person_3 -->

                        <div class="col-xs-12 col-sm-12 col-md-25" style="text-align: center; color: #fff;">
                            <br>
                            <a href="#">
                                <img src="images/AccertiPDV-branco.png" width="200" class="img-solucao"></a>
                            <p>
                                Portal de Vendas: Portal de Representantes Comerciais que pode ser instalado nos sistemas ERP líderes de mercado como Protheus da TOTVS. 

                            </p>
                        </div>
                        <!-- /#person_4 -->


                        <br>
                        <br>
                    </div>
                    <!-- .row -->
                </div>
                <!-- /.container -->
        </section>
        <!-- /#section-works -->
        <!-- Section Team -->
        <section id="tecnologia" class="section-page" style="background: #ffcc33!important; padding-bottom: 30px;">
            <div class="container">


                <div class="head-section">
                    <br>

                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; margin-top: 50px; color: #000000; margin-top: 25px;">Nossas Tecnologias</h2>

                    <p style="color: #000000;">A <strong>Accerti Tecnologia Digital</strong> desenvolve aplicações e soluções de TI utilizando sempre as mais atuais tecnologias disponíveis no mercado.</p>


                </div>
                <br />
                <div class="row">
                    <article id="service_1" class="col-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/2.png" style="width: 208px" />
                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3">

                        <div class="box-tecnologia">
                            <img src="images/tecnologias/6.png" />
                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3 ">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/3.png" style="width: 208px" />
                    </article>

                    <article id="service_1" class="box-servicecol-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/4.png" style="width: 208px" />
                        </div>
                    </article>

                    <article id="service_1" class="col-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/5.png" />

                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3">

                        <div class="box-tecnologia">
                            <img src="images/tecnologias/1.png" />
                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3 ">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/7.png" />
                    </article>

                    <article id="service_1" class="box-servicecol-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/8.png" />
                        </div>
                    </article>

                    <article id="service_1" class="col-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/9.png" />

                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3">

                        <div class="box-tecnologia">
                            <img src="images/tecnologias/10.png" />
                        </div>
                    </article>

                    <article class="box-service col-md-3 person col-xs-12 col-sm-6 col-md-3 ">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/11.png" />
                    </article>

                    <article id="service_1" class="box-servicecol-md-3 person col-xs-12 col-sm-6 col-md-3">
                        <div class="box-tecnologia">
                            <img src="images/tecnologias/12.png" />
                        </div>
                    </article>



                </div>
                <!-- .row -->
            </div>
            <!-- /.container -->
        </section>
        <!-- /#section-team -->
        <!-- Portfolio -->
        <section id="section-works" class="section-page" style="background: #333333!important; padding-bottom: 30px;">
            <div class="container">

                <div class="head-section">
                    <br>

                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; margin-top: 50px; color: #fff; margin-top: 25px;">Portifólio</h2>

                    <p style="color: #fff;">Conheça abaixo algumas de nossas soluções e produtos aplicados na prática para nossos clientes.</p>

                </div>

                <br />

                <div class="row">
                    <div id="project_1" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_1.jpg" title="Tora Brasil - Web site com conteúdo gerenciável (MicroCMS) e com produtos integrados ao ERP da TOTVS (MicroPDV), proporcionando assim informações de estoque e disponibilização de novos produtos em tempo real ao site.">
                            <div class="content">
                                <h5 style="margin-top: 55px;">Tora Brasil - Web site com conteúdo gerenciável (MicroCMS) e com produtos integrados ao ERP da TOTVS (MicroPDV), proporcionando assim informações de estoque e disponibilização de novos produtos em tempo real ao site.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_1.jpg" />
                        </a>
                    </div>
                    <!-- /#project_1 -->

                    <div id="project_2" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_2.jpg" title="Asiatex - Web site com conteúdo gerenciável (MicroCMS) e Área restrita integrada com o ERP da TOTVS (MicroPDV), gerando automação de força de venda com inclusão de pedidos pelo portal diretamente no fluxo de seu ERP da TOTVS.">
                            <div class="content">
                                <h5 style="margin-top: 55px;">Asiatex - Web site com conteúdo gerenciável (MicroCMS) e Área restrita integrada com o ERP da TOTVS (MicroPDV), gerando automação de força de venda com inclusão de pedidos pelo portal diretamente no fluxo de seu ERP da TOTVS.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_2.jpg" />
                        </a>
                    </div>
                    <!-- /#project_2 -->

                    <div id="project_3" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_3.jpg" title="Daniele Banco - O sistema MicroCRM proporciona a essa Factoring uma total gestão de relacionamento com seus clientes e prospects.">
                            <div class="content">
                                <h5>Daniele Banco - O sistema MicroCRM proporciona a essa Factoring uma total gestão de relacionamento com seus clientes e prospects.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_3.jpg" />
                        </a>
                    </div>
                    <!-- /#project_3 -->

                    <div id="project_4" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_4.jpg" title="Securisoft - A Securisoft conta com o sistema MicroERP para controle e gestão integrada de seus processos e áreas internas.">
                            <div class="content">
                                <h5>Securisoft - A Securisoft conta com o sistema MicroERP para controle e gestão integrada de seus processos e áreas internas.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_4.jpg" />
                        </a>
                    </div>
                    <!-- /#project_4 -->

                    <div id="project_5" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_5.jpg" title="Melissa Flores - Utiliza o sistema de e-commerce MicroLoja.">
                            <div class="content">
                                <h5>Melissa Flores - Utiliza o sistema de e-commerce MicroLoja.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_5.jpg" />
                        </a>
                    </div>
                    <!-- /#project_5 -->

                    <div id="project_6" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_6.jpg" title="BR + 10 - Implantado o sistema MicroERP na empresa BR+10 para controle e gestão integrada de seus processos e áreas internas.">
                            <div class="content">
                                <h5>Implantado o sistema MicroERP na empresa BR+10 para controle e gestão integrada de seus processos e áreas internas.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_6.jpg" />
                        </a>
                    </div>
                    <!-- /#project_6 -->

                    <div id="project_3" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_7.jpg" title="Panambra Zwick - Empresa contratou a criação do novo design do Web site e o sistema MicroCMS para gerenciar o conteúdo do site.">
                            <div class="content">
                                <h5>Empresa contratou a criação do novo design do Web site e o sistema MicroCMS para gerenciar o conteúdo do site.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_7.jpg" />
                        </a>
                    </div>
                    <!-- /#project_3 -->

                    <div id="project_4" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_8.jpg" title="RubberFast - A Rubberfast optou pelo sistema MicroERP para apoiá-la no controle e gestão integrada de seus processos e áreas internas.">
                            <div class="content">
                                <h5>A Rubberfast optou pelo sistema MicroERP para apoiá-la no controle e gestão integrada de seus processos e áreas internas.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_8.jpg" />
                        </a>
                    </div>
                    <!-- /#project_4 -->

                    <div id="project_5" class="box-project col-xs-12 col-sm-6 col-md-4">
                        <a class="prettyPhoto" href="images/works/project_9.jpg" title="Auto Life Blindagens - A Autolife conta com o MicroERP para controle a gestão integrada de seus processos e áreas internas no sistema.">
                            <div class="content">
                                <h5>A Autolife conta com o MicroERP para controle a gestão integrada de seus processos e áreas internas no sistema.</h5>
                            </div>
                            <img alt="" title="" class="img-responsive " src="images/works/work_9.jpg" />
                        </a>
                    </div>
                    <!-- /#project_5 -->



                </div>
                <!-- .row -->
            </div>
            <!-- /.container -->
        </section>
        <!-- /#section-works -->
        <section id="section-clients" class="section-page" style="background: #efefef; padding-bottom: 25px;">
            <div class="container">
                <div class="head-section">
                    <br>

                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; margin-top: 50px; color: #990000; margin-top: 25px;">Clientes e Parceiros</h2>
                </div>
                <!-- /.head-section -->

                <div class="row">
                    <ul class="list-clients" style="margin-left: 20px; margin-top: -15px;">
                        <li class="col-md-2" style="border: none; padding: 0px;"><a href="http://www.asiatex.com.br">
                            <img style="padding: 0px!important; margin: 0px!important;" alt="" title="" class="img-responsive" src="images/clients/client_1.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.torabrasil.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_2.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.danielebanco.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_3.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.brmais10.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_4.png"></a></li>

                        <li style="background: #fff; padding: 0px; border: none;" class="col-md-2 nomargin"><a href="http://www.rubberfast.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_5.png"></a></li>

                        <li class="col-md-2 " style="background: #fff; padding: 0px; border: none; padding: 0px;"><a href="http://www.panambrazwick.com.br">
                            <img style="padding: 0px!important;" alt="" title="" class="img-responsive" src="images/clients/client_6.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.securisoft.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_7.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.melissaflores.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_8.png"></a></li>

                        <li class="col-md-2" style="background: #fff; padding: 0px; border: none;"><a href="http://www.autolife.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_9.png"></a></li>

                        <li class="col-md-2" style="background: #fff; margin-right: 0px!important; padding: 0px; border: none;"><a href="http://www.lojaviva.com.br">
                            <img alt="" title="" class="img-responsive" src="images/clients/client_10.png"></a></li>


                    </ul>
                    <!-- /.list-clients -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>
        <!-- /#section-clients -->
        <!-- Section Contact -->
        <section id="section-contact" class="section-page" style="background: #292929 url(images/bg-contato.png) bottom center no-repeat; padding-bottom: 0px;">
            <div class="container">
                <div class="head-section">
                    <br>
                    <h2 style="font-size: 30px; text-transform: none; font-weight: bold; color: #fff; margin-top: 25px;">Entre em contato conosco</h2>
                    <div class="row">
                        <div class="col-xs-12 col-md-6">
                            <ul class="formulario">
                                <asp:Label ID="lblResult" runat="server" Text="" ForeColor="red" Visible="true"></asp:Label>
                                <li>
                                    <asp:TextBox ID="txtNome" runat="server" class="txt-form" onBlur="escreverPadrao(this);" onFocus="limparPadrao(this);">Nome</asp:TextBox></li>
                                <li>
                                    <asp:TextBox ID="txtEmail" runat="server" class="txt-form" onBlur="escreverPadrao(this);" onFocus="limparPadrao(this);">E-mail</asp:TextBox></li>
                                <li>
                                    <asp:TextBox ID="txtTel" runat="server" class="txt-form" onBlur="escreverPadrao(this);" onFocus="limparPadrao(this);">Telefone</asp:TextBox></li>
                                <li>
                                    <asp:TextBox ID="txtAssunto" runat="server" class="txt-form" onBlur="escreverPadrao(this);" onFocus="limparPadrao(this);">Assunto</asp:TextBox></li>
                                <li>
                                    <asp:TextBox ID="txtMensagem" TextMode="MultiLine" Rows="4" runat="server" class="txta-form" onBlur="escreverPadrao(this);" onFocus="limparPadrao(this);">Mensagem</asp:TextBox></li>
                                <li>
                                    <asp:Button ID="btnEnviar" runat="server" Text="enviar" class="btn-form" OnClick="btnEnviar_Click"></asp:Button></li>
                            </ul>
                        </div>
                        <div class="col-xs-12 col-md-6">
                            <b>Accerti Tecnologia Digital</b><br>
                            Rua Faustolo, 1.887 - Lapa - 05041-001 - São Paulo / SP - Brasil<br>
                            Fone: (011) 3230-7732<br>
                            E-mail: <a href="mailto:contato@accerti.com.br" style="color: #fff;">contato@accerti.com.br</a>
                            <iframe width="550" height="180" frameborder="0" class="maps-accerti" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.2433592392763!2d-46.705969685285226!3d-23.52374798470158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef864a527305f%3A0xe61d2b5aae5dfcb4!2sR.+Faustolo%2C+1887+-+Lapa%2C+S%C3%A3o+Paulo+-+SP%2C+Brasil!5e0!3m2!1spt-BR!2sbr!4v1464724902599"></iframe>
                            <br />
                            <small><a href="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.2433592392763!2d-46.705969685285226!3d-23.52374798470158!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef864a527305f%3A0xe61d2b5aae5dfcb4!2sR.+Faustolo%2C+1887+-+Lapa%2C+S%C3%A3o+Paulo+-+SP%2C+Brasil!5e0!3m2!1spt-BR!2sbr!4v1464724902599" style="color: #0000FF; text-align: left"></a></small>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <a href="https://www.facebook.com/accertidigital" target="_blank">
                                <img src="images/facebook_logo30.png" /></a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;© 2015 -  Accerti Tecnologia Digital | Todos os direitos Reservados
                        </div>
                    </div>
                    <!-- /.col-md-6 -->
                </div>

            </div>
            <!-- /.container -->
        </section>
        <!-- /#section-contact -->
        <script type="text/javascript" src="js/jquery_2.0.3.js"></script>
        <script type="text/javascript" src="js/retina.js"></script>
        <script type="text/javascript" src="js/carousel.js"></script>
        <script type="text/javascript" src="js/transition.js"></script>
        <script type="text/javascript" src="js/scrollspy.js"></script>
        <script type="text/javascript" src="js/collapse.js"></script>
        <script type="text/javascript" src="js/jquery.cycle.all.latest.js"></script>
        <script type="text/javascript" src="js/jquery.nav.js"></script>
        <script type="text/javascript" src="js/jquery.scrollTo.js"></script>
        <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>
        <script>
            jQuery(document).ready(function () {
                $('.navbar-collapse').click('li', function () {
                    $('.navbar-collapse').collapse('hide');
                });
            });
        </script>
    </form>
</body>
</html>
