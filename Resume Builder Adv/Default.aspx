<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

    <script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            html2canvas(document.getElementById('resume'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("Resume.pdf");
                    alert("Resume Downloading Started");
                }
            });
        }
    </script>

    <style type="text/css">
        .auto-style1 {
            width: 402px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            height: 111px;
            width: 345px;
        }
        .auto-style4 {
            width: 373px;
        }
        .auto-style5 {
            width: 402px;
            height: 155px;
        }
        .auto-style6 {
            width: 373px;
            height: 155px;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            width: 215px;
            height: 41px;
        }
        .auto-style11 {
            text-align: center;
            width: 234px;
        }
        .auto-style12 {
            width: 234px;
        }
        .auto-style13 {
            width: 691px;
            height: 108px;
        }
    </style>
</head>
<body>



    <form id="form1" runat="server">
        <table class="auto-style1" id="resume" border="1" style="background-color: #CCFFCC">
            <tr>
                <td colspan="3" class="auto-style9" style="font-weight: 300; font-size: medium; color: #000080">
                    <img src="Images/it.png" alt="My Image" class="auto-style13" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style9" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label13" runat="server" Text="My Resume" ForeColor="Maroon" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080"><span style="font-size:11.0pt;mso-bidi-font-size:
10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Mangal;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:HI">&nbsp;<asp:Label ID="Label1" runat="server" Text="Enter your mail ID:"></asp:Label>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Email format" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
&nbsp;</span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Width="238px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label4" runat="server" Text="Enter your name: "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="338px"></asp:TextBox>
                </td>
                <td class="auto-style11" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" Width="153px" onchange="ImagePreview(this);" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label2" runat="server" Text="Address:&nbsp;"></asp:Label>
                    <span style="font-size:11.0pt;mso-bidi-font-size:
10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Mangal;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:HI;mso-no-proof:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang="EN-US" style="font-size:11.0pt;mso-bidi-font-size:
10.0pt;line-height:115%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:
minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:Mangal;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:HI;mso-no-proof:yes">&nbsp;</span></td>
                <td class="auto-style6" style="font-weight: 300; font-size: medium; color: #000080"><textarea id="TextArea1" name="S1" class="auto-style3"></textarea></td>
                <td rowspan="4" class="auto-style11" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Image ID="Image1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label3" runat="server" Text="Contact no. :"></asp:Label>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter a 10 digit number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:TextBox ID="TextBox3" runat="server" Width="346px" ValidationGroup="Contact"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label5" runat="server" Text="Age: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label6" runat="server" Text="Objective: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:TextBox ID="TextBox4" runat="server" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label7" runat="server" Text="Education: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="SSC" />
                    <br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="HSC" />
                    <br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="BE" />
                    <br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Others" />
                </td>
                <td class="auto-style12" style="font-weight: 300; font-size: medium; color: #000080">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label8" runat="server" Text="Skills: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="51px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="136px">
                        <asp:ListItem>DSA</asp:ListItem>
                        <asp:ListItem>Python</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>Linux</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style12" style="font-weight: 300; font-size: medium; color: #000080">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label9" runat="server" Text="Work Experience: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:TextBox ID="TextBox5" runat="server" Width="345px"></asp:TextBox>
                </td>
                <td class="auto-style12" style="font-weight: 300; font-size: medium; color: #000080">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label10" runat="server" Text="Hobbies: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:TextBox ID="TextBox6" runat="server" Width="345px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" Width="345px"></asp:TextBox>
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" Width="345px"></asp:TextBox>
                </td>
                <td class="auto-style12" style="font-weight: 300; font-size: medium; color: #000080">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:Label ID="Label11" runat="server" Text="Apply For: "></asp:Label>
                </td>
                <td class="auto-style4" style="font-weight: 300; font-size: medium; color: #000080">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Intern" GroupName="Radio" ValidationGroup="Radio" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Full-time job" GroupName="Radio" ValidationGroup="Radio" />
                </td>
                <td class="auto-style12" style="font-weight: 300; font-size: medium; color: #000080">&nbsp;</td>
            </tr>
        </table>
        <input type="button" id="btnExport" value="Download Now" onclick="Export()" class="auto-style10" />
    </form>
</body>
</html>
