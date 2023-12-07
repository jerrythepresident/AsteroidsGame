boolean turnLeft = false;
boolean turnRight = false;
int accelerate = 0;

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
  for(int i=0; i<20;i++){
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
   if(d<15){
   danger.remove(i);
   break;
}
    for(int j=0; j<shots.size(); j++){
    shots.get(j).move();
    shots.get(j).show();
    float di = dist((float)shots.get(j).myCenterX, (float)shots.get(j).myCenterY, (float)danger.get(i).myCenterX, (float)danger.get(i).myCenterY);
    if(di<10){
   shots.remove(j);
   danger.remove(i);
   break;
  }  
  }
   }
    bob.show();
    bob.move();
 if(turnLeft == true)
    bob.turn(-4);
  if(turnRight == true)
    bob.turn(4);
  if(accelerate == 1)
    bob.accelerate(0.05);
   if(accelerate == -1)
    bob.accelerate(-0.05);

if(danger.size()==0){
textSize(128);
text("You WON!", 120, 400); 
}
    if(bob.myXspeed>5){
  bob.myXspeed=5;
}
if(bob.myYspeed>5){
  bob.myYspeed=5;
}
}


void keyPressed(){
  if(key == 'w' || key == 'W')
      accelerate = 1;
   if(key == 's' || key == 'S')
      accelerate = -1;
  if(key == 'a' || key == 'A')
      turnLeft = true;
  if(key == 'd' || key == 'D')
      turnRight = true;
  if(key == 'h' || key == 'H'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX(Math.random()*800);
    bob.setCenterY(Math.random()*800);
    bob.setDirectionX(Math.random()*360);
  }
  else if(key == ' ' && shots.size()<=30){
    shots.add(new Bullet(bob));
  }
    if(bob.myXspeed>5){
  bob.myXspeed=5;
}
if(bob.myYspeed>5){
  bob.myYspeed=5;
}
}

void keyReleased(){
    if(key == 'w' || key == 'W')
      accelerate = 0;
  if(key == 's' || key == 'S')
      accelerate = 0;
  if(key == 'a' || key == 'A')
      turnLeft = false;
  if(key == 'd' || key == 'D')
      turnRight = false;
}
