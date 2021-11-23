public class FileLoader{
  
  private ImageManager imageManager;
  
  public FileLoader(ImageManager imageManager){
    this.imageManager = imageManager;
  }
  
  public ArrayList<Conversation> getConversations(String filePath){
    ArrayList<Conversation> convos = new ArrayList<Conversation>();
    boolean done = false;
    Table table = loadTable("Assets/Dates/DateMike.csv", "header");
    for(TableRow row : table.rows()){
      String dataType = row.getString("DataType");
      if(dataType.equalsIgnoreCase("Dialogue")){
        ArrayList<String> lines = new ArrayList<String>();
        for(int i = 1; i <= 4; i++){
          String line = row.getString("Option" + i);
          lines.add(line);
        }
        Dialogue dialogue = new Dialogue(lines);
        convos.add(dialogue);
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
        convos.add(question);
      }
      else if(dataType.equalsIgnoreCase("Background")){
        println("Waw!");
        String background = row.getString("Option1");
        Image image = this.imageManager.getImage(background);
        BackgroundScene backgroundScene = new BackgroundScene(image);
        convos.add(backgroundScene);
      }
    }
    return convos;
  }
}
