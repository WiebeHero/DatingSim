//Project game!
Main main;

void setup(){
   size (1300,800);
   main = new Main();
   main.constructScenes();
}

void draw(){
  main.render();
}
