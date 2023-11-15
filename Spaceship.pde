class Spaceship extends Floater {   
    public Spaceship(){
      corners=4;
      xCorners= new int[]{-16,32,-16,-4};
      yCorners= new int[]{-16,0,16,0};
      myColor=255;
      myCenterX=400;
      myCenterY=400;
    }
    public void setXspeed(double x) {
    myXspeed = x;
  }
   public void setYspeed(double y) {
    myYspeed = y;
  }
      public void setCenterX(double x) {
    myCenterX = x;
  }
   public void setCenterY(double y) {
    myCenterY = y;
  }
     public void setDirectionX(double x) {
    myPointDirection= x;
  }
}
