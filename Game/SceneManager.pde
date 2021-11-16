public class SceneManager{
  
  private String activeScene;
  private ArrayList<Scene> scenes;
  
  public SceneManager(){
    this.scenes = new ArrayList<Scene>();
  }
  
  public void render(){
    for(int i = 0; i < this.scenes.size(); i++){
      Scene scene = this.scenes.get(i);
      scene.render();
    }
  }
  
  public void constructScenes(){
    StartScene startScene = new StartScene();
  }
  
}
