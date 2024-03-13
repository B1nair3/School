//Author @B1nair3 - João Vitor Carrilho

int vled = 2, aled = 3;
String palavra = "";
int ascii;

void setup()
{
  Serial.begin(9600);
  pinMode(vled, OUTPUT);
  pinMode(aled, OUTPUT);
  
  Serial.print("Digite uma frase para tornar em morse!\n");
}

void loop()
{
  if(Serial.available() > 0){
    palavra = Serial.readString();
    palavra.toUpperCase();
    for(int i = 0; i < palavra.length(); i++)
      busca(palavra[i]);
    Serial.print("\n");
  }
}

void busca(char letra){
  Serial.print(letra);
  if(letra == 'A')
    a();
  else if (letra == 'B')
    b();
  else if (letra == 'C')
    c();
  else if (letra == 'D')
    d();
  else if (letra == 'E')
    e();
  else if (letra == 'F')
    ff();
  else if (letra == 'G')
    g();
  else if (letra == 'H')
    h();
  else if (letra == 'I')
    i();
  else if (letra == 'J')
    j();
  else if (letra == 'K')
    k();
  else if (letra == 'L')
    l();
  else if (letra == 'M')
    m();
  else if (letra == 'N')
    n();
  else if (letra == 'O')
    o();
  else if (letra == 'P')
    p();
  else if (letra == 'Q')
    q();
  else if (letra == 'R')
    r();
  else if (letra == 'S')
    s();
  else if (letra == 'T')
    t();
  else if (letra == 'U')
    u();
  else if (letra == 'V')
    v();
  else if (letra == 'W')
    w();
  else if (letra == 'X')
    x();
  else if (letra == 'Y')
    y();
  else if (letra == 'Z')
    z();
  else if (letra == '1')
    one();
  else if (letra == '2')
    two();
  else if (letra == '3')
    three();
  else if (letra == '4')
    four();
  else if (letra == '5')
    five();
  else if (letra == '6')
    six();
  else if (letra == '7')
    seven();
  else if (letra == '8')
    eight();
  else if (letra == '9')
    nine();
  else if (letra == '0')
    zero();
  else if (letra == ' ')
    space();
}

void traco() {
  Serial.write(45);
  digitalWrite(vled, HIGH);
  delay(500);
  digitalWrite(vled, LOW);
  delay(300);
}

void ponto() {
  Serial.write(46);
  digitalWrite(aled, HIGH);
  delay(100);
  digitalWrite(aled, LOW);
  delay(300);
}

void a() {
  ponto();
  traco();
  Serial.print(" ");
}

void b() {
  traco();
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void c(){
  traco();
  ponto();
  traco();
  ponto();
  Serial.print(" ");
}

void d(){
  traco();
  ponto();
  ponto();
  Serial.print(" ");
}

void e(){
  ponto();
  Serial.print(" ");
}

void ff(){
  ponto();
  ponto();
  traco();
  ponto();
  Serial.print(" ");
}

void g(){
  traco();
  traco();
  ponto();
  Serial.print(" ");
}

void h(){
  ponto();
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void i(){
  ponto();
  ponto();
  Serial.print(" ");
}

void j(){
  ponto();
  traco();
  traco();
  traco();
  Serial.print(" ");
}

void k(){
  traco();
  ponto();
  traco();
  Serial.print(" ");
}

void l(){
  ponto();
  traco();
  ponto();
  ponto();
  Serial.print(" ");
}

void m(){
  traco();
  traco();
  Serial.print(" ");
}

void n(){
  traco();
  ponto();
  Serial.print(" ");
}

void o(){
  traco();
  traco();
  traco();
  Serial.print(" ");
}

void p(){
  ponto();
  traco();
  traco();
  ponto();
  Serial.print(" ");
}

void q(){
  traco();
  traco();
  ponto();
  traco();
  Serial.print(" ");
}

void r(){
  ponto();
  traco();
  ponto();
  Serial.print(" ");
}

void s(){
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void t(){
  traco();
  Serial.print(" ");
}

void u(){
  ponto();
  ponto();
  traco();
  Serial.print(" ");
}

void v(){
  ponto();
  ponto();
  ponto();
  traco();
  Serial.print(" ");
}

void w(){
  ponto();
  traco();
  traco();
  Serial.print(" ");
}

void x(){
  traco();
  ponto();
  ponto();
  traco();
  Serial.print(" ");
}

void y(){
  traco();
  ponto();
  traco();
  traco();
  Serial.print(" ");
}

void z(){
  traco();
  traco();
  ponto();
  ponto();
  Serial.print(" ");
}

void one(){
  ponto();
  traco();
  traco();
  traco();
  traco();
  Serial.print(" ");
}

void two(){
  ponto();
  ponto();
  traco();
  traco();
  traco();
  Serial.print(" ");
}

void three(){
  ponto();
  ponto();
  ponto();
  traco();
  traco();
  Serial.print(" ");
}

void four(){
  ponto();
  ponto();
  ponto();
  ponto();
  traco();
  Serial.print(" ");
}

void five(){
  ponto();
  ponto();
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void six(){
  traco();
  ponto();
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void seven(){
  traco();
  traco();
  ponto();
  ponto();
  ponto();
  Serial.print(" ");
}

void eight(){
  traco();
  traco();
  traco();
  ponto();
  ponto();
  Serial.print(" ");
}

void nine(){
  traco();
  traco();
  traco();
  traco();
  ponto();
  Serial.print(" ");
}

void zero(){
  traco();
  traco();
  traco();
  traco();
  traco();
  Serial.print(" ");
}

void space(){
  Serial.print("/ ");
}
