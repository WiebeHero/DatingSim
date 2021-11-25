public class DateSelectionScene extends Scene{
    
  public DateSelectionScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Background background = new Background(this.imageManager.getImage("GeneralBackground"), 0.0D, 0.0D, 1300, 800);
    Box box = new Box(50.0D, 50.0D, 1000, 800, Enums.RenderFrom.CENTER);
    Text text = new Text("Choose your date", 30, #FFFFFF, 50.0D, 10.0D, Enums.RenderFrom.CENTER);
    GameCharacter gameCharacter1 = new GameCharacter(this.imageManager.getImage("Mark1"), "Mark", "MALE", 15.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.clickCooldown();
        sceneManager.setActiveScene("DATE_MIKE");
        DateMikeScene dateMikeScene = (DateMikeScene)sceneManager.getActiveSceneObject("DATE_MIKE");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenDate(this.getName());
        dateMikeScene.changeScene();
      }
    };
    
    GameCharacter gameCharacter2 = new GameCharacter(this.imageManager.getImage("DateGirl1"), "Girl", "NONE", 50.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        
      }
    };
    
    GameCharacter gameCharacter3 = new GameCharacter(this.imageManager.getImage("GothGirl1"), "Gothgirl", "NONE", 85.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        
      }
    };
    box.addObject(background);
    box.addObject(text);
    box.addObject(gameCharacter1);
    box.addObject(gameCharacter2);
    box.addObject(gameCharacter3);
    uiManager.addObject(box);
  }
  
}
