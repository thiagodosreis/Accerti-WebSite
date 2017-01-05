using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        string retorno = "";
        StringBuilder corpo = new StringBuilder();

        corpo.Append("Nome: "+txtNome.Text+"<br>");
        corpo.Append("E-mail: "+txtEmail.Text+"<br>");
        corpo.Append("Telefone: "+txtTel.Text+"<br>");
        corpo.Append("Assunto: "+txtAssunto.Text+"<br>");
        corpo.Append("Mensagem: "+txtMensagem.Text+"<br>");

        retorno = EnviaEmail("naoresponda@accerti.com.br", "contato@accerti.com.br", "thiago@accerti.com.br", "Fale Conosco Accerti", corpo.ToString());
        //AlertRedirect(this, retorno, "Default.aspx#section-contact");
        lblResult.Text = retorno;
    }

    public void Alert(Control control, string mensagem)
    {
        ScriptManager.RegisterClientScriptBlock(control, typeof(Page), "clientScript", "alert('" + mensagem.Replace("\r", "").Replace("\n", "") + "');", true);
    }

    public void AlertRedirect(Control control, string mensagem, string endereco)
    {
        ScriptManager.RegisterClientScriptBlock(control, typeof(Page), "clientScript", "alert('" + mensagem.Replace("\r", "").Replace("\n", "") + "');location.href = '" + endereco + "';", true);
    }

    public string EnviaEmail(string remetente, string destinatario, string copia, string assunto, string corpo)
    {
        StringBuilder corpofinal = new StringBuilder();

        corpofinal.Append("<html><head><title></title><meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'></head>");
        corpofinal.Append("<body><table width='200' border='1' cellpadding='0' cellspacing='0' bordercolor='#000000'>");
        corpofinal.Append("<tr><td bordercolor='#FFFFFF' bgcolor='#FFFFFF'><table width='620' border='0' cellpadding='1' cellspacing='2'><tr>");
        corpofinal.Append("<td colspan='2'><img src='http://www.accerti.com.br/images/logo-vermelho-new.jpg'></td></tr><tr>");
        corpofinal.Append("<td width='20%'>&nbsp;</td><td width='80%'>&nbsp;</td></tr><tr>");
        corpofinal.Append("<td colspan='2'><div align='left'>" + corpo + "</div></td></tr><tr>");
        corpofinal.Append("<td height='22'>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan='2'><font face='Tahoma, Arial' size='2'></font></td>");
        corpofinal.Append("<tr><td colspan='2'><font face='Tahoma, Arial' size='2'>Enviado através do WebSite da Accerti.<br>");
        corpofinal.Append("Desenvolvido por <a href='http://www.accerti.com.br'>Accerti Tecnologia Digital</a>.</font></td></tr>");
        corpofinal.Append("</table></td></tr></table></body></html>");

        try
        {
            System.Net.Mail.MailMessage message = new MailMessage();
            message.From = new MailAddress(remetente);
            message.To.Add(new MailAddress(destinatario));
            message.CC.Add(new MailAddress(copia));
            message.Subject = assunto;
            message.Body = corpofinal.ToString();
            message.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Send(message);
            return "E-mail enviado com sucesso para '" + destinatario + "'.";
        }
        catch (Exception ex)
        {
            return "Erro: " + ex.Message;
        }
    }

}