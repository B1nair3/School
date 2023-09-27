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
    public partial class Form5 : Form
    {
        public Form5()
        {
            InitializeComponent();
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            float preco = float.Parse(txtPreco.Text);
            int qntAlunos = int.Parse(txtAlunos.Text), qntAulas = int.Parse(txtAulas.Text);
            Modalidade modalidade = new Modalidade(txtDescricao.Text, preco, qntAlunos, qntAulas);

                if (modalidade.cadastrarModalidade())
                {
                    MessageBox.Show("Cadastro concluido!");
                    txtDescricao.Items.Add(txtDescricao.Text);
                    limpar();
                }
                else
                {
                    MessageBox.Show("Falha no cadastro!");
                }
        }

        public void limpar()
        {
            txtAulas.Text = "";
            txtAlunos.Text = "";
            txtDescricao.Text = "";
            txtPreco.Text = "";
        }

        private void txtDescricao_SelectedIndexChanged(object sender, EventArgs e)
        {
            DialogResult atualizar = MessageBox.Show("Você deseja atualizar a modalidade escolhida?", "Escolha", MessageBoxButtons.YesNo);
            if (atualizar == DialogResult.Yes)
            {
                Modalidade escolha = new Modalidade(txtDescricao.Text);
                MySqlDataReader r = escolha.consultaModalidade();
                r.Read();
                txtAlunos.Text = r["qntAlunos"].ToString();
                txtAulas.Text = r["qntAulas"].ToString();
                txtPreco.Text = r["precoModalidade"].ToString();
                escolha.atualizarModalidade();
                MessageBox.Show("Modalidade atualizada com sucesso!");
                limpar();
            }
            
        }
    }
}
