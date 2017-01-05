<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PreLoader.ascx.cs" Inherits="Controles_PreLoader" %>
<div id='divLoad' style="display:block; position:fixed;  z-index:1002; top:40%; background-color:#FFFFFF; left:43%; width:200px; border-top-left-radius: 15px; border-top-right-radius: 15px; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px; ">
    <table width="200px" height="100px" bgcolor="white" align="center" class='Title' cellpadding='0' 
        cellspacing='0' style="text-align:center; border-top-left-radius: 15px; border-top-right-radius: 15px; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px;" >
        <tr bordercolor="white">
            <td>
                <b><span style="font-size: 16pt">Processando...</span></b></td>
        </tr>
        <tr bordercolor="white">
        <td style="height:10px"></td>
        </tr>
        <tr bordercolor="white">
            <td>
                <asp:Image ID="imgLoad" runat="server" ImageUrl="~/Images/wait.gif" /></td>
        </tr>
    </table>
</div>

<iframe id="divTrava" style="left:0; top:0; width:101%; height:300%; z-index:1001; position:absolute; background-color: #787F82; background-color: rgba(120,127,130,0.6); overflow:hidden; filter: alpha(opacity=70);">
</iframe>

<iframe id="DivMestra" scrolling="no" frameborder="0" style="position:absolute; width: 0px; height: 0px;">    
</iframe>

<script type="text/javascript">
    var DivRef = document.getElementById('divTrava');
        DivRef.style.height = window.screen.height * 2;
 var y = (window.screen.height)/4;
 var x = (window.screen.width - 150)/2;     

    
    var IfrRef =  document.getElementById('DivMestra');
    
    DivRef.style.display = "block";
    IfrRef.style.width = DivRef.offsetWidth;
    IfrRef.style.height = DivRef.offsetHeight;
    IfrRef.style.top = DivRef.style.top;
    IfrRef.style.left = DivRef.style.left;
    IfrRef.style.zIndex = DivRef.style.zIndex - 1;
    IfrRef.style.display = "block";


document.getElementById('divLoad').style.top = y;
document.getElementById('divLoad').style.left = x;
document.getElementById('divLoad').style.display='block';  
</script>