void setup(){
   size (1300,800);
   //ImageLoader imageLoader1 = new ImageLoader();
   //PImage customImage = imageLoader1.loadCustomImage("cat.png");
   //Image image1 = new Image(customImage, 100,100, "cat");
   ImageManager imageManager = new ImageManager();
   imageManager.loadImages();
   println("Identifier of the image: " + imageManager.images.get(0).identifier);
}

void draw(){
  main.render();
}
