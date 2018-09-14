class VE {
  
  void inicio(){
                       
  background(197,230,255);
  fill(255);
  rect (50,55,350,170);
  castillo();
  textSize(42); 
  fill(0);
  text(" EL REINO ", 83, 130);
  fill(77,168,51);
  rect(0,380,583,38);
  textSize(14); 
  fill(0);
  text(" PRESIONE A PARA CONTINUAR ", 75, 360);
 
 //Instrucciones
  textSize(15); 
  fill(0);
  text(" Instrucciones: ", 60, 243);
 
 textSize(12); 
  fill(0);
  text("Selecciona tu personaje ", 110, 263);
  
  textSize(12); 
  fill(0);
  text("El jugador 1 ataca con D y el 2 con J ", 110, 283);
  
  textSize(12); 
  fill(0);
  text("El ganador se mostrará al final ", 110, 303);
  
  
  if(keyPressed &&(key== 'a'||  key == 'A')){p=2;}
}
  
  void seleccion(){
    
     background (197,230,255);
      textSize(25); 
      fill(0);
      text(" Selecciona tu personaje: ", 190, 50);
      fill(77,168,51);
      rect(0,458,700,42);
      fill(220);
      rect(65,120,150,160);
      rect(270,120,150,160);
      rect(470,120,150,160);
      rect(165,315,150,160);
      rect(375,315,150,160);
      
      //Tecla para seleccionar el personaje
      textSize(15);
      fill(0);
      text("Selecciona Q", 90,300);
      
      textSize(15);
      fill(0);
      text("Selecciona W",300,300);
      
      textSize(15);
      fill(0);
      text("Selecciona E",500,300);
      
      textSize(15);
      fill(0);
      text("Selecciona R",196,490);
      
      textSize(15);
      fill(0);
      text("Selecciona T",410,490);
     


      scale(.5);
      translate(-150,170);
      hechicero.d_hechicero();
      translate(450,-40);
      guerrero.d_guerrero();
      translate(350,50);
      lenador.d_lenador();
      translate(-630,370);
      scale(1.2);
      principe.d_principe();
      translate(310,-30);
      princesa.d_princesa();
      



      if(celia==1){
        textSize(37);
        fill(0);
        text("Jugador 1 ", 160, -290);
        if(keyPressed){
           if (key =='Q'|| key =='q'){
             jugador1= 1;
             vida1= hechicero.vida;
             ataque1= hechicero.ataque;
             vidatotal1=hechicero.vida;
             celia=2;
           } 
        }
           
        if(keyPressed){
           if (key =='W'|| key =='w'){
             jugador1= 2;
             vida1= guerrero.vida;
             ataque1= guerrero.ataque;
             vidatotal1=guerrero.vida;
             celia=2;
           }
        }
         if(keyPressed){
           if (key =='E'|| key =='e'){
             jugador1= 3;
             vida1= lenador.vida;
             ataque1= lenador.ataque;
             vidatotal1=lenador.vida;
             celia=2;
           }
         }
           
           if(keyPressed){
           if (key =='R'|| key =='r'){
             jugador1= 4;
             vida1= principe.vida;
             ataque1= principe.ataque;
             vidatotal1=principe.vida;
             celia=2;
           }
           }
           
           if(keyPressed){
           if (key =='T'|| key =='t'){
             jugador1= 5;
             vida1= princesa.vida;
             ataque1= princesa.ataque;
             vidatotal1=princesa.vida;
             celia=2;
           }
           }
           keyPressed=false;
          keyCode=0;

      }//celia =1
           
           
        if(celia==2){
        textSize(37);
        fill(0);
        text("Jugador 2 ", 160, -290);
        
        if(keyPressed){
           if (key =='Q'|| key =='q'){
             jugador2= 1;
             vida2= hechicero.vida;
             ataque2= hechicero.ataque;
             vidatotal2=hechicero.vida;
             p=3;
             
           } 
        }
           
        if(keyPressed){
           if (key =='W'|| key =='w'){
             jugador2= 2;
             vida2= guerrero.vida;
             ataque2= guerrero.ataque;
             vidatotal2=guerrero.vida;
             p=3;
           }
        }
         if(keyPressed){
           if (key =='E'|| key =='e'){
             jugador2= 3;
             vida2= lenador.vida;
             ataque2= lenador.ataque;
             vidatotal2=lenador.vida;
             p=3;
           }
         }
           
           if(keyPressed){
           if (key =='R'|| key =='r'){
             jugador2= 4;
             vida2= principe.vida;
             ataque2= principe.ataque;
             vidatotal2=principe.vida;
            p=3;
         
           }
           }
           
           if(keyPressed){
           if (key =='T'|| key =='t'){
             jugador2= 5;
             vida2= princesa.vida;
             ataque2= princesa.ataque;
             vidatotal2=princesa.vida;
             p=3;
           }
           }//T
           
        }//celia =2
        
        
       
      }//selección
      
      void pelea(){
        
        
        background (128,149,168);
        
        for(int i = 0; i<drops.length;i++){
        drops[i].show();
        drops[i].fall();
        }
        
        fill(31,16,13);
        rect(0,430,700,70);
        
        fill(0);
        rect(265,20,160,60);
        textSize(42);
        fill(255);
        text(" VS ", 308,65);
        
        
        textSize(25);
        fill(255);
        text(" Presiona la tecla D ", 65,460);
        
        textSize(27);
        fill(255);
        text(" Presiona la tecla  J ", 405,460);
        
      
      if(jugador1==1){
        pushMatrix();
        fill(0);
        rect(120,35,145,45);
        textSize(25);
        fill(255);
        text(" Hechicero ", 125,65);
        translate(620,60);
        scale(-1,1);
        hechicero.d_hechicero();
        popMatrix();
      }
      
      if(jugador1==2){
        pushMatrix();
        fill(0);
        rect(120,35,145,45);
        textSize(25);
        fill(255);
        text(" Guerrero ", 128,65);
        translate(590,20);
        scale(-1,1);
        guerrero.d_guerrero();
        popMatrix();
      }
      
      if(jugador1==3){
        pushMatrix();
        fill(0);
        rect(120,35,145,45);
        textSize(25);
        fill(255);
        text(" Leñador ", 137,65);
        translate(620,70);
        scale(-1,1);
        lenador.d_lenador();
        popMatrix();
      }
      
      if(jugador1==4){
        pushMatrix();
        fill(0);
        rect(60,35,205,45);
        textSize(25);
        fill(255);
        text(" Principe Felipe ", 67,65);
        scale(1.2);
        translate(-250,30);
        principe.d_principe();
        popMatrix();
      }
      
      if(jugador1==5){
        pushMatrix();
        fill(0);
        rect(60,35,205,45);
        textSize(25);
        fill(255);
        text(" Princesa Sofía ", 72,65);
        scale(1.2);
        translate(-260,0);
        princesa.d_princesa();
        popMatrix();
      }
      
      
      if(jugador2==1){
        pushMatrix();
        fill(41,90,157);
        rect(427,33,150,49);
        fill(0);
        rect(429,36,144,43);
        textSize(25);
        fill(255);
        text(" Hechicero ", 433,65);
        translate(55,60);
        hechicero.d_hechicero();
        popMatrix();
      }
      
      if(jugador2==2){
        pushMatrix();
        fill(41,90,157);
        rect(427,33,150,49);
        fill(0);
        rect(429,36,144,43);
        textSize(25);
        fill(255);
        text(" Guerrero ", 430,65);
        translate(150,20);
        guerrero.d_guerrero();
        popMatrix();
      }
      
      if(jugador2==3){
        pushMatrix();
        fill(41,90,157);
        rect(427,33,150,49);
        fill(0);
        rect(429,36,144,43);
        textSize(25);
        fill(255);
        text(" Leñador ", 444,65);
        translate(80,70);
        lenador.d_lenador();
        popMatrix();
      }
      
      if(jugador2==4){
        pushMatrix();
        fill(41,90,157);
        rect(427,33,220,49);
        fill(0);
        rect(429,36,214,43);
        textSize(25);
        fill(255);
        text(" Principe Felipe ", 442,65);
        scale(1.2);
        //translate(120,30);
        translate(820,30);
        scale(-1,1);
        principe.d_principe();
        popMatrix();
      }
      
      if(jugador2==5){
        pushMatrix();
        fill(41,90,157);
        rect(427,33,220,49);
        fill(0);
        rect(429,36,214,43);
        textSize(25);
        fill(255);
        text(" Princesa Sofía ", 447,65);
        scale(1.2);
        translate(850,0);
        scale(-1,1);
        princesa.d_princesa();
        popMatrix();
      }
      
      barra();
      
      if (turno==1&& keyPressed && (key=='D' || key =='d')){
        vida2=vida2-ataque1;
        barra2=(vida2*150)/vidatotal2;
        if(vida2<=0){
          carta=jugador1;
          ganador=1;
          barra2=0;
          p=4;
        }
        else{
        turno=2;
        }
      }
      
      
      barra();
     if (turno==2&& keyPressed && (key=='J' || key =='j')){
        vida1=vida1-ataque2;
        barra1=(vida1*150)/vidatotal1;
        if(vida1<=0){
          carta=jugador2;
          ganador=2;
          barra1=0;
          p=4;
        }
        else{
        turno=1;
        }

      }//TURNO 2
      }//pelea
      
      
      void resolucion(){
      
      background(197,230,255);
      fill(77,168,51);
      rect(0,458,700,42);
      
      for(int i = 0; i<confetis.length;i++){
        confetis[i].show();
        confetis[i].fall();
        }

      if(ganador==1){
        textSize(38);
        fill(0);
        text(" ¡Felicidades jugador 1! ", 130,100);
      }
      
      else{
        textSize(38);
        fill(0);
        text(" ¡Felicidades jugador 2! ", 130,100);
      }
      
      if (carta ==1){
        translate(-100,88);
        hechicero.d_hechicero();
      }
      
      if (carta ==2){
        translate(-50,50);
        guerrero.d_guerrero();
      }
      
      if (carta ==3){
        translate(-100,100);
        lenador.d_lenador();
      }
      
      if (carta ==4){
        translate(-110,62);
        scale(1.2);
        principe.d_principe();
      }
      
      if (carta ==5){
        translate(-125,28);
        scale(1.2);
        princesa.d_princesa();
      }
      
      
      
      if (key =='I'|| key =='i'){
      p=1;
      celia=1;
      jugador1=0;
      vida1=0;
      ataque1=0;
      jugador2=0;
      vida2=0;
      ataque2=0;
      carta=0;
      ganador=0;
      turno =1;
      
      }
 
 
 
   }
      
}
