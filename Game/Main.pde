public class Main{
 
  private Config config;
  private SceneManager sceneManager;
  private ImageManager imageManager;
  private SoundManager soundManager;
  
  public Main(){
    this.config = new Config();
    this.imageManager = new ImageManager(this.config);
    this.soundManager = new SoundManager();
    this.sceneManager = new SceneManager(this.imageManager, this.soundManager);
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
  
  public void press(){
    this.sceneManager.press();
  }
  
  public void constructScenes(){
    this.sceneManager.constructScenes();
  }
  
  public void constructImages(){
    this.imageManager.loadImages();
  }
  
  public Config getConfig(){
    return this.config;
  }
  
  public SoundManager getSoundManager(){
    return this.soundManager;
  }
}
