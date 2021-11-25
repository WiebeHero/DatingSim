public class PlayTheme extends Conversation{
  
  private String themeToPlay;
  
  public PlayTheme(String themeToPlay){
    super(Enums.ProceedType.PLAY_THEME);
    this.themeToPlay = themeToPlay;
  }
  
  public String getThemeToPlay(){
    return this.themeToPlay;
  }
  
}
