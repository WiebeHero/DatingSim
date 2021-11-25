//Road to Love
Sound starbucks, park;
Main main;

void setup(){
   size (1300,800);
   //ImageLoader imageLoader1 = new ImageLoader();
   //PImage customImage = imageLoader1.loadCustomImage("cat.png");
   //Image image1 = new Image(customImage, 100,100, "cat");
   main = new Main();
   main.constructImages();
   main.constructScenes();
   Config config = main.getConfig();
   SoundManager soundManager = main.getSoundManager();
   starbucks = new Sound("Starbucks", new SoundFile(this, config.getAssetPath() + "/Sounds/Starbucks.aiff"));
   park = new Sound("Park", new SoundFile(this, config.getAssetPath() + "/Sounds/Park.wav"));
   soundManager.addSound(starbucks);
   soundManager.addSound(park);
}

void draw(){
  background(#555555);
  main.render();
}

void mousePressed(){
  if(mousePressed){
    main.click();
  }
}

void keyPressed(){
  if(keyPressed){
    main.press();
  }
}
