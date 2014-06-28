.class Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "CubeWallpaper1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/CubeWallpaper1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CubeEngine"
.end annotation


# static fields
.field private static final BACKGROUND_HEIGHT:I = 0x320

.field private static final BACKGROUND_WIDTH:I = 0x1e0


# instance fields
.field private background:Landroid/graphics/Bitmap;

.field private height:I

.field private lastUpdateTime:J

.field private final mDrawCube:Ljava/lang/Runnable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mVisible:Z

.field private medal:Landroid/graphics/Bitmap;

.field private rotation:F

.field final synthetic this$0:Lcom/forthblue/pool/CubeWallpaper1;

.field private totalTime:J

.field private width:I


# direct methods
.method constructor <init>(Lcom/forthblue/pool/CubeWallpaper1;)V
    .locals 3

    .prologue
    .line 53
    iput-object p1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v1, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;-><init>(Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;)V

    iput-object v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    .line 54
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mPaint:Landroid/graphics/Paint;

    .line 55
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->rotation:F

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->lastUpdateTime:J

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->totalTime:J

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->update()V

    return-void
.end method

.method private drawMusic(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 165
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    iget v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->width:I

    iget-object v3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->medal:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 167
    .local v0, "x":I
    iget v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->height:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0xa

    iget-object v3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->medal:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 169
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    iget v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->rotation:F

    iget v3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->medal:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 174
    return-void
.end method

.method private loadBackground(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 106
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 111
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 112
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 114
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    invoke-virtual {v2}, Lcom/forthblue/pool/CubeWallpaper1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020015

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    .local v1, "tmp":Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    const/4 v1, 0x0

    .line 118
    return-void
.end method

.method private loadMedal(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v4, 0x1

    .line 121
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 123
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 125
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    invoke-virtual {v2}, Lcom/forthblue/pool/CubeWallpaper1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006b

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->medal:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    const/4 v1, 0x0

    .line 129
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 178
    .local v4, "now":J
    iget-wide v6, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->lastUpdateTime:J

    sub-long v2, v4, v6

    .line 179
    .local v2, "melta":J
    iput-wide v4, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->lastUpdateTime:J

    .line 181
    iget-wide v6, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->totalTime:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->totalTime:J

    .line 183
    iget-wide v6, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->totalTime:J

    long-to-float v6, v6

    const/high16 v7, 0x44160000

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 185
    .local v0, "d":D
    const-wide/high16 v6, 0x403e000000000000L

    mul-double/2addr v6, v0

    double-to-float v6, v6

    iput v6, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->rotation:F

    .line 186
    return-void
.end method


# virtual methods
.method drawFrame()V
    .locals 6

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 146
    .local v1, "holder":Landroid/view/SurfaceHolder;
    const/4 v0, 0x0

    .line 148
    .local v0, "c":Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->background:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->drawMusic(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    # getter for: Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/forthblue/pool/CubeWallpaper1;->access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-boolean v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mVisible:Z

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    # getter for: Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/forthblue/pool/CubeWallpaper1;->access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    const-wide/16 v4, 0x28

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_2
    return-void

    .line 154
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 155
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v2
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    # getter for: Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/forthblue/pool/CubeWallpaper1;->access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 90
    iput p3, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->width:I

    .line 91
    iput p4, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->height:I

    .line 93
    div-int/lit16 v1, p3, 0x1e0

    div-int/lit16 v2, p4, 0x320

    if-le v1, v2, :cond_0

    .line 94
    int-to-float v1, p4

    mul-float/2addr v1, v3

    const/high16 v2, 0x44480000

    div-float v0, v1, v2

    .line 99
    .local v0, "scale":F
    :goto_0
    const/high16 v1, 0x3f000000

    mul-float/2addr v0, v1

    .line 100
    invoke-direct {p0, p3, p4}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->loadBackground(II)V

    .line 101
    invoke-direct {p0, v0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->loadMedal(F)V

    .line 102
    invoke-virtual {p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->drawFrame()V

    .line 103
    return-void

    .line 96
    .end local v0    # "scale":F
    :cond_0
    int-to-float v1, p3

    mul-float/2addr v1, v3

    const/high16 v2, 0x43f00000

    div-float v0, v1, v2

    .restart local v0    # "scale":F
    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 134
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mVisible:Z

    .line 140
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    # getter for: Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/forthblue/pool/CubeWallpaper1;->access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mVisible:Z

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->drawFrame()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->this$0:Lcom/forthblue/pool/CubeWallpaper1;

    # getter for: Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/forthblue/pool/CubeWallpaper1;->access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->mDrawCube:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
