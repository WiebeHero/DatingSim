public class CharacterManager{
  
  private String chosenCharacter;
  private String chosenDate;
  
  public CharacterManager(){
    this.chosenCharacter = "";
    this.chosenDate = "";
  }
  
  public String getChosenCharacter(){
    return this.chosenCharacter; 
  }
  
  public void setChosenCharacter(String chosenCharacter){
    this.chosenCharacter = chosenCharacter;
  }
  
  public String getChosenDate(){
    return this.chosenDate;  
  }
  
  public void setChosenDate(String chosenDate){
    this.chosenDate = chosenDate;
  }
  
}
