public class CharacterData extends Conversation{
  
  private ArrayList<Image> images;
  private int x, y;
  private double xPercent, yPercent;
  private float bWidth, bHeight;
  private Enums.RenderFrom renderFrom;
  private boolean flipped;
  private String type;
  
  public CharacterData(Image image, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(Enums.ProceedType.CHARACTER);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.x = x;
    this.y = y;
    this.type = "Coordinates";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public CharacterData(Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(Enums.ProceedType.CHARACTER);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.type = "Percentages";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public CharacterData(Enums.ProceedType proceedType, Image image, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(proceedType);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.x = x;
    this.y = y;
    this.type = "Coordinates";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public CharacterData(Enums.ProceedType proceedType, Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(proceedType);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.type = "Percentages";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
  }
  
  public CharacterData(Enums.ProceedType proceedType, Image image, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom, boolean flipped){
    super(proceedType);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.x = x;
    this.y = y;
    this.type = "Coordinates";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
    this.flipped = flipped;
  }
  
  public CharacterData(Enums.ProceedType proceedType, Image image, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom, boolean flipped){
    super(proceedType);
    this.images = new ArrayList<Image>();
    this.images.add(image);
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.type = "Percentages";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
    this.flipped = flipped;
  }
  
  public CharacterData(Enums.ProceedType proceedType, int x, int y, float bWidth, float bHeight, Enums.RenderFrom renderFrom, boolean flipped, Image... images){
    super(proceedType);
    this.images = new ArrayList<Image>();
    for(int i = 0; i < images.length; i++){
      this.images.add(images[i]);
    }
    this.x = x;
    this.y = y;
    this.type = "Coordinates";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
    this.flipped = flipped;
  }
  
  public CharacterData(Enums.ProceedType proceedType, double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom, boolean flipped, Image... images){
    super(proceedType);
    this.images = new ArrayList<Image>();
    for(int i = 0; i < images.length; i++){
      this.images.add(images[i]);
    }
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.type = "Percentages";
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    this.renderFrom = renderFrom;
    this.flipped = flipped;
  }
  
  public Image getImage(){
    return this.images.get(0);
  }
  
  public Image getImage(int index){
    return this.images.get(index);
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
  
  public boolean isFlipped(){
    return this.flipped;
  }
  
}
