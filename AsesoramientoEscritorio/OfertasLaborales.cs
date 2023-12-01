﻿using System;
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
    public partial class OfertasLaborales : Form
    {
        public OfertasLaborales()
        {
            InitializeComponent();
            Cargar();
        }
        private void Cargar()
        {
            ServiceReference1.Ejercicio25WebServiceSoapClient sv = new ServiceReference1.Ejercicio25WebServiceSoapClient();
            Dgv_Listar.DataSource = sv.ListaOfertasLaboral();
            Dgv_Listar.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            //Dgv_Listar.DataSource = of.ListaOfertasLaboral().Select(x => new
            //{
            //    NombreOferta = x.Nombre,
            //    otro = x.

            //}).ToList();
            //Dgv_Listar.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;

            Dgv_Listar2.DataSource = sv.ListaUsuarioOfertasLaboral().Select(x=>new
            {
                Oferta_Laboral = x.OfertaLaboralNombre,
                Nombre_Empresa = x.EmpresaNombre
            }).ToList();
            Dgv_Listar2.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
        }
        private void Btn_Aplicar_Click(object sender, EventArgs e)
        {
            ServiceReference1.Ejercicio25WebServiceSoapClient sv = new ServiceReference1.Ejercicio25WebServiceSoapClient();
            if (Dgv_Listar.SelectedRows.Count > 0)
            {

                DataGridViewRow elemento = Dgv_Listar.SelectedRows[0];

                sv.AplicarOfertasLaborales(int.Parse(elemento.Cells[0].Value.ToString()),1);

                Dgv_Listar2.DataSource = null;
                Cargar();
            }
            

        }

    }
}
