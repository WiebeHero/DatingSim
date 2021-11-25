public class UIManager{
  
  private ArrayList<UIObject> objects;
  private long clickCooldown;
  
  public UIManager(){
    this.objects = new ArrayList<UIObject>(); 
  }
  
  public void addObject(UIObject object){
    this.objects.add(object);
  }
  
  public UIObject getObject(int index){
    return this.objects.get(index);
  }
  
  public ArrayList<UIObject> getObjects(){
    return this.objects;  
  }
  
  public void render(){
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
      if(mouseX >= bounds.getX() && mouseX <= bounds.getX() + bounds.getWidth() && mouseY >= bounds.getY() && mouseY <= bounds.getY() + bounds.getHeight()){
        if(object.isRendering() && object.isClickable()){
          object.click();
        }
      }
    }
  }
  
  public void press(){
    for(int i = 0; i < this.objects.size(); i++){
      UIObject object = this.objects.get(i);
      if(object.isRendering()){
        object.press();
      }
    }
  }
  
}
