using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Estudiozinho
{
    class Modalidade
    {
        private String descricao;
        private float preco;
        private int qntAlunos, qntAulas;

        public string Descricao { get => descricao; set => descricao = value; }
        public float Preco { get => preco; set => preco = value; }
        public int QntAlunos { get => qntAlunos; set => qntAlunos = value; }
        public int QntAulas { get => qntAulas; set => qntAulas = value; }

        public Modalidade(string descricao, float preco, int qntAlunos, int qntAulas)
        {
            this.descricao = descricao;
            this.preco = preco;
            this.qntAlunos = qntAlunos;
            this.qntAulas = qntAulas;
        }

        public Modalidade(string descricao)
        {
            this.descricao = descricao;
        }

        public Modalidade(){}

        public bool cadastrarModalidade()
        {
            bool cad = false;
            try
            {
                DAO_Conexão.con.Open();
                MySqlCommand insere = new MySqlCommand("insert into Estudio_Modalidade (descricaoModalidade, precoModalidade, qntAlunos, qntAulas)" +
                    "values ('" + descricao + "'," + preco + "," + qntAlunos + "," + qntAulas + ");", DAO_Conexão.con);
                insere.ExecuteNonQuery();
                cad = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                DAO_Conexão.con.Close();
            }
            return cad;
        }

        public MySqlDataReader consultaModalidade()
        {
            MySqlDataReader resultado = null;
            try
            {
                DAO_Conexão.con.Open();
                MySqlCommand consulta = new MySqlCommand("SELECT * FROM Estudio_Modalidade where descricaoModalidade = '" + descricao +
                    "'", DAO_Conexão.con);
                resultado = consulta.ExecuteReader();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return resultado;
        }
        public MySqlDataReader consultaTodasModalidade()
        {
            MySqlDataReader resultado = null;
            try
            {
                DAO_Conexão.con.Open();
                MySqlCommand consulta = new MySqlCommand("SELECT * FROM Estudio_Modalidade", DAO_Conexão.con);
                resultado = consulta.ExecuteReader();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return resultado;
        }

        public bool atualizarModalidade()
        {
            bool cad = false;
            try
            {
                DAO_Conexão.con.Open();
                MySqlCommand atualiza = new MySqlCommand("update Estudio_Aluno set qntAluno = " + qntAlunos + "set qntAula = " + qntAulas +
                    "set precoModalidade = " + preco + "set descricaoModalidade = " + descricao, DAO_Conexão.con);
                atualiza.ExecuteNonQuery();
                cad = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                DAO_Conexão.con.Close();
            }
            return cad;
        }

        public bool excluirModalidade()
        {
            bool existe = false;
            try
            {
                DAO_Conexão.con.Open();
                MySqlCommand exclui = new MySqlCommand("update Estudio_Modalidade set ativa = 1 where descricaoModalidade = '" +
                    descricao + "'", DAO_Conexão.con);
                exclui.ExecuteNonQuery();
                existe = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            finally
            {
                DAO_Conexão.con.Close();
            }

            return existe;
        }
    }
}
