public abstract class UIObject{
  
  protected boolean render, clickable;
  protected float x, y;
  protected double xPercent, yPercent;
  protected Bounds bounds;
  protected Enums.RenderFrom renderFrom;
  protected UIObject parent;
  
  public UIObject(float x, float y, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    this.x = x;
    this.y = y;
    this.bounds = new Bounds(x, y, bWidth, bHeight);
    this.renderFrom = renderFrom;
    this.renderFrom();
    this.render = true;
    this.clickable = true;
  }
  
  public UIObject(float x, float y, Bounds bounds, Enums.RenderFrom renderFrom){
    this.x = x;
    this.y = y;
    this.bounds = bounds;
    this.renderFrom();
    this.render = true;
    this.clickable = true;
  }
  
  public UIObject(float x, float y, float bWidth, float bHeight){
    this.x = x;
    this.y = y;
    this.bounds = new Bounds(x, y, bWidth, bHeight);
    this.renderFrom = Enums.RenderFrom.TOP_LEFT;
    this.renderFrom();
    this.render = true;
    this.clickable = true;
  }
  
  public UIObject(float x, float y, Bounds bounds){
    this.x = x;
    this.y = y;
    this.bounds = bounds;
    this.renderFrom = Enums.RenderFrom.TOP_LEFT;
    this.renderFrom();
    this.render = true;
    this.clickable = true;
  }
  
  public UIObject(double xPercent, double yPercent, float bWidth, float bHeight, Enums.RenderFrom renderFrom){
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.bounds = new Bounds(this.x, this.y, bWidth, bHeight);
    this.positionPercent(xPercent, yPercent);
    this.renderFrom = renderFrom;
    this.render = true;
    this.clickable = true;
    this.renderFrom();
  }
  
  public UIObject(double xPercent, double yPercent, Bounds bounds, Enums.RenderFrom renderFrom){
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.bounds = bounds;
    this.positionPercent(xPercent, yPercent);
    this.renderFrom();
    this.render = true;
    this.clickable = true;
  }
  
  public UIObject(double xPercent, double yPercent, float bWidth, float bHeight){
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.bounds = new Bounds(x, y, bWidth, bHeight);
    this.positionPercent(xPercent, yPercent);
    this.renderFrom = Enums.RenderFrom.TOP_LEFT;
    this.render = true;
    this.clickable = true;
    this.renderFrom();
  }
  
  public UIObject(double xPercent, double yPercent, Bounds bounds){
    this.xPercent = xPercent;
    this.yPercent = yPercent;
    this.bounds = bounds;
    this.positionPercent(xPercent, yPercent);
    this.renderFrom = Enums.RenderFrom.TOP_LEFT;
    this.render = true;
    this.clickable = true;
    this.renderFrom();
  }
  
  protected void renderFrom(){
    switch(this.renderFrom){
      case TOP_RIGHT:
        this.x -= this.bounds.getWidth();
        this.bounds.x = x;
        break;
      case BOTTOM_LEFT:
        this.y -= this.bounds.getHeight();
        this.bounds.y = y;
        break;
      case BOTTOM_RIGHT:
        this.x -= this.bounds.getWidth();
        this.y -= this.bounds.getHeight();
        this.bounds.x = x;
        this.bounds.y = y;
        break;
      case CENTER:
        this.x -= this.bounds.getWidth() / 2;
        this.y -= this.bounds.getHeight() / 2;
        this.bounds.x = x;
        this.bounds.y = y;
        break;
      default:
        break;
    }
  }
  
  protected void positionPercent(double xPercent, double yPercent){
    if(xPercent != 0.00 && yPercent != 0.00){
      if(this.parent != null){
        this.x = this.parent.getX() + this.parent.getBounds().getWidth() / 100.0 * (float)xPercent;
        this.y = this.parent.getY() + this.parent.getBounds().getHeight() / 100.0 * (float)yPercent;
        this.bounds.x = this.x;
        this.bounds.y = this.y;
      }
      else{
        this.x = width / 100 * (float)xPercent;
        this.y = height / 100 * (float)yPercent;
      }
    }
  }
  
  protected void positionPercent(){
    if(this.xPercent != 0.00 && this.yPercent != 0.00){
      if(this.parent != null){
        this.x = this.parent.getX() + this.parent.getBounds().getWidth() / 100.0 * (float)this.xPercent;
        this.y = this.parent.getY() + this.parent.getBounds().getHeight() / 100.0 * (float)this.yPercent;
        this.bounds.x = this.x;
        this.bounds.y = this.y;
      }
      else{
        this.x = width / 100 * (float)this.xPercent;
        this.y = height / 100 * (float)this.yPercent;
      }
    }
  }
  
  public abstract void render();
  
  public abstract void click();
  
  public abstract void press();
  
  public float getX(){
    return this.x;
  }
  
  public void setX(float x, boolean renderFrom){
    this.x = x;
    if(renderFrom){
      this.renderFrom();
    }
  }
  
  public float getY(){
    return this.y;
  }
  
  public void setY(float y, boolean renderFrom){
    this.y = y;
    if(renderFrom){
      this.renderFrom();
    }
  }
  
  public void setXPercent(double xPercent, boolean renderFrom){
    this.xPercent = xPercent;
    if(renderFrom){
      this.positionPercent();
      this.renderFrom();
    }
  }
  
  public void setYPercent(double yPercent, boolean renderFrom){
    this.yPercent = yPercent;
    if(renderFrom){
      this.positionPercent();
      this.renderFrom();
    }
  }
  
  public Enums.RenderFrom getRenderingFrom(){
    return this.renderFrom;
  }
  
  public void setRenderingFrom(Enums.RenderFrom renderFrom, boolean renderForm){
    this.renderFrom = renderFrom;
    if(renderForm){
      this.positionPercent();
      this.renderFrom();
    }
  }
  
  public Bounds getBounds(){
    return this.bounds;  
  }
  
  public void setRendering(boolean rendering){
    this.render = rendering;
  }
  
  public boolean isRendering(){
    return this.render;
  }
  
  public void setClickable(boolean clickable){
    this.clickable = clickable;
  }
  
  public boolean isClickable(){
    return this.clickable;
  }
  
  public UIObject getParent(){
    return this.parent; 
  }
  
  public void setParent(UIObject parent){
    this.parent = parent;
    this.positionPercent();
    this.renderFrom();
  }
  
}
