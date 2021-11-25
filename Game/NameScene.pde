public class NameScene extends Scene{
  
  public NameScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Background background = new Background(imageManager.getImage("GeneralBackground"), 0.0D, 0.0D, 1300, 800);
    Box box = new Box(50.0D, 50.0D, 1000, 800, Enums.RenderFrom.CENTER);
    Text placeholder = new Text("Type your name here...", 20, #dFdFdF, 5D, 60.0D, Enums.RenderFrom.TOP_LEFT);
    Text text = new Text("", 20, #FFFFFF, 5D, 60.0D, Enums.RenderFrom.TOP_LEFT);
    Input input = new Input(this.imageManager.getImage("Button"), text, placeholder, 50.0D, 50.0D, 250, 50, Enums.RenderFrom.CENTER);
    Text text2 = new Text("ENTER", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    Button button = new Button(text2, this.imageManager.getImage("Button"), 50.0D, 60.0D, 100, 30, Enums.RenderFrom.CENTER){
      public void click(){
        CharacterManager characterManager = sceneManager.getCharacterManager();
        if(text.getContents().length() != 0){
          characterManager.setPlayerName(text.getContents());
        }
        else{
          characterManager.setPlayerName("Shrek");
        }
        sceneManager.setActiveScene("CHARACTER_SELECTION");
      }
    };
    box.addObject(background);
    box.addObject(input);
    box.addObject(button);
    
    uiManager.addObject(box);
  }
  
}
