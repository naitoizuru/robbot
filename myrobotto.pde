float baseH = 60;
float armL1 = 40;
float armL2 = 40;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float dif = 1.0;


void setup(){
  frameRate(100);
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'd'){
      angle2 = angle2 + dif;
    }
    if(key == 'D'){
      angle2 = angle2 - dif;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,-baseH/2);
  fill(175);
  box(10,10,baseH);
  
  //1st link
  translate(0,0,baseH/2);
  rotateX(radians(angle1));
  fill(150);
  sphere(8);
  translate(0,armL1/2,0);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,armL1/2,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  fill(125);
  sphere(8);
  translate(0,armW2+10,0);
  box(armW2,armL2,armW2);
  translate((-armW2+2.5)/2,armL2/2,0);
  box(2.5,20,2.5);
  translate(armW2-2.5,0,0);
  box(2.5,20,2.5);

}
