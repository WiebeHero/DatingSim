public class SceneManager {

  private long clickCooldown;
  private String activeScene;
  private CharacterManager characterManager;
  private ImageManager imageManager;
  private ArrayList<Scene> scenes;

  public SceneManager(ImageManager imageManager) {
    this.imageManager = imageManager;
    this.scenes = new ArrayList<Scene>();
    this.characterManager = new CharacterManager();
  }

  public void render() {
    for (int i = 0; i < this.scenes.size(); i++) {
      Scene scene = this.scenes.get(i);
      if (scene.getIdentifier().equals(this.activeScene)) {
        scene.render();
      }
    }
  }

  public void click() {
    for (int i = 0; i < this.scenes.size(); i++) {
      Scene scene = this.scenes.get(i);
      if (scene.getIdentifier().equals(this.activeScene) && millis() >= clickCooldown) {
        scene.click();
      }
    }
  }
  
  public void press(){
    for(int i = 0; i < this.scenes.size(); i++){
      Scene scene = this.scenes.get(i);
      if(scene.getIdentifier().equals(this.activeScene)){
        scene.press();
      }
    }
  }

  public void constructScenes() {
    //WHICH SCENE IT HAS TO START IN
    this.activeScene = "START_SCENE";
  
    //MAIN MENU SCENE
    StartScene startScene = new StartScene("START_SCENE", this, this.imageManager);
    startScene.constructScene();
    this.scenes.add(startScene);
    
    //NAME SELECTION SCENE
    NameScene nameScene = new NameScene("NAME_SELECTION", this, this.imageManager);
    nameScene.constructScene();
    this.scenes.add(nameScene);
  
    //CHARACTER SELECTION SCENE
    CharacterSelectionScene characterScene = new CharacterSelectionScene("CHARACTER_SELECTION", this, this.imageManager);
    characterScene.constructScene();
    this.scenes.add(characterScene);
  
    //DATE SELECTION SCENE
    DateSelectionScene dateScene = new DateSelectionScene("DATE_SELECTION", this, this.imageManager);
    dateScene.constructScene();
    this.scenes.add(dateScene);
  
    //MIKE DATE SCENE
    DateMikeScene dateMikeScene = new DateMikeScene("DATE_MIKE", this, this.imageManager);
    dateMikeScene.constructScene();
    this.scenes.add(dateMikeScene);
  }
  
  public String getActiveScene() {
    return this.activeScene;
  }
  
  public void setActiveScene(String activeScene) {
    this.activeScene = activeScene;
  }
  
  public CharacterManager getCharacterManager() {
    return this.characterManager;
  }
  
  public void clickCooldown() {
    this.clickCooldown = millis() + 500;
  }

}
