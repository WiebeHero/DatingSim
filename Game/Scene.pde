abstract public class Scene{
  
  protected String identifier;
  protected UIManager uiManager;
  protected SceneManager sceneManager;
  protected ImageManager imageManager;
  
  public Scene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    this.identifier = identifier;
    this.imageManager = imageManager;
    this.sceneManager = sceneManager;
    this.uiManager = new UIManager();
  }
  
  public void render(){
    this.uiManager.render();
  }
  
  public void click(){
    if(millis() >= sceneManager.clickCooldown){
      this.uiManager.click();
    }
  }
  
  public void press(){
    this.uiManager.press();
  }
  
  public UIManager getUIManager(){
    return this.uiManager; 
  }
  
  public String getIdentifier(){
    return this.identifier;
  }
  
  
}
