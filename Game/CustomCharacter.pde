public class CustomCharacter extends UIObject{
  
  private Image image;
  private String characterName;
  
  public CustomCharacter(String name, Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.characterName = name;
    this.image = image;
    if(this.image != null){
      this.image.setWidth((int)this.bounds.getWidth());
      this.image.setHeight((int)this.bounds.getHeight());
    }
  }
  
  public CustomCharacter(String name, Image image, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(x, y, bWidth, bHeight, renderFrom);
    this.characterName = name;
    this.image = image;
    if(this.image != null){
      this.image.setWidth((int)this.bounds.getWidth());
      this.image.setHeight((int)this.bounds.getHeight());
    }
  }
  
  public void render(){
    if(this.image != null){
      image(image.getImage(), this.x, this.y, this.image.getWidth(), this.image.getHeight());
    }
  }
  
  public void click(){
    
  }
  
  public void setImage(Image image){
    this.image = image;
    if(this.image != null){
      this.image.setWidth((int)this.bounds.getWidth());
      this.image.setHeight((int)this.bounds.getHeight());
    }
  }
}
