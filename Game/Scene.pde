abstract public class Scene{
  
  private String identifier;
  
  public Scene(String identifier){
    this.identifier = identifier;
  }
  
  abstract public void render();
  
  public String getIdentifier(){
    return this.identifier;
  }
  
  
}
