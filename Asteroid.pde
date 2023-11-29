class Asteroid extends Floater
{
   private double rotSpeed; //randomly + or -
   public Asteroid(){
   myColor=255;
   corners = 6;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0]=-11;
   yCorners[0]= -8;
   xCorners[1]= 7;
   yCorners[1]= -8;
   xCorners[2]=13;
   yCorners[2]= 0;
   xCorners[3]= 10;
   yCorners[3]= 10;
   xCorners[4]=-11;
   yCorners[4]= 8;
   xCorners[5]=-17;
   yCorners[5]= 0;
   myCenterX=Math.random()*800;
   myCenterY=Math.random()*800;
   myXspeed=Math.random()*6-3; 
   myYspeed=Math.random()*6-3;
   rotSpeed=Math.random()*20-10;
   }
   public void move(){
   turn(rotSpeed);
   super.move();
   }
}
