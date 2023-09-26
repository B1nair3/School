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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            if (DAO_Conexão.getConexao("143.106.241.3", "cl202235", "cl202235", "cl*17062007"))
                Console.WriteLine("Conectado!");
            else Console.WriteLine("Erro de conexão!");
            menuStrip1.Enabled = false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void cadastrarLoginToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form2 cadastrarLogin = new Form2();
            cadastrarLogin.MdiParent = this;
            cadastrarLogin.Show();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int tipo = DAO_Conexão.login(textBox1.Text, textBox2.Text);
            //errado
            if (tipo == 0)
            {
                MessageBox.Show("Falha no Login!");
            }
            //adm
            if (tipo == 1)
            {
                groupBox1.Visible = false;
                menuStrip1.Enabled = true;
                MessageBox.Show("Bem vindo adm supremo!");
            }
            //não adm
            if (tipo == 2)
            {
                groupBox1.Visible = false;
                menuStrip1.Enabled = true;
                cadastrarLoginToolStripMenuItem.Enabled = false;
                cadastrarAlunoToolStripMenuItem.Enabled = false;
                excluirToolStripMenuItem.Enabled = false;
                MessageBox.Show("Bem vindo usuário!");
            }
        }

        private void cadastrarAlunoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form3 cadastrarAluno = new Form3();
            cadastrarAluno.MdiParent = this;
            cadastrarAluno.Show();
        }

        private void excluirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Excluir excluir = new Excluir();
            excluir.MdiParent = this;
            excluir.Show();
        }

        private void cadastrarModalidadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form5 cadastrarModalidade = new Form5();
            cadastrarModalidade.MdiParent = this;
            cadastrarModalidade.Show();
        }

        private void excluirModalidadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ExcluirModalidade excluir = new ExcluirModalidade();
            excluir.MdiParent = this;
            excluir.Show();
        }
    }
}
