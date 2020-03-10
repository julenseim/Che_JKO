using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace JKOProyect
{
    public partial class Index : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=SEGUNDO150;Initial Catalog=DAM_Compartido_DEV;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Iniciar_Click(object sender, EventArgs e)
        {
            const string cmdText = "SELECT IdUsuario FROM JKO.Usuarios WHERE IdUsuario=@IdUsuario AND Password=@Password";

            using(SqlCommand cmd =new SqlCommand(cmdText,connection))
            {
                cmd.Parameters.AddWithValue("@IdUsuario", txtUsuario.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                try
                {
                    connection.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    
                    if(dr.Read())
                    {
                        MessageBox.Show("Sesion Iniciada correctamente");
                        Session["Usuario"] = txtUsuario.Text;
                        //LabelLogin.Text = "Nombre de usuario: " + Session["Usuario"];
                        
                    }
                    else
                    {
                        MessageBox.Show("Datos Incorrectos");
                    }
                    connection.Close();
                }
                catch (SqlException em)
                {
                    MessageBox.Show(em.Message.ToString());
                }
                
            }
        }
    }
}