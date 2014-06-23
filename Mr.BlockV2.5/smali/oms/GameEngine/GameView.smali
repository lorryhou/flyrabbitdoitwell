.class public Loms/GameEngine/GameView;
.super Landroid/view/SurfaceView;
.source "GameView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loms/GameEngine/GameView$RanderThread;
    }
.end annotation


# static fields
.field private static final FOCUSABLE:Z = false

.field private static final THREADEN:Z = true


# instance fields
.field private cLib:Loms/GameEngine/C_Lib;

.field private final drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mThreadPriority:I

.field private thread:Loms/GameEngine/GameView$RanderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 233
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    .line 30
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 235
    invoke-virtual {p0}, Loms/GameEngine/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Loms/GameEngine/GameView;->mHolder:Landroid/view/SurfaceHolder;

    .line 236
    iget-object v0, p0, Loms/GameEngine/GameView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 237
    invoke-virtual {p0, v2}, Loms/GameEngine/GameView;->setFocusable(Z)V

    .line 239
    const/16 v0, 0xa

    iput v0, p0, Loms/GameEngine/GameView;->mThreadPriority:I

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    .line 30
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 226
    invoke-virtual {p0}, Loms/GameEngine/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Loms/GameEngine/GameView;->mHolder:Landroid/view/SurfaceHolder;

    .line 227
    iget-object v0, p0, Loms/GameEngine/GameView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 228
    invoke-virtual {p0, v2}, Loms/GameEngine/GameView;->setFocusable(Z)V

    .line 230
    const/16 v0, 0xa

    iput v0, p0, Loms/GameEngine/GameView;->mThreadPriority:I

    .line 231
    return-void
.end method

.method private CreateThread()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Loms/GameEngine/GameView$RanderThread;

    iget-object v1, p0, Loms/GameEngine/GameView;->mHolder:Landroid/view/SurfaceHolder;

    new-instance v2, Loms/GameEngine/GameView$1;

    invoke-direct {v2, p0}, Loms/GameEngine/GameView$1;-><init>(Loms/GameEngine/GameView;)V

    invoke-direct {v0, p0, v1, v2}, Loms/GameEngine/GameView$RanderThread;-><init>(Loms/GameEngine/GameView;Landroid/view/SurfaceHolder;Landroid/os/Handler;)V

    iput-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    .line 258
    return-void
.end method

.method static synthetic access$0(Loms/GameEngine/GameView;)Landroid/graphics/PaintFlagsDrawFilter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-object v0
.end method


# virtual methods
.method public SetDraw(Loms/GameEngine/C_Lib;)V
    .locals 1
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    .line 263
    iput-object p1, p0, Loms/GameEngine/GameView;->cLib:Loms/GameEngine/C_Lib;

    .line 265
    iget-object v0, p0, Loms/GameEngine/GameView;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, p0}, Loms/GameEngine/C_Lib;->SetGameView(Loms/GameEngine/GameView;)V

    .line 267
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameView$RanderThread;->SetDraw(Loms/GameEngine/C_Lib;)V

    .line 270
    :cond_0
    return-void
.end method

.method public SetThreadPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 244
    iput p1, p0, Loms/GameEngine/GameView;->mThreadPriority:I

    .line 245
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 337
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1, v3}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 340
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1}, Loms/GameEngine/GameView$RanderThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1}, Loms/GameEngine/GameView$RanderThread;->resume()V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1}, Loms/GameEngine/GameView$RanderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    .line 350
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-nez v1, :cond_2

    .line 351
    invoke-direct {p0}, Loms/GameEngine/GameView;->CreateThread()V

    .line 353
    :cond_2
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    iget-object v2, p0, Loms/GameEngine/GameView;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1, v2}, Loms/GameEngine/GameView$RanderThread;->SetDraw(Loms/GameEngine/C_Lib;)V

    .line 354
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1, v3}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 355
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    iget v2, p0, Loms/GameEngine/GameView;->mThreadPriority:I

    invoke-virtual {v1, v2}, Loms/GameEngine/GameView$RanderThread;->setPriority(I)V

    .line 356
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1}, Loms/GameEngine/GameView$RanderThread;->start()V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Loms/GameEngine/GameView;->setFocusable(Z)V

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 299
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 300
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 274
    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 278
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    iget v1, p0, Loms/GameEngine/GameView;->mThreadPriority:I

    invoke-virtual {v0, v1}, Loms/GameEngine/GameView$RanderThread;->setPriority(I)V

    .line 274
    :cond_0
    monitor-exit p0

    .line 283
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 304
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Loms/GameEngine/GameView;->CreateThread()V

    .line 313
    :cond_0
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    iget-object v1, p0, Loms/GameEngine/GameView;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v1}, Loms/GameEngine/GameView$RanderThread;->SetDraw(Loms/GameEngine/C_Lib;)V

    .line 314
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 316
    iget-object v0, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v0}, Loms/GameEngine/GameView$RanderThread;->start()V

    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Loms/GameEngine/GameView;->setFocusable(Z)V

    .line 304
    monitor-exit p0

    .line 320
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 370
    const/4 v0, 0x1

    .line 373
    .local v0, "retry":Z
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loms/GameEngine/GameView$RanderThread;->setRunning(Z)V

    .line 374
    :goto_0
    if-nez v0, :cond_0

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    .line 386
    return-void

    .line 377
    :cond_0
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/GameView;->thread:Loms/GameEngine/GameView$RanderThread;

    invoke-virtual {v1}, Loms/GameEngine/GameView$RanderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    goto :goto_0
.end method
