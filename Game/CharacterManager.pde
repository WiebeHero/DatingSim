public class CharacterManager{
  
  private String playerName;
  private int chosenCharacter;
  private String chosenDate;
  
  public CharacterManager(){
    this.playerName = "";
    this.chosenCharacter = 0;
    this.chosenDate = "";
  }
  
  public int getChosenCharacter(){
    return this.chosenCharacter;
  }
  
  public void setChosenCharacter(int chosenCharacter){
    this.chosenCharacter = chosenCharacter;
  }
  
  public String getChosenDate(){
    return this.chosenDate;  
  }
  
  public void setChosenDate(String chosenDate){
    this.chosenDate = chosenDate;
  }
  
  public String getPlayerName(){
    return this.playerName;
  }
  
  public void setPlayerName(String name){
    this.playerName = name;
  }
  
}
