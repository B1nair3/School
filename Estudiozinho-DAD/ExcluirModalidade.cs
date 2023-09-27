using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Estudiozinho
{
    public partial class ExcluirModalidade : Form
    {
        public ExcluirModalidade()
        {
            InitializeComponent();
            Modalidade cad = new Modalidade();
            MySqlDataReader r = cad.consultaTodasModalidade();
            try
            {
                while (r.Read())
                    comboBox1.Items.Add(r["descricaoModalidade"].ToString());
            }
            catch (Exception ex)
            {
                MessageBox.Show("Falha!");
            }


            DAO_Conexão.con.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Modalidade modalidade = new Modalidade(comboBox1.Text);
                if (modalidade.excluirModalidade())
                {
                    MySqlDataReader r = modalidade.consultaModalidade();
                    MessageBox.Show("Modalidade excluída!");
                }
                else
                {
                    MessageBox.Show("Modalidade não encontrada!");
                }
        }
    }
}
