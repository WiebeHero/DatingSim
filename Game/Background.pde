public class Background extends UIObject{
  
  private Image image;
  
  public Background(Image image, double xPercent, double yPercent, float bWidth, float bHeight){
    super(xPercent, yPercent, bWidth, bHeight);
    this.image = image;
  }
  
  public void render(){
    if(this.image != null){
      image(this.image.getImage(), this.x, this.y, this.bounds.bWidth, this.bounds.bHeight);
    }
  }
  
  public void click(){
    
  }
  
  public void press(){
    
  }
  
  public void setBackground(Image image){
    this.image = image;
    if(image != null){
      this.image.setWidth((int)this.bounds.bWidth);
      this.image.setHeight((int)this.bounds.bHeight);
    }
  }
  
}
