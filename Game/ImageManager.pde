public class ImageManager{
  
  private ArrayList<Image> images;
  
  public ImageManager(){
    this.images = new ArrayList<Image>();
  }
  
  public void loadImages(){
   ImageLoader imageLoader = new ImageLoader();
   PImage customImage = imageLoader.loadCustomImage("cat.png");
   Image image1 = new Image(customImage, 100,100, "cat");
   this.images.add(image1);
   
  }
}
