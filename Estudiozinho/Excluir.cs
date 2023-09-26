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
    public partial class Excluir : Form
    {
        public Excluir()
        {
            InitializeComponent();
        }

        private void maskedTextBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            Aluno aluno = new Aluno(maskedTextBox1.Text);
            if (e.KeyChar == 13)
            {
                if (aluno.consultarAluno())
                {
                    if (aluno.excluirAluno())
                    {
                        MessageBox.Show("Aluno foi excluido");
                    }
                }
                else
                {
                    MessageBox.Show("Aluno não encontrado!");
                }
            }
        }
    }
}
