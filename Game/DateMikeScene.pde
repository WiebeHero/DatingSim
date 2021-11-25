public class DateMikeScene extends Scene{
  
  private FileLoader fileLoader;
  private int sceneProgression, score;
  private ArrayList<Button> buttons;
  private ArrayList<Conversation> convos;
  private CustomCharacter character, player;
  private TextBox textBox;
  private Text endText;
  private Empty empty;
  private Ending ending;
  private Background background;
  
  public DateMikeScene(String identifier, SceneManager sceneManager, ImageManager imageManager){
    super(identifier, sceneManager, imageManager);
    this.buttons = new ArrayList<Button>();
    this.fileLoader = new FileLoader(this.imageManager);
    this.convos = this.fileLoader.getConversations("DateMike.csv");
    this.sceneProgression = 0;
  }
  
  public void constructScene(){
    UIManager uiManager = this.uiManager;
    this.character = new CustomCharacter("Mike", null, 500, 500, 100, 100, Enums.RenderFrom.CENTER);
    this.player = new CustomCharacter(this.sceneManager.getCharacterManager().getPlayerName(), null, 500, 500, 100, 100, Enums.RenderFrom.CENTER);
    this.background = new Background(null, 0.0D, 0.0D, 1300, 800);
    Text text = new Text("", 20, #FFFFFF, 4D, 22.5D, Enums.RenderFrom.TOP_LEFT);
    this.textBox = new TextBox(text, this.imageManager.getImage("TextBox"), 50.0D, 87.5D, 1200, 150, Enums.RenderFrom.CENTER);
    Text choiceOne = new Text("", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    Text choiceTwo = new Text("", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    Text choiceThree = new Text("", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    Text choiceFour = new Text("", 20, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    this.buttons.add(new Button(choiceOne, this.imageManager.getImage("Choice"), 50.0D, 20.0D, 1200, 50, Enums.RenderFrom.CENTER){
      public void click(){
        for(int i = 0; i < 4; i++){
          buttons.get(i).setRendering(false);
          buttons.get(i).setClickable(false);
        }
        sceneProgression++;
        score += this.getScore();
        changeScene();
        empty.setClickable(true);
      }
    });
    this.buttons.get(0).setRendering(false);
    this.buttons.get(0).setClickable(false);
    this.buttons.add(new Button(choiceTwo, this.imageManager.getImage("Choice"), 50.0D, 30.0D, 1200, 50, Enums.RenderFrom.CENTER){
      public void click(){
        for(int i = 0; i < 4; i++){
          buttons.get(i).setRendering(false);
          buttons.get(i).setClickable(false);
        }
        sceneProgression++;
        score += this.getScore();
        changeScene();
        empty.setClickable(true);
      }
    });
    this.buttons.get(1).setRendering(false);
    this.buttons.get(1).setClickable(false);
    this.buttons.add(new Button(choiceThree, this.imageManager.getImage("Choice"), 50.0D, 30.0D, 1200, 50, Enums.RenderFrom.CENTER){
      public void click(){
        for(int i = 0; i < 4; i++){
          buttons.get(i).setRendering(false);
          buttons.get(i).setClickable(false);
        }
        sceneProgression++;
        score += this.getScore();
        changeScene();
        empty.setClickable(true);
      }
    });
    this.buttons.get(2).setRendering(false);
    this.buttons.get(2).setClickable(false);
    this.buttons.add(new Button(choiceFour, this.imageManager.getImage("Choice"), 50.0D, 30.0D, 1200, 50, Enums.RenderFrom.CENTER){
      public void click(){
        for(int i = 0; i < 4; i++){
          buttons.get(i).setRendering(false);
          buttons.get(i).setClickable(false);
        }
        sceneProgression++;
        score += this.getScore();
        changeScene();
        empty.setClickable(true);
      }
    });
    this.buttons.get(3).setRendering(false);
    this.buttons.get(3).setClickable(false);
    Box box = new Box(50.0D, 50.0D, 1300, 800, Enums.RenderFrom.CENTER);
    this.empty = new Empty(50.0D, 50.0D, 1300, 800, Enums.RenderFrom.CENTER){
      public void click(){
        sceneProgression++;
        changeScene();
      }
    };
    this.endText = new Text("THE END", 50, #FFFFFF, 50.0D, 50.0D, Enums.RenderFrom.CENTER);
    this.endText.setRendering(false);
    box.addObject(this.background);
    box.addObject(this.player);
    box.addObject(this.character);
    box.addObject(this.textBox);
    box.addObject(this.buttons.get(0));
    box.addObject(this.buttons.get(1));
    box.addObject(this.buttons.get(2));
    box.addObject(this.buttons.get(3));
    box.addObject(this.endText);
    box.addObject(this.empty);
    uiManager.addObject(box);
  }
  
  public void changeScene(){
    Conversation conversation = this.convos.get(sceneProgression);
    if(this.ending == null){
      this.dialogue(this.convos.get(sceneProgression));
    }
    else{
      if(this.ending.){
        this.dialogue(this.ending.getConvos().get(sceneProgression));
        printArray(this.ending.getConvos());
      }
      else{
        sceneProgression--;
        this.endText.setRendering(true);
      }
    }
  }
  
  private void dialogue(Conversation conversation){
    switch(conversation.getProceedType()){
      case BACKGROUND:
        BackgroundScene background = (BackgroundScene)conversation;
        this.background.setBackground(background.getImage());
        this.sceneProgression++;
        this.changeScene();
        break;
      case DIALOGUE:
        this.sceneManager.clickCooldown();
        Dialogue dialogue = (Dialogue)conversation;
        ArrayList<String> texts = dialogue.getDialogue();
        String finalText = "";
        for(int i = 0; i < texts.size(); i++){
          if(texts.get(i).contains("%playername%")){
            texts.set(i, texts.get(i).replace("%playername%", sceneManager.getCharacterManager().getPlayerName()));
          }
          if(!texts.get(i).contains("null")){
            finalText += texts.get(i);
          }
        }
        Text text = this.textBox.getText();
        text.setContents(finalText);
        break;
      case QUESTION:
        this.sceneManager.clickCooldown();
        this.empty.setClickable(false);
        Question question = (Question)conversation;
        ArrayList<String> questions = question.getQuestions();
        ArrayList<Integer> scores = question.getScores();
        int size = questions.size();
        switch(size){
          case 1:
            double yPos = 22.5D;
            Button button = this.buttons.get(0);
            button.setYPercent(yPos, true);
            button.setRendering(true);
            button.setClickable(true);
            button.setScore(scores.get(0));
            break;
          case 2:
            yPos = 18.5D;
            for(int i = 0; i < size; i++){
              this.buttons.get(i).setYPercent(yPos, true);
              this.buttons.get(i).setRendering(true);
              this.buttons.get(i).setClickable(true);
              this.buttons.get(i).setScore(scores.get(i));
              yPos += 8.0D;
            }
            break;
          case 3:
            yPos = 14.5D;
            for(int i = 0; i < size; i++){
              this.buttons.get(i).setYPercent(yPos, true);
              this.buttons.get(i).setRendering(true);
              this.buttons.get(i).setClickable(true);
              this.buttons.get(i).setScore(scores.get(i));
              yPos += 8.0D;
            }
            break;
          case 4:
            yPos = 10.5D;
            for(int i = 0; i < size; i++){
              this.buttons.get(i).setYPercent(yPos, true);
              this.buttons.get(i).setRendering(true);
              this.buttons.get(i).setClickable(true);
              this.buttons.get(i).setScore(scores.get(i));
              yPos += 8.0D;
            }
            break;
        }
        for(int i = 0; i < questions.size(); i++){
          Button button = this.buttons.get(i);
          Text buttonText = button.getText();
          buttonText.setContents(questions.get(i));
          buttonText.positionPercent();
          buttonText.renderFrom();
        }
        break;
      case CHARACTER:
        CharacterData characterData = (CharacterData)conversation;
        character.getBounds().setWidth((float)characterData.getWidth());
        character.getBounds().setHeight((float)characterData.getHeight());
        character.setImage(characterData.getImage());
        character.setRenderingFrom(characterData.getRenderingFrom(), false);
        if(characterData.getType().equals("Coordinates")){
          character.setX(characterData.getX(), false);
          character.setY(characterData.getY(), true);
        }
        else if(characterData.getType().equals("Percentages")){
          character.setXPercent(characterData.getXPercent(), false);
          character.setYPercent(characterData.getYPercent(), true);
        }
        if(character.getImage() != null){
          character.getImage().setFlipped(characterData.isFlipped());
        }
        sceneProgression++;
        this.changeScene();
        break;
      case PLAYER:
        CharacterData playerData = (CharacterData)conversation;
        player.getBounds().setWidth((float)playerData.getWidth());
        player.getBounds().setHeight((float)playerData.getHeight());
        println("Here we are!");
        println(sceneManager.getCharacterManager().getChosenCharacter());
        player.setImage(playerData.getImage(sceneManager.getCharacterManager().getChosenCharacter()));
        player.setRenderingFrom(playerData.getRenderingFrom(), false);
        if(playerData.getType().equals("Coordinates")){
          player.setX(playerData.getX(), false);
          player.setY(playerData.getY(), true);
        }
        else if(playerData.getType().equals("Percentages")){
          player.setXPercent(playerData.getXPercent(), false);
          player.setYPercent(playerData.getYPercent(), true);
        }
        if(player.getImage() != null){
          player.getImage().setFlipped(playerData.isFlipped());
        }
        sceneProgression++;
        this.changeScene();
        break;
      case END: 
        if(score <= 5){
          for(int i = 0; i < this.convos.size(); i++){
            Conversation convo = this.convos.get(i);
            if(convo.getProceedType() == Enums.ProceedType.BAD_ENDING){
              this.ending = (Ending)convo;
            }
          }
        }
        else if(score > 5 && score < 15){
          for(int i = 0; i < this.convos.size(); i++){
            Conversation convo = this.convos.get(i);
            if(convo.getProceedType() == Enums.ProceedType.NEUTRAL_ENDING){
              this.ending = (Ending)convo;
            }
          }
        }
        else if(score >= 15){
          for(int i = 0; i < this.convos.size(); i++){
            Conversation convo = this.convos.get(i);
            if(convo.getProceedType() == Enums.ProceedType.GOOD_ENDING){
              this.ending = (Ending)convo;
            }
          }
        }
        sceneProgression = 0;
        this.changeScene();
        break;
    }
  }
}
