public class TextBox extends UIObject{
   
  private Image background;
  private Text text;
  
  public TextBox(Text text, Image background, double xPercent, double yPercent, int tWidth, int tHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, tWidth, tHeight, renderFrom);
    this.background = background;
    this.text = text;
    this.text.setParent(this);
  }
  
  public TextBox(Text text, Image background, double xPercent, double yPercent, int tWidth, int tHeight){
    super(xPercent, yPercent, tWidth, tHeight);
    this.background = background;
    this.text = text;
    this.text.setParent(this);
  }
  
  public void render(){
    if(background != null){
      image(background.getImage(), this.getX(), this.getY(), this.bounds.getWidth(), this.bounds.getHeight());
    }
    else{
      fill(#000000);
      rect(this.getX(), this.getY(), this.getBounds().getWidth(), this.getBounds().getHeight());
    }
    if(text != null){
      this.text.render();
    }
  }
  
  public void click(){}
  public void press(){}
  
  public Image getBackground(){
    return this.background;
  }
  
  public void setBackground(Image background){
    this.background = background;
  }
  
  public Text getText(){
    return this.text;
  }
  
  public void setText(Text text){
    this.text = text;
  }
}
