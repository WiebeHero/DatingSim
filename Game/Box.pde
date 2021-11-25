public class Box extends UIObject{
  
  private ArrayList<UIObject> objects;
  
  public Box(double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    super(xPercent, yPercent, bWidth, bHeight, renderFrom);
    this.objects = new ArrayList<UIObject>();
  }
  
  public void render(){
    noFill();
    noStroke();
    rect(this.x, this.y, this.bounds.bWidth, this.bounds.bHeight);
    for(int i = 0; i < this.objects.size(); i++){
      UIObject object = this.objects.get(i);
      if(object.isRendering()){
        object.render();
      }
    }
  }
  
  public void click(){
    for(int i = 0; i < this.objects.size(); i++){
      UIObject object = this.objects.get(i);
      Bounds bounds = object.getBounds();
      if(mouseX >= bounds.getX() && mouseX <= bounds.getX() + bounds.getWidth() && mouseY >= bounds.getY() && mouseY <= bounds.getY() + bounds.getHeight() && object.isRendering() && object.isClickable()){
        object.click();
      }
    }
  }
  
  public void press(){
    for(int i = 0; i < this.objects.size(); i++){
      UIObject object = this.objects.get(i);
      object.press();
    }
  }
  
  public void addObject(UIObject object){
    object.setParent(this);
    this.objects.add(object);
  }
  
  public UIObject getObject(int index){
    return this.objects.get(index);
  }
  
}
