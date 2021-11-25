public class DateSelectionScene extends Scene{
    
  public DateSelectionScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Background background = new Background(this.imageManager.getImage("GeneralBackground"), 0.0D, 0.0D, 1300, 800);
    Box box = new Box(50.0D, 50.0D, 1000, 800, Enums.RenderFrom.CENTER);
    GameCharacter gameCharacter1 = new GameCharacter(null, "Mike", "MALE", 35.0D, 50.0D, 100, 300, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.clickCooldown();
        sceneManager.setActiveScene("DATE_MIKE");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenDate(this.getName());
      }
    };
    
    GameCharacter gameCharacter2 = new GameCharacter(null, "Smth", "NONE", 50.0D, 50.0D, 100, 300, Enums.RenderFrom.CENTER){
      public void click(){
        
      }
    };
    
    GameCharacter gameCharacter3 = new GameCharacter(null, "Smth", "NONE", 65.0D, 50.0D, 100, 300, Enums.RenderFrom.CENTER){
      public void click(){
        
      }
    };
    box.addObject(background);
    box.addObject(gameCharacter1);
    box.addObject(gameCharacter2);
    box.addObject(gameCharacter3);
    uiManager.addObject(box);
  }
  
}
