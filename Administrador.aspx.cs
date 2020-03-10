using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace JKOProyect
{
    public partial class Administrador : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=SEGUNDO150;Initial Catalog=DAM_Compartido_DEV;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlCommand cmd = new SqlCommand("JKO.GetModalidad", connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //(cmd.Parameters.AddWithValue("@NombreM", txtNombre.Text.ToString());


                connection.Open();
                cmd.ExecuteNonQuery();
                da.Fill(dt);
                DDL_Modalidad.DataSource = dt;
                DDL_Modalidad.DataBind();
                DDL_Modalidad.DataTextField = "NombreM";
                DDL_Modalidad.DataValueField = "IdModalidad";
                DDL_Modalidad.DataBind();
                connection.Close();
            }
            using (SqlCommand cmd = new SqlCommand("JKO.GetCategorias", connection))
            {
                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //(cmd.Parameters.AddWithValue("@NombreM", txtNombre.Text.ToString());


                connection.Open();
                cmd.ExecuteNonQuery();
                da.Fill(dt);
                DDL_Categoria.DataSource = dt;
                DDL_Categoria.DataBind();
                DDL_Categoria.DataTextField = "NombreC";
                DDL_Categoria.DataValueField = "IdCategoria";
                DDL_Categoria.DataBind();
                connection.Close();
            }

        }
        protected void IdAñadir_Click(object sender, EventArgs e)
        {
            //if(FileUpload1.HasFile)
            //{
                using (SqlCommand cmd = new SqlCommand("JKO.AltaLuchador", connection))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@IdLuchador", Convert.ToInt32(txtIdLuchador.Text));
                    cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text.ToString());
                    cmd.Parameters.AddWithValue("@Apellido", txtApellido.Text.ToString());
                    cmd.Parameters.AddWithValue("@IdModalidad", DDL_Modalidad.SelectedValue);
                    cmd.Parameters.AddWithValue("@IdCategoria", DDL_Categoria.SelectedValue);
                    //cmd.Parameters.AddWithValue("@ImagenLuchador", FileUpload1.
                    cmd.Parameters.AddWithValue("@DescripcionLuchador", txtDescripcion.Text.ToString());


                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }
            //}
        }
        protected void BtnBuscarElimin_Click(object sender, EventArgs e)
        {
           
            using (SqlCommand cmd = new SqlCommand("JKO.GetLuchadores", connection))
            {
                
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                connection.Open();

                cmd.Parameters.AddWithValue("@Nombre", txtBuscarLuchador.Text.ToString().Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);                
                DataTable dt = new DataTable();

                
                //cmd.ExecuteNonQuery();
                da.Fill(dt);
                GridElimin.DataSource = dt;
                GridElimin.DataBind();
                
                connection.Close();
            }
        }
        protected void GridElimin_RowDeletingEvent(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void GridElimin_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridElimin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridElimin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }
    }
}