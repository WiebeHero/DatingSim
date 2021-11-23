public class Main{
 
  private Config config;
  private SceneManager sceneManager;
  private ImageManager imageManager;
  
  public Main(){
    this.config = new Config();
    this.imageManager = new ImageManager(this.config);
    this.sceneManager = new SceneManager(this.imageManager);
  }
  
  public SceneManager getSceneManager(){
    return this.sceneManager;
  }
  
  public void render(){
    this.sceneManager.render();
  }
  
  public void click(){
    this.sceneManager.click();
  }
  
  public void constructScenes(){
    this.sceneManager.constructScenes();
  }
  
  public void constructImages(){
    this.imageManager.loadImages();
  }
}
