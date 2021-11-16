public class Main{
 
  private SceneManager sceneManager;
  
  public Main(){
    this.sceneManager = new SceneManager();
  }
  
  public SceneManager getSceneManager(){
    return this.sceneManager;
  }
  
  public void render(){
    this.sceneManager.render(); 
  }
  
  public void constructScenes(){
    this.sceneManager.constructScenes();
  }
}
