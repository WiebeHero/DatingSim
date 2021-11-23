public class Image{
 
  private PImage customImage; 
  private int imageWidth, imageHeight;
  private String identifier;
  
  public Image(PImage customImage, int imageWidth, int imageHeight, String identifier){
    
    this.customImage = customImage;
    this.imageWidth = imageWidth;
    this.imageHeight = imageHeight;
    this.identifier = identifier;
    
  }
  
  public Image(PImage customImage, String identifier){
    
    this.customImage = customImage;
    this.identifier = identifier;
    
  }
 
  public PImage getImage(){
    return this.customImage; 
  }
   
  public int getWidth(){
    return this.imageWidth; 
  } 
  
  public void setWidth(int imageWidth){
    this.imageWidth = imageWidth;
  }
 
  public int getHeight(){
    return this.imageHeight; 
  } 
  
  public void setHeight(int imageHeight){
    this.imageHeight = imageHeight;
  }
  
  public String getIdentifier(){
    return this.identifier;
  }
}
