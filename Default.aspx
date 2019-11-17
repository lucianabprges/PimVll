<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>UNIP-EAD</h1>
            </hgroup>
            <p>
                Olá aluno,bem vindo!</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>O Ensino a Distância(EAD) é uma modalidade de ensino reconhecida pelo MEC que facilita a formação de profissionais que por um motivo ou outro não conseguem frequentar uma universidade de forma presencial,proporcionando aos alunos diversos benefícios como por exemplo a comodidade,economia de tempo,economia de dinheiro,entre outras. &nbsp;</h3>
</asp:Content>
