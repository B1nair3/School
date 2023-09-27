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
    public partial class Form3 : Form
    {
        DialogResult resultado = DialogResult.No;
        public Form3()
        {
            InitializeComponent();
        }

        private void btmCadastrar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno(mkdCpf.Text, txtNome.Text, txtEndereco.Text, txtNumero.Text, txtBairro.Text, txtComplemento.Text, mkdCep.Text,
            txtCidade.Text, txtEstado.Text, mkdTelefone.Text, txtEmail.Text);

            if (resultado == DialogResult.Yes)
            {
                if (aluno.atualizarAluno())
                {
                    MessageBox.Show("Dados atualizados com sucesso!");
                    resultado = DialogResult.No;
                    limpar();
                    mkdCpf.Enabled = true;
                    btnLimpar.Enabled = true;
                }
                else
                {
                    MessageBox.Show("Falha ao atualizar dados!");
                }
                btmCadastrar.Text = "Cadastrar";
            }
            else
            {
                if (aluno.cadastrarAluno())
                {
                    MessageBox.Show("Cadastro concluido!");
                    limpar();
                }
                else
                {
                    MessageBox.Show("Falha no cadastro!");
                }
            }
        }
        private void mkdCpf_KeyPress(object sender, KeyPressEventArgs e)
        {
            Aluno aluno = new Aluno(mkdCpf.Text);

            if (e.KeyChar == 13)
            {
                if (aluno.consultarAluno()) {
                    DialogResult result = MessageBox.Show("Aluno já cadastrado! Você deseja atualizar os dados?", "Aluno já existente",
                        MessageBoxButtons.YesNo);
                    if (result == DialogResult.Yes)
                    {
                        MySqlDataReader r = aluno.consultarAluno01();
                        r.Read();
                        txtNome.Text = r["nomeAluno"].ToString();
                        txtEndereco.Text = r["ruaAluno"].ToString();
                        txtNumero.Text = r["numeroAluno"].ToString();
                        txtBairro.Text = r["bairroAluno"].ToString();
                        txtComplemento.Text = r["complementoAluno"].ToString();
                        mkdCep.Text = r["cepAluno"].ToString();
                        txtCidade.Text = r["cidadeAluno"].ToString();
                        txtEstado.Text = r["estadoAluno"].ToString();
                        mkdTelefone.Text = r["telefoneAluno"].ToString();
                        txtEmail.Text = r["emailAluno"].ToString();
                        mkdCpf.Enabled = false;
                        resultado = result;
                        btnLimpar.Enabled = false;
                        btmCadastrar.Text = "Atualizar";
                    }
                }
                else
                {
                    txtNome.Focus();
                }
            DAO_Conexão.con.Close(); //somente fecha depois de retornar
            }
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            limpar();
        }

        public void limpar()
        {
                mkdCpf.Text = "";
                mkdTelefone.Text = "";
                mkdCep.Text = "";
                txtNome.Text = "";
                txtBairro.Text = "";
                txtComplemento.Text = "";
                txtNumero.Text = "";
                txtCidade.Text = "";
                txtEstado.Text = "";
                txtEmail.Text = "";
                txtEndereco.Text = "";
        }
    }
}