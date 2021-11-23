public class Bounds{
  
  private float x, y, bWidth, bHeight;
  
  public Bounds(float x, float y, float bWidth, float bHeight){
    this.x = x;
    this.y = y;
    this.bWidth = bWidth;
    this.bHeight = bHeight;
  }
  
  public float getX(){
    return this.x;
  }
  
  public float getY(){
    return this.y;
  }
  
  public float getWidth(){
   return this.bWidth; 
  }
  
  public float getHeight(){
   return this.bHeight; 
  }
  
  public boolean isHovering(){
    if(this.x > mouseX && this.x + this.bWidth < mouseX && this.y > mouseY && this.y + this.bHeight < mouseY){
      return true;
    }
    return false;
  }
}
