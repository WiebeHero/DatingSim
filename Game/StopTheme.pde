public class StopTheme extends Conversation{
  
  private String themeToStop;
  
  public StopTheme(String themeToStop){
    super(Enums.ProceedType.STOP_THEME);  
    this.themeToStop = themeToStop;
  }
  
  public String getThemeToStop(){
    return this.themeToStop;
  }
}
