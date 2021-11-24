public class Ending extends Conversation{
  
  private ArrayList<Conversation> convos;
  
  public Ending(){
    super(Enums.ProceedType.END);
    this.convos = new ArrayList<Conversation>();
  }
  
  public Ending(Enums.ProceedType proceedType){
    super(proceedType);
    this.convos = new ArrayList<Conversation>();
  }
  
  public ArrayList<Conversation> getConvos(){
    return this.convos;
  }
  
  public void addConversation(Conversation convos){
    this.convos.add(convos);
  }
  
}
