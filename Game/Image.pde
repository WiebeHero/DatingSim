class Image{
 
  public PImage customImage; 
  int imageWidth, imageHeight;
  String identifier;
  
  public Image(PImage customImage, int imageWidth, int imageHeight, String identifier){
    
    this.customImage = customImage;
    this.imageWidth = imageWidth;
    this.imageHeight = imageHeight;
    this.identifier = identifier;
    
  }
 
 public PImage getImage(){
  return this.customImage; 
 }
   
 public int getWidth(){
  return this.imageWidth; 
 } 
 
 public int getHeight(){
  return this.imageHeight; 
 } 
  
 public String getIdentifier(){
   return this.identifier;
 }
}
