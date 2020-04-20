<%@ Page Title="Cross-Platform programming" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsLab3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <asp:Repeater ID="ProductsList" runat="server" OnItemDataBound="ProductsList_ItemDataBound">
        <HeaderTemplate>
            <table> 
                <tr>
                    <td>N п/п</td>
                    <td>Назва виробу</td>
                    <td colspan="2">Вартість, тис.грн.</td>
                    <td>Виконання плану, %</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>План</td>
                    <td>Звіт</td>
                    <td></td>
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
