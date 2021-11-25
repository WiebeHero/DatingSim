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
      
    }
    else{
      if(this.definition.equals("MALE")){
        fill(#0000FF);
      }
      else if(this.definition.equals("FEMALE")){
        fill(#F00060);
      }
      else if(this.definition.equals("NONE")){
        fill(#666666);
      }
      rect(this.x, this.y, this.bounds.bWidth, this.bounds.bHeight);
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
