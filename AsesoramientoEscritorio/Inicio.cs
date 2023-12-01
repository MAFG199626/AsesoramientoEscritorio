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
    public partial class Inicio : Form
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private void Btn_Iniciar_Click(object sender, EventArgs e)
        {
            MDIMenu frm = new MDIMenu();
            ServiceReference1.Ejercicio25WebServiceSoapClient sv = new ServiceReference1.Ejercicio25WebServiceSoapClient();
            string logname = sv.Logueo(txt_Usu.Text, txt_Pass.Text);
            //us@ejercicio25.com
            //us1234
           
            if (logname=="us")
                {
                    this.Hide();
                    frm.Show();
                    //MessageBox.Show("Bienvenido Usuario");

            } 
            else
                MessageBox.Show("Error, usuario o contraseña invalido");
        }

        private void Btn_Invitado_Click(object sender, EventArgs e)
        {

        }
    }
}
