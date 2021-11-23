public class Question extends Conversation{
  
  private ArrayList<String> questions;
  private ArrayList<Integer> scores;
  
  public Question(ArrayList<String> questions, ArrayList<Integer> scores){
    super(Enums.ProceedType.QUESTION);
    this.questions = questions;
    this.scores = scores;
  }
  
  public ArrayList<Integer> getScores(){
    return this.scores;
  }
  
  public ArrayList<String> getQuestions(){
    return this.questions;
  }
  
}
