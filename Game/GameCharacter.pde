public class GameCharacter extends UIObject{
  
  private Image image;
  private String name, definition;
  
  public GameCharacter(Image image, String name, String definition, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.name = name;
    this.definition = definition;
    this.image = image;
  }
  
  public void render(){
    if(this.image != null){
      if(this.name.equalsIgnoreCase("Girl") || this.name.equalsIgnoreCase("GothGirl")){
        tint(255, 128);
      }
      image(this.image.getImage(), this.x, this.y, this.bounds.getWidth(), this.bounds.getHeight());
      noTint();
    }
    else{
      fill(#FFFFFF);
      rect(this.x, this.y, this.bounds.bWidth, this.bounds.bHeight);
      noFill();
    }
  }
  
  public void click(){}
  
  public void press(){}
  
  public String getName(){
    return this.name;
  }
  
  public String getDefinition(){
    return this.definition;
  }
}
