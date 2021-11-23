public class Text extends UIObject {

  private String text;
  private int size, coloring;
  private PFont font;

  public Text(String text, int size, int coloring, double xPercent, double yPercent, Enums.RenderFrom renderFrom) {
    super(xPercent, yPercent, 0.0, 0.0, renderFrom);
    this.text = text;
    this.size = size;
    this.font = createFont("Arial", this.size);
    textSize(this.size);
    textFont(font);
    this.bounds.bWidth = textWidth(text);
    TextHelper textHelper = new TextHelper();
    this.bounds.bHeight = textHelper.getExactTextHeight(this) / -2;
    this.coloring = coloring;
  }

  public Text(double xPercent, double yPercent, float tWidth, float tHeight, Enums.RenderFrom renderFrom) {
    super(xPercent, yPercent, tWidth, tHeight, renderFrom);
  }

  public void render() {
    textSize(this.size);
    fill(this.coloring);
    text(text, this.x, this.y);
  }

  public String getContents() {
    return this.text;
  }

  public void setContents(String text) {
    this.text = text;
    this.bounds.bWidth = textWidth(text);
    TextHelper textHelper = new TextHelper();
    this.bounds.bHeight = textHelper.getExactTextHeight(this) / -2;
  }

  public int getSize() {
    return this.size;
  }

  public void setSize(int size) {
    this.size = size;
  }
  
  public PFont getFont(){
    return this.font;
  }
  
  public void click(){
    
  }
}
