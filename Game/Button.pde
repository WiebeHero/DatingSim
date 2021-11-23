public class Button extends UIObject{
  
  private Image image;
  private Text text;
  private int score;
  
  public Button(Text text, Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.text = text;
    this.image = image;
    if(image != null){
      this.image.setWidth((int)this.bounds.getWidth());
      this.image.setHeight((int)this.bounds.getHeight());
    }
    this.text.setParent(this);
    this.score = 0;
  }
  
  public Button(Text text, PImage image, String identifier, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.text = text;
    this.image = new Image(image, (int)bWidth, (int)bHeight, identifier);
    if(image != null){
      this.image.setWidth((int)this.bounds.getWidth());
      this.image.setHeight((int)this.bounds.getHeight());
    }
    this.text.setParent(this);
  }
  
  public void render(){
    if(this.render && this.clickable){
      if(image != null){
        image(image.getImage(), this.x, this.y, this.bounds.getWidth(), this.bounds.getHeight());
        this.text.render();
      }
      else{
        fill(#000000);
        rect(this.x, this.y, this.bounds.bWidth, this.bounds.bHeight);
        this.text.render();
      }
    }
  }
  
  public void setScore(int score){
    this.score = score;
  }
  
  public int getScore(){
    return this.score;
  }
  
  public void click(){
    
  }
  
  public Text getText(){
    return this.text;
  }
  
}
