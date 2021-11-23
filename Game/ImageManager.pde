import java.util.Arrays;
import java.io.File;

public class ImageManager{
  
  private Config config;
  private String path;
  private ArrayList<Image> images;
  
  public ImageManager(Config config){
    this.config = config;
    this.images = new ArrayList<Image>();
  }
  
  public ArrayList<Image> getImages(){
    return this.images;
  }
  
  public Image getImage(String identifier){
    for(int i = 0; i < this.images.size(); i++){
      Image image = this.images.get(i);
      if(image.getIdentifier().equals(identifier)){
        return image;
      }
    }
    return null;
  }
  
  public void addImage(Image image){
    this.images.add(image);
  }
  
  public void addImages(Image... image){
    this.images.addAll(Arrays.asList(image));
  }
  
  public void loadImages(){
    File assetFolder = new File(config.getAssetPath());
    if(assetFolder.isDirectory()){
      this.insidesFolder(assetFolder);
    }
  }
  
  private void insidesFolder(File folder){
    for(File file : folder.listFiles()){
      if(file.exists()){
        if(file.isDirectory()){
          this.insidesFolder(file);
        }
        else{
          String splitted[] = file.getName().split("\\.");
          if(splitted.length == 2){
            if(splitted[1].contains("png") || file.getName().contains("PNG") || file.getName().contains("jpg") || file.getName().contains("JPG")){
              PImage pImage = loadImage(file.getPath());
              this.images.add(new Image(pImage, pImage.width, pImage.height, splitted[0]));
            }
          }
        }
      }
    }
  }
}
