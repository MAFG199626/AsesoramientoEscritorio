
namespace AsesoramientoEscritorio
{
    partial class OfertasAcademicas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Dgv_Listar = new System.Windows.Forms.DataGridView();
            this.Btn_Aplicar = new System.Windows.Forms.Button();
            this.Dgv_Listar2 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_Listar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_Listar2)).BeginInit();
            this.SuspendLayout();
            // 
            // Dgv_Listar
            // 
            this.Dgv_Listar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_Listar.Location = new System.Drawing.Point(12, 45);
            this.Dgv_Listar.Name = "Dgv_Listar";
            this.Dgv_Listar.ReadOnly = true;
            this.Dgv_Listar.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Dgv_Listar.Size = new System.Drawing.Size(827, 403);
            this.Dgv_Listar.TabIndex = 0;
            // 
            // Btn_Aplicar
            // 
            this.Btn_Aplicar.Font = new System.Drawing.Font("MS Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_Aplicar.Location = new System.Drawing.Point(730, 475);
            this.Btn_Aplicar.Name = "Btn_Aplicar";
            this.Btn_Aplicar.Size = new System.Drawing.Size(109, 41);
            this.Btn_Aplicar.TabIndex = 1;
            this.Btn_Aplicar.Text = "Aplicar";
            this.Btn_Aplicar.UseVisualStyleBackColor = true;
            this.Btn_Aplicar.Click += new System.EventHandler(this.Btn_Aplicar_Click);
            // 
            // Dgv_Listar2
            // 
            this.Dgv_Listar2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_Listar2.Location = new System.Drawing.Point(845, 45);
            this.Dgv_Listar2.Name = "Dgv_Listar2";
            this.Dgv_Listar2.ReadOnly = true;
            this.Dgv_Listar2.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Dgv_Listar2.Size = new System.Drawing.Size(433, 403);
            this.Dgv_Listar2.TabIndex = 2;
            // 
            // OfertasAcademicas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.ClientSize = new System.Drawing.Size(1290, 528);
            this.Controls.Add(this.Dgv_Listar2);
            this.Controls.Add(this.Btn_Aplicar);
            this.Controls.Add(this.Dgv_Listar);
            this.Name = "OfertasAcademicas";
            this.Text = "OfertasAcademicas";
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_Listar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_Listar2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView Dgv_Listar;
        private System.Windows.Forms.Button Btn_Aplicar;
        private System.Windows.Forms.DataGridView Dgv_Listar2;
    }
}