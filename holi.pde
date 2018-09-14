
PE hechicero;
PE lenador;
PE guerrero;
PE princesa;
PE principe;
VE ve;

int p=1;
int celia=1;
int jugador1,vida1,ataque1;
int jugador2,vida2,ataque2;
int carta;
int ganador;
int turno =1;
int i;
int barra1=150;
int barra2=150;
int vidatotal1;
int vidatotal2;
Drop[] drops=new Drop [500];
Confeti[] confetis=new Confeti [500];



void setup() {
  size(700, 500);
  for(int i = 0; i<drops.length;i++){
      drops [i]=new Drop();
      }
  for(int i = 0; i<confetis.length;i++){
      confetis [i]=new Confeti();
      }
      
  hechicero= new PE(250,40);
  lenador = new PE(230,50);
  guerrero = new PE(250,60);
  princesa =new PE(220,60);
  principe= new PE(210,10);
  
  ve=  new VE();
}

void draw() {
  
if(p==1)
{ve.inicio();}

if(p==2)
{ve.seleccion();}

if(p==3){
  ve.pelea();
}

if(p==4){
  ve.resolucion();
}

}
