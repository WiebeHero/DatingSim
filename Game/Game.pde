//Road to Love
Main main;

void setup(){
   size (1300,800);
   //ImageLoader imageLoader1 = new ImageLoader();
   //PImage customImage = imageLoader1.loadCustomImage("cat.png");
   //Image image1 = new Image(customImage, 100,100, "cat");
   main = new Main();
   main.constructImages();
   main.constructScenes();
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
