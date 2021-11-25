public class CharacterSelectionScene extends Scene{
  
  public CharacterSelectionScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    Background background = new Background(this.imageManager.getImage("GeneralBackground"), 0.0D, 0.0D, 1300, 800);
    Box box = new Box(50.0D, 50.0D, 1000, 800, Enums.RenderFrom.CENTER);
    GameCharacter gameCharacter1 = new GameCharacter(null, "", "MALE", 25.0D, 50.0D, 150, 300, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("DATE_SELECTION");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenCharacter(this.getName());
      }
    };
    
    GameCharacter gameCharacter2 = new GameCharacter(null, "", "FEMALE", 75.0D, 50.0D, 150, 300, Enums.RenderFrom.CENTER){
      public void click(){
        sceneManager.setActiveScene("DATE_SELECTION");
        CharacterManager ch = sceneManager.getCharacterManager();
        ch.setChosenCharacter(this.getName());
      }
    };
    
    box.addObject(background);
    box.addObject(gameCharacter1);
    box.addObject(gameCharacter2);
    
    uiManager.addObject(box);
  }
  
}
