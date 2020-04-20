<%@ Page Title="Cross-Platform programming" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsLab3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <asp:Repeater ID="ProductsList" runat="server" OnItemDataBound="ProductsList_ItemDataBound">
        <HeaderTemplate>
            <table id="products"> 
                <tr>
                    <th>N п/п</th>
                    <th>Назва виробу</th>
                    <th colspan="2">Вартість, тис.грн.</th>
                    <th>Виконання плану, %</th>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>План</th>
                    <th>Звіт</th>
                    <th></th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                </tr>
                </HeaderTemplate>
        <ItemTemplate> 
             <tr>
                <td><%#((RepeaterItem)Container).ItemIndex+1 %></td>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("PlanCost") %></td>
                <td><%# Eval("ReportCost") %></td>
                <td><%# Eval("PlanComplitionPercentage") %></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            <tr>
                    <td></td>
                    <td>Усього</td>
                    <td><%=TotalPlanCost %></td>
                    <td><%=TotalReportCost %></td>
                    <td><%=PlanComplitionPercentage %></td>
                </tr>
            </table></FooterTemplate>
        
    </asp:Repeater>
        
  

</asp:Content>
