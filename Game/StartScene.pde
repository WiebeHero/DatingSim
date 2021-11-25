public class StartScene extends Scene{
  
  public StartScene(String sceneName, SceneManager sceneManager, ImageManager imageManager){
    super(sceneName, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Box box = new Box(50.0D, 50.0D, 500, 800, Enums.RenderFrom.CENTER);
    
    //Background
    Background background = new Background(this.imageManager.getImage("Background_TitleScreen"), 0.0D, 0.0D, 1300, 800);
    
    //PLAY BUTTON
    Text text = new Text("PLAY", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    Button button = new Button(text, this.imageManager.getImage("Button"), 50.0D, 50.0D, 400, 100, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("NAME_SELECTION");
      }
    };
    box.addObject(button);
    
    //SETTINGS BUTTON
    text = new Text("SETTINGS", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    button = new Button(text, this.imageManager.getImage("Button"), 50.0D, 70.0D, 400, 100, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("NAME_SELECTION");
      }
    };
    box.addObject(button);
    
    //QUIT BUTTON
    text = new Text("QUIT", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    button = new Button(text, this.imageManager.getImage("Button"), 50.0D, 90.0D, 400, 100, Enums.RenderFrom.CENTER){
      public void click(){
        exit();
      }
    };
    box.addObject(button);
    uiManager.addObject(background);
    uiManager.addObject(box);
  }
  
}
