public class CustomCharacter extends UIObject{
  
  private Image image;
  private String characterName;
  
  public CustomCharacter(String name, Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.characterName = name;
    this.image = image;
  }
  
  public void render(){
    if(this.image != null){
      image(image.getImage(), this.x, this.y, this.bounds.getWidth(), this.bounds.getHeight());
    }
  }
  
  public void click(){
    
  }
  
}
