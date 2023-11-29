private Star[] night = new Star[400];
private ArrayList <Asteroid> danger = new ArrayList <Asteroid>();
private ArrayList <Bullet> shots = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();;
public void setup() 
{
  size(800,800);
  for(int i=0; i<night.length ;i++){
    night[i]=new Star();
  }
  for(int i=0; i<10 ;i++){
    danger.add(new Asteroid());
  }
}
public void draw(){
    fill(0,0,0,50);
    rect(0,0,800,800);
    for(int i=0; i<night.length; i++){
    night[i].show();
    }
    for(int i=0; i<danger.size(); i++){
    danger.get(i).move();
    danger.get(i).show();
   float d = dist((float)bob.myCenterX, (float)bob.myCenterY, (float)danger.get(i).myCenterX, (float)danger.get(i).myCenterY);
   if(d<10){
   danger.remove(i);
}
   }
    for(int i=0; i<shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
//    float d = dist((float)shots.get(i).myCenterX, (float)shots.get(i).myCenterY, (float)danger.get(i).myCenterX, (float)danger.get(i).myCenterY);
//     if(d<10){
//   shots.remove(i);
//  }  
  }
    bob.show();
    bob.move();
}

public void keyPressed(){
   if(key == 'd')
  {
     bob.turn(10);
  }
    if(key == 'a')
  {
     bob.turn(-10);
  }
  if(key == 'w')
  {
     bob.accelerate(0.1);
  }
  if(key == 's')
  {
     bob.accelerate(-0.1);
  } 
     if(key == 'h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX(Math.random()*800);
    bob.setCenterY(Math.random()*800);
    bob.setDirectionX(Math.random()*360);
  }
  else if(key == ' '){
    shots.add(new Bullet(bob));
  }
  if(bob.myXspeed>30){
  bob.myXspeed=30;
}
if(bob.myYspeed>30){
  bob.myYspeed=30;
}
}


//use a and d to turn
//use w and s to accelrate
//h for hyperspace
//press space to shoot
