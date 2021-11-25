public class CharacterSelectionScene extends Scene{
  
  public CharacterSelectionScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Background background = new Background(this.imageManager.getImage("GeneralBackground"), 0.0D, 0.0D, 1300, 800);
    Box box = new Box(50.0D, 50.0D, 1000, 800, Enums.RenderFrom.CENTER);
    Text text = new Text("Choose your character", 30, #FFFFFF, 50.0D, 10.0D, Enums.RenderFrom.CENTER);
    GameCharacter gameCharacter1 = new GameCharacter(this.imageManager.getImage("Boy1"), "", "MALE", 15.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("DATE_SELECTION");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenCharacter(0);
      }
    };
    
    GameCharacter gameCharacter2 = new GameCharacter(this.imageManager.getImage("Binary1"), "", "BINARY", 50.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("DATE_SELECTION");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenCharacter(1);
      }
    };
    
    GameCharacter gameCharacter3 = new GameCharacter(this.imageManager.getImage("Girl1"), "", "FEMALE", 85.0D, 50.0D, 210, 570, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("DATE_SELECTION");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenCharacter(2);
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
