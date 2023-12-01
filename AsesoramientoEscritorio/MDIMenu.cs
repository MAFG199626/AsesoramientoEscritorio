using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AsesoramientoEscritorio
{
    public partial class MDIMenu : Form
    {
        #region Variables
        private Form formActivo = null; // Para abrir otro formulario
        #endregion

        public MDIMenu()
        {
            InitializeComponent();
            PnlAcademico.Visible = false;
            PnlLaboral.Visible = false;
            timer1.Enabled=true;
        }
        private void CargarFormulario(Form formHijo)
        {
            if (formActivo != null)
                formActivo.Close();

            formActivo = formHijo;

            formHijo.TopLevel = false;
            formHijo.FormBorderStyle = FormBorderStyle.None;
            formHijo.Dock = DockStyle.Fill;
            PnlContenedor.Controls.Add(formHijo);
            PnlContenedor.Tag = formHijo;

            formHijo.Show();
        }

        private void Btn_Academicas_Click(object sender, EventArgs e)
        {
            if (PnlAcademico.Visible == false)
                PnlAcademico.Visible = true;
            else
                PnlAcademico.Visible = false;
        }

        private void Btn_Laborales_Click(object sender, EventArgs e)
        {
            if (PnlLaboral.Visible == false)
                PnlLaboral.Visible = true;
            else
                PnlLaboral.Visible = false;
        }

        private void Btn_Ofertas_Click(object sender, EventArgs e)
        {
            OfertasAcademicas oa = new OfertasAcademicas();

            CargarFormulario(oa);
            Visibles();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            Lbl_Time.Text = DateTime.Now.ToString();
            Lbl_Time2.Text = DateTime.Now.ToString("hh:mm:ss");         
        }
        private void Visibles()
        {
            Lbl_Time.Visible = false;
            pictureBox5.Visible = false;
            Lbl_Time2.Visible = true;
        }
        private void Btn_OfertasLab_Click(object sender, EventArgs e)
        {
            OfertasLaborales ol = new OfertasLaborales();
            CargarFormulario(ol);
            Visibles();
        }

        private void Btn_Resultado_Click(object sender, EventArgs e)
        {
            PROXIMAMENTE px = new PROXIMAMENTE();
            CargarFormulario(px);
            Visibles();
        }

        private void Btn_Asesoramiento_Click(object sender, EventArgs e)
        {
            PROXIMAMENTE px = new PROXIMAMENTE();
            CargarFormulario(px);
            Visibles();
        }

        private void Btn_Cursos_Click(object sender, EventArgs e)
        {
            PROXIMAMENTE px = new PROXIMAMENTE();
            CargarFormulario(px);
            Visibles();
        }

        private void Btn_Becas_Click(object sender, EventArgs e)
        {
            PROXIMAMENTE px = new PROXIMAMENTE();
            CargarFormulario(px);
            Visibles();
        }
    }
}
