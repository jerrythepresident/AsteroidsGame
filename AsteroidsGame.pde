Star[] night = new Star[400];
Spaceship bob;
public void setup() 
{
  size(800,800);
  for(int i=0; i<night.length ;i++){
    night[i]=new Star();
  }
      bob= new Spaceship();
}
public void draw() 
{
    fill(0,0,0,50);
    rect(0,0,800,800);
    for(int i=0; i<night.length; i++){
    night[i].show();
    bob.show();
    bob.move();
  }
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
     bob.accelerate(0.001);
  }
  if(key == 's')
  {
     bob.accelerate(-0.001);
  } 
     if(key == 'h')
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX(Math.random()*800);
    bob.setCenterY(Math.random()*800);
    bob.setDirectionX(Math.random()*360);
  }
}
