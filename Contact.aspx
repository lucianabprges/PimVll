<%@ Page Title="GTA-Gestão de Tarefas Acadêmicas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
    </hgroup>

    <section class="">
        <header>
            <h3>&nbsp;</h3>
        </header>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbAlunoConnectionString %>" DeleteCommand="DELETE FROM [dbAluno] WHERE [ID] = ?" InsertCommand="INSERT INTO [dbAluno] ([ID], [ra], [nome_aluno], [tipo_tarefa], [descricao_tarefa], [data_tarefa], [status_tarefa]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:dbAlunoConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [dbAluno]" UpdateCommand="UPDATE [dbAluno] SET [ra] = ?, [nome_aluno] = ?, [tipo_tarefa] = ?, [descricao_tarefa] = ?, [data_tarefa] = ?, [status_tarefa] = ? WHERE [ID] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="ra" Type="Int32" />
                    <asp:Parameter Name="nome_aluno" Type="String" />
                    <asp:Parameter Name="tipo_tarefa" Type="String" />
                    <asp:Parameter Name="descricao_tarefa" Type="String" />
                    <asp:Parameter Name="data_tarefa" Type="String" />
                    <asp:Parameter Name="status_tarefa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ra" Type="Int32" />
                    <asp:Parameter Name="nome_aluno" Type="String" />
                    <asp:Parameter Name="tipo_tarefa" Type="String" />
                    <asp:Parameter Name="descricao_tarefa" Type="String" />
                    <asp:Parameter Name="data_tarefa" Type="String" />
                    <asp:Parameter Name="status_tarefa" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1" HorizontalAlign="Left">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="nome_aluno" HeaderText="Nome" SortExpression="nome_aluno" />
                    <asp:BoundField DataField="ra" HeaderText="Ra" SortExpression="ra" />
                    <asp:BoundField DataField="tipo_tarefa" HeaderText="Tipo" SortExpression="tipo_tarefa" />
                    <asp:BoundField DataField="descricao_tarefa" HeaderText="Descricao" SortExpression="descricao_tarefa" />
                    <asp:BoundField DataField="data_tarefa" HeaderText="Data" SortExpression="data_tarefa" />
                    <asp:BoundField DataField="status_tarefa" HeaderText="Status" SortExpression="status_tarefa" />
                    <asp:CommandField CancelText="Cancela" DeleteText="Excluir" 
                        EditText="Editar" InsertText="" SelectText="Selecionar"
                         ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" UpdateText="Atualizar" 
                        NewText="Inserir" 
                        ShowInsertButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>


        </p>
        <p>
            &nbsp;</p>
    </section>

    </asp:Content>