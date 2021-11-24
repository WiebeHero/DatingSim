public class CharacterData extends Conversation{
  
  private Image image;
  private int x, y;
  private double xPercent, yPercent;
  private float bWidth, bHeight;
  private Enums.RenderFrom renderFrom;
  private String type;
  
  public CharacterData(Image image, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(Enums.ProceedType.CHARACTER);
    this.image = image;
    this.x = x;
    this.y = y;
    this.type = "Coordinates";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public CharacterData(Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(Enums.ProceedType.CHARACTER);
    this.image = image;
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.type = "Percentages";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public Image getImage(){
    return this.image;
  }
  
  public int getX(){
    return this.x;
  }
  
  public int getY(){
    return this.y;
  }
  
  public double getXPercent(){
    return this.xPercent;
  }
  
  public double getYPercent(){
    return this.yPercent;
  }
  
  public float getWidth(){
    return this.bWidth;
  }
  
  public float getHeight(){
    return this.bHeight;
  }
  
  public Enums.RenderFrom getRenderingFrom(){
    return this.renderFrom;
  }
  
  public String getType(){
    return this.type;
  }
  
}
