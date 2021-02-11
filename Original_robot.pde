float baseH = 60;
float armL1 = 60;
float armL2 = 40;
float armL3 = 50;
float armW1 = 10;
float armW2 = 10; 
float armW3 = 7;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l3 = 0;
float dif = 1.0;
float dif1= 2.5;
float dif2= 5.0;
float dif3= 7.5;
float dif4= 10.0;
float dif5= 0.2;
float dif6= 0.4;
float dif7= 0.6;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(120, 150, 150, 0, 0, 50, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
   
    if(key == 'q'){
      angle1 = angle1 + dif;
    }
    if(key == 'Q'){
      angle1 = angle1 - dif;
    }
    if(key == 'w'){
      angle1 = angle1 + dif1;
    }
    if(key == 'W'){
      angle1 = angle1 - dif1;
    }
    if(key == 'e'){
      angle1 = angle1 + dif2;
    }
    if(key == 'E'){
      angle1 = angle1 - dif2;
    }
    if(key == 'r'){
      angle1 = angle1 + dif3;
    }
    if(key == 'R'){
      angle1 = angle1 - dif3;
    }
    if(key == 't'){
      angle1 = angle1 + dif4;
    }
    if(key == 'T'){
      angle1 = angle1 - dif4;
    }
    if(key == 'a'){
      angle2 = angle2 + dif;
    }
    if(key == 'A'){
      angle2 = angle2 - dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif1;
    }
    if(key == 'S'){
      angle2 = angle2 - dif1;
    }
    if(key == 'd'){
      angle2 = angle2 + dif2;
    }
    if(key == 'D'){
      angle2 = angle2 - dif2;
    }
    if(key == 'f'){
      angle2 = angle2 + dif3;
    }
    if(key == 'F'){
      angle2 = angle2 - dif3;
    }
    if(key == 'g'){
      angle2 = angle2 + dif4;
    }
    if(key == 'G'){
      angle2 = angle2 - dif4;
    }
     if(key == 'z'){
      angle3 = angle3 + dif;
    }
    if(key == 'Z'){
      angle3 = angle3 - dif;
    }
    if(key == 'x'){
      angle3 = angle3 + dif1;
    }
    if(key == 'X'){
      angle3 = angle3 - dif1;
    }
    if(key == 'c'){
      angle3 = angle3 + dif2;
    }
    if(key == 'C'){
      angle3 = angle3 - dif2;
    }
    if(key == 'v'){
      angle3 = angle3 + dif3;
    }
    if(key == 'V'){
      angle3 = angle3 - dif3;
    }
    if(key == 'b'){
      angle3 = angle3 + dif4;
    }
    if(key == 'B'){
      angle3 = angle3 - dif4;
    }
    if(key == 'p'){
      l3 = l3 + dif5;
    }
    if(key == 'P'){
      l3 = l3 - dif5;
    }
    if(key == 'o'){
      l3 = l3 + dif6;
    }
    if(key == 'O'){
      l3 = l3 - dif6;
    }
    if(key == 'i'){
      l3 = l3 + dif7;
    }
    if(key == 'I'){
      l3 = l3 - dif7;
    }
    if(key == 'L'){
      angle1 =  0;
      angle2 =  0;
      angle3 =  0;
      l3=0;
    }
  }
  
  //base
 
  translate(0,0,baseH/2);
  fill(250,200,80);
  stroke(50);
  box(15,15,baseH);
  
  //1st link
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
  fill(190,60,40);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  rotateY(radians(angle2));  
translate(0,armL1/2-armW2/2,armL2/2+armW1/2);
  fill(90,190,50);
  box(armW2,armW2,armL2);
  
  //3rd link
   rotateZ(radians(angle3));  
  translate(0,armL3/2-armW2/2+l3,armL2/2+armW3/2);
  fill(150,200,250);
  box(armW3,armL3+2*l3,armW3);
}
