.class public Lcom/fruitsmobile/basket/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# instance fields
.field protected currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

.field public engine:Lcom/fruitsmobile/basket/interfaces/Engine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 2
    .param p1, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 36
    .local v0, "d":Lcom/fruitsmobile/basket/interfaces/Drawable;
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    invoke-interface {v0, v1, p1}, Lcom/fruitsmobile/basket/interfaces/Drawable;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 39
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    invoke-interface {v0}, Lcom/fruitsmobile/basket/interfaces/Engine;->destroy()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    .line 76
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/fruitsmobile/basket/GameEngine;->createFullScreeen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/GameEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    .line 98
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->destroy()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method public onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 54
    return-void
.end method

.method public onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 57
    return-void
.end method

.method public onEngineReady(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 42
    return-void
.end method

.method public onEngineReady(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 45
    return-void
.end method

.method public onGameLoop(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 25
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    invoke-interface {v0}, Lcom/fruitsmobile/basket/interfaces/Engine;->pause()V

    .line 81
    :cond_0
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->onPause()V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method public onResourceLoaded(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 48
    return-void
.end method

.method public onResourceLoaded(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 51
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    invoke-interface {v0}, Lcom/fruitsmobile/basket/interfaces/Engine;->resume()V

    .line 89
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    return-void
.end method

.method public onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 60
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 61
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glBlendFunc(II)V

    .line 62
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 63
    return-void
.end method

.method public onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 66
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glDisable(I)V

    .line 67
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glBlendFunc(II)V

    .line 68
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnable(I)V

    .line 69
    return-void
.end method

.method public onTouchDown(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/fruitsmobile/basket/MotionService;->processMotionEvent(Landroid/view/MotionEvent;)V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchUp(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 118
    return-void
.end method

.method public setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lcom/fruitsmobile/basket/interfaces/Drawable;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/fruitsmobile/basket/GameActivity;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 22
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "timeSpan"    # J

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameActivity;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 29
    .local v0, "d":Lcom/fruitsmobile/basket/interfaces/Drawable;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1, p2}, Lcom/fruitsmobile/basket/interfaces/Drawable;->tick(J)V

    .line 32
    :cond_0
    return-void
.end method
