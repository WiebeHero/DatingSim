public class Input extends UIObject{
  
  private Image image;
  private Text text, placeholder;
  
  public Input(Image image, Text text, Text placeholder, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.text = text;
    this.placeholder = placeholder;
    this.image = image;
    this.text.setParent(this);
    this.placeholder.setParent(this);
  }
  
  public Input(Text text, Text placeholder, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.text = text;
    this.placeholder = placeholder;
    this.text.setParent(this);
    this.placeholder.setParent(this);
  }
  
  public void render(){
    if(this.image != null){
      image(this.image.getImage(), this.x, this.y, this.bounds.getWidth(), this.bounds.getHeight());
    }
    if(this.placeholder != null){
      if(this.text.getContents().length() == 0){
        this.placeholder.render();
      }
    }
    if(this.text != null){
      this.text.render();
    }
  }
  
  public void click(){
    
  }
  
  public void press(){
    if(key == BACKSPACE){
      if(text.getContents().length() > 0){
        text.setContents(text.getContents().substring(0, text.getContents().length() - 1));
      }
    }
    else if(key != CODED){
      String newString = text.getContents();
      newString += key;
      text.setContents(newString);
    }
  }
  
  public Text getInput(){
    return this.text;
  }
  
}
