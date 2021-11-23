public class Dialogue extends Conversation{
  
  private ArrayList<String> dialogue;
  
  public Dialogue(ArrayList<String> dialogue){
    super(Enums.ProceedType.DIALOGUE);
    for(int i = 0; i < dialogue.size(); i++){
      dialogue.set(i, dialogue.get(i) + "\n");
    }
    this.dialogue = dialogue;
  }
  
  public ArrayList<String> getDialogue(){
    return this.dialogue;
  }
  
}
