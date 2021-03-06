public class FileLoader{
  
  private ImageManager imageManager;
  private SoundManager soundManager;
  
  public FileLoader(ImageManager imageManager, SoundManager soundManager){
    this.imageManager = imageManager;
    this.soundManager = soundManager;
  }
  
  public ArrayList<Conversation> getConversations(String filePath){
    ArrayList<Conversation> convos = new ArrayList<Conversation>();
    boolean done = false;
    Table table = loadTable("Assets/Dates/DateMike.csv", "header");
    Ending ending = null;
    for(TableRow row : table.rows()){
      String dataType = row.getString("DataType");
      if(dataType.equalsIgnoreCase("Dialogue")){
        ArrayList<String> lines = new ArrayList<String>();
        for(int i = 1; i <= 4; i++){
          String line = row.getString("Option" + i);
          lines.add(line);
        }
        Dialogue dialogue = new Dialogue(lines);
        if(ending == null){
          convos.add(dialogue);
        }
        else{
          ending.addConversation(dialogue);
        }
      }
      else if(dataType.equalsIgnoreCase("Question")){
        int choiceAmount = 0;
        ArrayList<String> choices = new ArrayList<String>();
        ArrayList<Integer> scores = new ArrayList<Integer>();
        for(int i = 1; i <= 4; i++){
          String line = row.getString("Option" + i);
          try{
            Integer.parseInt(line);
            choiceAmount = i - 1;
            break;
          }
          catch(NumberFormatException ex){
            choices.add(line);
          }
        }
        for(int i = 1; i <= choiceAmount; i++){
          int score = row.getInt("Option" + (choiceAmount + i));
          scores.add(score);
        }
        Question question = new Question(choices, scores);
        if(ending == null){
          convos.add(question);
        }
        else{
          ending.addConversation(question);
        }
      }
      else if(dataType.equalsIgnoreCase("Background")){
        String background = row.getString("Option1");
        Image image = this.imageManager.getImage(background);
        BackgroundScene backgroundScene = new BackgroundScene(image);
        if(ending == null){
          convos.add(backgroundScene);
        }
        else{
          ending.addConversation(backgroundScene);
        }
      }
      else if(dataType.equalsIgnoreCase("Character")){
        String character = row.getString("Option1");
        Image image = this.imageManager.getImage(character);
        int x = 0;
        int y = 0;
        double xPercent = 0.00;
        double yPercent = 0.00;
        String orderType = row.getString("Option2");
        float bWidth = row.getFloat("Option5");
        float bHeight = row.getFloat("Option6");
        Enums.RenderFrom renderFrom = Enums.RenderFrom.valueOf(row.getString("Option7"));
        CharacterData characterData = null;
        if(orderType.equalsIgnoreCase("Coordinates")){
          x = row.getInt("Option3");
          y = row.getInt("Option4");
          characterData = new CharacterData(image, x, y, bWidth, bHeight, renderFrom);
        }
        else if(orderType.equalsIgnoreCase("Percentages")){
          xPercent = row.getDouble("Option3");
          yPercent = row.getDouble("Option4");
          characterData = new CharacterData(image, xPercent, yPercent, bWidth, bHeight, renderFrom);
        }
        boolean flipped = Boolean.valueOf(row.getString("Option8"));
        if(ending == null){
          convos.add(characterData);
        }
        else{
          ending.addConversation(characterData);
        }
      }
      else if(dataType.equalsIgnoreCase("Player")){
        String character1 = row.getString("Option1");
        String character2 = row.getString("Option2");
        String character3 = row.getString("Option3");
        Image image1 = this.imageManager.getImage(character1);
        Image image2 = this.imageManager.getImage(character2);
        Image image3 = this.imageManager.getImage(character3);
        int x = 0;
        int y = 0;
        double xPercent = 0.00;
        double yPercent = 0.00;
        String orderType = row.getString("Option4");
        float bWidth = row.getFloat("Option7");
        float bHeight = row.getFloat("Option8");
        Enums.RenderFrom renderFrom = Enums.RenderFrom.valueOf(row.getString("Option9"));
        CharacterData characterData = null;
        boolean flipped = Boolean.valueOf(row.getString("Option10"));
        if(orderType.equalsIgnoreCase("Coordinates")){
          x = row.getInt("Option5");
          y = row.getInt("Option6");
          characterData = new CharacterData(Enums.ProceedType.PLAYER, x, y, bWidth, bHeight, renderFrom, flipped, image1, image2, image3);
        }
        else if(orderType.equalsIgnoreCase("Percentages")){
          xPercent = row.getDouble("Option5");
          yPercent = row.getDouble("Option6");
          characterData = new CharacterData(Enums.ProceedType.PLAYER, xPercent, yPercent, bWidth, bHeight, renderFrom, flipped, image1, image2, image3);
        }
        if(ending == null){
          convos.add(characterData);
        }
        else{
          ending.addConversation(characterData);
        }
      }
      else if(dataType.equalsIgnoreCase("PlayTheme")){
        String themeToPlay = row.getString("Option1");
        PlayTheme theme = new PlayTheme(themeToPlay);
        if(ending == null){
          convos.add(theme);
        }
        else{
          ending.addConversation(theme);
        }
      }
      else if(dataType.equalsIgnoreCase("StopTheme")){
        String themeToStop = row.getString("Option1");
        StopTheme theme = new StopTheme(themeToStop);
        if(ending == null){
          convos.add(theme);
        }
        else{
          ending.addConversation(theme);
        }
      }
      else if(dataType.equalsIgnoreCase("End")){
        End end = new End();
        convos.add(end);
      }
      else if(dataType.equalsIgnoreCase("GoodEnding")){
        if(ending != null){
          convos.add(ending);
        }
        ending = new Ending(Enums.ProceedType.GOOD_ENDING);
      }
      else if(dataType.equalsIgnoreCase("NeutralEnding")){
        if(ending != null){
          convos.add(ending);
        }
        ending = new Ending(Enums.ProceedType.NEUTRAL_ENDING);
      }
      else if(dataType.equalsIgnoreCase("BadEnding")){
        if(ending != null){
          convos.add(ending);
        }
        ending = new Ending(Enums.ProceedType.BAD_ENDING);
      }
    }
    convos.add(ending); 
    return convos;
  }
}
