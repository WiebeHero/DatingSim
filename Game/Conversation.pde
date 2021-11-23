public abstract class Conversation{
  
  private Enums.ProceedType proceedType;
  
  public Conversation(Enums.ProceedType proceedType){
    this.proceedType = proceedType;
  }
  
  public Enums.ProceedType getProceedType(){
    return this.proceedType;
  }
  
}
