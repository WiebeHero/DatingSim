public class BackgroundScene extends Conversation{
  
  private Image image;
  
  public BackgroundScene(Image image){
    super(Enums.ProceedType.BACKGROUND);
    this.image = image;
  }
  
  public Image getImage(){
    return this.image;
  }
  
}
