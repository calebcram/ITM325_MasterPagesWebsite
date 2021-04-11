<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MyMasterPage.Master" AutoEventWireup="true" CodeBehind="SimpleCalc.aspx.cs" Inherits="MasterPagesAssignment.ContentPages.SimpleCalc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="type/css">
        h2{
            text-align:center;
            
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
    <style type="text/css">
        .ValidationSummary {
        margin:0 auto
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Articles" runat="server">

    <div style="background-color: #EDEDED; width: 400px; height: 350px; border: 1px solid black; margin-top: 11px; margin-bottom: 15px; border-radius: 20px; margin: auto;">
        <h2 style="text-align: center;">Calculator</h2>
        <table style="width: 100%;">
            <tr>
                <td style="width: 50%; text-align: right; font-size: large;">First Number:</td>
                <td style="width: 40%">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="First Number is required." ForeColor="Red" Text="*" Font-Size="large" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Enter a numeric value for the First Number."
                        ControlToValidate="TextBox2" Type="Double" Text="*" Font-Size="Large" ForeColor="Red" Operator="DataTypeCheck" Display="Dynamic" EnableClientScript="False" />
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: right; font-size: large;">Second Number:</td>
                <td style="width: 40%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="width: 10%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                        ErrorMessage="Second number is required." Text="*" ForeColor="Red" Font-Size="Large" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Enter a numeric value for the Second Number."
                        ControlToValidate="TextBox1" Type="Double" Text="*" Font-Size="Large" ForeColor="Red" Operator="DataTypeCheck" Display="Dynamic" EnableClientScript="False" />
                </td>
            </tr>
            <tr>
                <td style="width: 50%; text-align: right; font-size: large;">Operators:</td>
                <td style="width: 40%">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Addition (+)</asp:ListItem>
                        <asp:ListItem>Subtraction (-)</asp:ListItem>
                        <asp:ListItem>Multiplication (*)</asp:ListItem>
                        <asp:ListItem>Division (/)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="width: 10%">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1"
                        ErrorMessage="Please select an operator." ForeColor="Red" Text="*" Font-Size="Large" Operator="DataTypeCheck" Display="Dynamic" EnableClientScript="False"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center; font-size: large;">Output:<asp:TextBox ID="TextBox3" runat="server" Width="255px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3" style="text-align: center; padding: 6px; font-size: large; width: 100px;">
                    <asp:Button Width="100px" ID="Button1" runat="server" Text="Calculate" OnClick="ComputeFunction" />

                    <asp:Button Width="100px" ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Font-Size="Large" EnableClientScript="False" HeaderText="Error Messages:"
        CssClass="ValidationSummary" width="281px" />
</asp:Content>
