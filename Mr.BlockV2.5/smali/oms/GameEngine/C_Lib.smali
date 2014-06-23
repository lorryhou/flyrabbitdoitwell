.class public Loms/GameEngine/C_Lib;
.super Ljava/lang/Object;
.source "C_Lib.java"


# static fields
.field public static final ADMOB_GONE:I = 0x2

.field public static final ADMOB_INVISIABLE:I = 0x0

.field public static final ADMOB_REFLASH:I = 0x8000

.field public static final ADMOB_VISIABLE:I = 0x1

.field public static mCanvasScaleX:F

.field public static mCanvasScaleY:F


# instance fields
.field private cActivity:Landroid/app/Activity;

.field private cMediaManager:Loms/GameEngine/MediaManager;

.field private cMessageMgr:Loms/GameEngine/C_MessageManager;

.field public cThread:Ljava/lang/Thread;

.field private cVibrateManager:Loms/GameEngine/VibrateManager;

.field public cView:Loms/GameEngine/GameView;

.field private gameCanvas:Loms/GameEngine/GameCanvas;

.field private input:Loms/GameEngine/InputInterface;

.field public mBackground:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field public mTop:Z

.field private nAdmobStatus:I

.field public nFPS:I

.field private nFrameFlashTime:I

.field public nRefreshHeight:I

.field public nRefreshWidth:I

.field private nResumeDelay:I

.field public nScaledDensity:F

.field public nVBLCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000

    .line 17
    sput v0, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    .line 18
    sput v0, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TextLayer"    # I
    .param p3, "SpriteResNum"    # I
    .param p4, "SpriteNum"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    .line 44
    iput-object v2, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    .line 45
    new-instance v0, Loms/GameEngine/MediaManager;

    iget-object v1, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Loms/GameEngine/MediaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    .line 46
    new-instance v0, Loms/GameEngine/InputInterface;

    invoke-direct {v0}, Loms/GameEngine/InputInterface;-><init>()V

    iput-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    .line 47
    invoke-direct {p0, p2, p3, p4}, Loms/GameEngine/C_Lib;->InitCanvas(III)V

    .line 48
    new-instance v0, Loms/GameEngine/C_MessageManager;

    invoke-direct {v0}, Loms/GameEngine/C_MessageManager;-><init>()V

    iput-object v0, p0, Loms/GameEngine/C_Lib;->cMessageMgr:Loms/GameEngine/C_MessageManager;

    .line 49
    new-instance v0, Loms/GameEngine/VibrateManager;

    invoke-direct {v0}, Loms/GameEngine/VibrateManager;-><init>()V

    iput-object v0, p0, Loms/GameEngine/C_Lib;->cVibrateManager:Loms/GameEngine/VibrateManager;

    .line 50
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Loms/GameEngine/C_Lib;->setFrameReflashTime(I)V

    .line 51
    iput v3, p0, Loms/GameEngine/C_Lib;->nFPS:I

    .line 52
    iput v3, p0, Loms/GameEngine/C_Lib;->nVBLCount:I

    .line 53
    const/16 v0, 0x140

    iput v0, p0, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    .line 54
    const/16 v0, 0x1e0

    iput v0, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    .line 55
    const/high16 v0, 0x3f800000

    iput v0, p0, Loms/GameEngine/C_Lib;->nScaledDensity:F

    .line 56
    iput-object v2, p0, Loms/GameEngine/C_Lib;->cView:Loms/GameEngine/GameView;

    .line 57
    iput-object v2, p0, Loms/GameEngine/C_Lib;->cThread:Ljava/lang/Thread;

    .line 58
    iput-object v2, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    .line 59
    iput-boolean v4, p0, Loms/GameEngine/C_Lib;->mTop:Z

    .line 61
    iput v3, p0, Loms/GameEngine/C_Lib;->nResumeDelay:I

    .line 62
    iput v4, p0, Loms/GameEngine/C_Lib;->nAdmobStatus:I

    .line 63
    return-void
.end method

.method private InitCanvas(III)V
    .locals 2
    .param p1, "TextLayer"    # I
    .param p2, "SpriteResNum"    # I
    .param p3, "SpriteNum"    # I

    .prologue
    .line 139
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Loms/GameEngine/GameCanvas;

    iget-object v1, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Loms/GameEngine/GameCanvas;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public ClearACT()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0}, Loms/GameEngine/GameCanvas;->ClearACT()V

    .line 232
    return-void
.end method

.method public GetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public GetAdmobStatus()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Loms/GameEngine/C_Lib;->nAdmobStatus:I

    return v0
.end method

.method public GetGameThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public GetReflashHeight()I
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    int-to-float v0, v0

    iget v1, p0, Loms/GameEngine/C_Lib;->nScaledDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public GetReflashWidth()I
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    int-to-float v0, v0

    iget v1, p0, Loms/GameEngine/C_Lib;->nScaledDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public GetView()Loms/GameEngine/GameView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cView:Loms/GameEngine/GameView;

    return-object v0
.end method

.method public InitMedia(II)V
    .locals 1
    .param p1, "soundNum"    # I
    .param p2, "mediaNum"    # I

    .prologue
    .line 144
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/MediaManager;->Init(II)V

    .line 147
    :cond_0
    return-void
.end method

.method public OnDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameCanvas;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    return-void
.end method

.method public ReadTouch()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 325
    return-void
.end method

.method public Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0}, Loms/GameEngine/GameCanvas;->release()V

    .line 68
    iput-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    .line 71
    :cond_0
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    invoke-virtual {v0}, Loms/GameEngine/MediaManager;->release()V

    .line 73
    iput-object v1, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    .line 76
    :cond_1
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    iput-object v1, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    .line 80
    :cond_2
    return-void
.end method

.method public SetActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    iput-object p1, p0, Loms/GameEngine/C_Lib;->cActivity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method public SetAdmobStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const v1, 0x8000

    .line 92
    if-eq v1, p1, :cond_0

    .line 93
    iput p1, p0, Loms/GameEngine/C_Lib;->nAdmobStatus:I

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget v0, p0, Loms/GameEngine/C_Lib;->nAdmobStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Loms/GameEngine/C_Lib;->nAdmobStatus:I

    goto :goto_0
.end method

.method public SetBackground(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 123
    iget v0, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Loms/GameEngine/PackageManager;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Loms/GameEngine/C_Lib;->mBackground:Landroid/graphics/Bitmap;

    .line 131
    :cond_1
    return-void
.end method

.method public SetBackgroundTop(Z)V
    .locals 0
    .param p1, "top"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Loms/GameEngine/C_Lib;->mTop:Z

    .line 136
    return-void
.end method

.method public SetCanvasScale(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 185
    sput p1, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    .line 186
    sput p2, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    .line 187
    return-void
.end method

.method public SetCanvaseSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 158
    iput p1, p0, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    .line 159
    iput p2, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    .line 160
    return-void
.end method

.method public SetGameThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 105
    iput-object p1, p0, Loms/GameEngine/C_Lib;->cThread:Ljava/lang/Thread;

    .line 106
    return-void
.end method

.method public SetGameView(Loms/GameEngine/GameView;)V
    .locals 0
    .param p1, "view"    # Loms/GameEngine/GameView;

    .prologue
    .line 114
    iput-object p1, p0, Loms/GameEngine/C_Lib;->cView:Loms/GameEngine/GameView;

    .line 115
    return-void
.end method

.method public SetReflashSize(IIF)V
    .locals 4
    .param p1, "Width"    # I
    .param p2, "Height"    # I
    .param p3, "scaledDensity"    # F

    .prologue
    const/high16 v3, 0x3f800000

    .line 163
    iput p1, p0, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    .line 164
    iput p2, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    .line 165
    iput p3, p0, Loms/GameEngine/C_Lib;->nScaledDensity:F

    .line 170
    iget v2, p0, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    add-int/lit16 v2, v2, -0x140

    div-int/lit8 v0, v2, 0x2

    .line 174
    .local v0, "xOff":I
    iget v2, p0, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    add-int/lit16 v2, v2, -0x1e0

    div-int/lit8 v1, v2, 0x2

    .line 177
    .local v1, "yOff":I
    invoke-virtual {p0, v0, v1}, Loms/GameEngine/C_Lib;->SetScreenOffset(II)V

    .line 179
    invoke-virtual {p0, v3, v3}, Loms/GameEngine/C_Lib;->SetCanvasScale(FF)V

    .line 181
    return-void
.end method

.method public SetScreenOffset(II)V
    .locals 1
    .param p1, "XOff"    # I
    .param p2, "YOff"    # I

    .prologue
    .line 225
    iget-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/InputInterface;->SetScreenOffset(II)V

    .line 226
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameCanvas;->SetScreenOffset(II)V

    .line 227
    invoke-static {p1, p2}, Loms/GameEngine/C_MultiTouch;->SetScreenOffset(II)V

    .line 228
    return-void
.end method

.method public ViewDark(I)V
    .locals 2
    .param p1, "alphaSpeed"    # I

    .prologue
    .line 308
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    const/4 v0, 0x1

    .line 310
    .local v0, "rt":Z
    :goto_0
    if-nez v0, :cond_0

    .line 315
    iget-object v1, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v1}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 316
    iget-object v1, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v1}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 317
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v1, p1}, Loms/GameEngine/GameCanvas;->ViewDark(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const/4 v0, 0x0

    .line 313
    :cond_1
    invoke-virtual {p0}, Loms/GameEngine/C_Lib;->WaitBLK()V

    goto :goto_0
.end method

.method public ViewOpen(I)V
    .locals 2
    .param p1, "alphaSpeed"    # I

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 297
    const/4 v0, 0x1

    .line 298
    .local v0, "rt":Z
    :goto_0
    if-nez v0, :cond_0

    .line 303
    iget-object v1, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v1}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 304
    iget-object v1, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v1}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 305
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v1, p1}, Loms/GameEngine/GameCanvas;->ViewOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const/4 v0, 0x0

    .line 301
    :cond_1
    invoke-virtual {p0}, Loms/GameEngine/C_Lib;->WaitBLK()V

    goto :goto_0
.end method

.method public WaitBLK()V
    .locals 3

    .prologue
    .line 236
    iget v1, p0, Loms/GameEngine/C_Lib;->nResumeDelay:I

    if-lez v1, :cond_1

    .line 237
    iget v1, p0, Loms/GameEngine/C_Lib;->nResumeDelay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Loms/GameEngine/C_Lib;->nResumeDelay:I

    .line 241
    :goto_0
    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v1}, Loms/GameEngine/GameCanvas;->flush()V

    .line 244
    iget-object v1, p0, Loms/GameEngine/C_Lib;->cView:Loms/GameEngine/GameView;

    if-eqz v1, :cond_0

    .line 247
    :goto_1
    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    if-eqz v1, :cond_0

    iget-object v1, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v1}, Loms/GameEngine/GameCanvas;->getUpdata()Z

    move-result v1

    if-nez v1, :cond_2

    .line 260
    :cond_0
    iget v1, p0, Loms/GameEngine/C_Lib;->nVBLCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loms/GameEngine/C_Lib;->nVBLCount:I

    .line 261
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    const/4 v2, 0x0

    iput-boolean v2, v1, Loms/GameEngine/InputInterface;->nIsPause:Z

    goto :goto_0

    .line 252
    :cond_2
    :try_start_0
    iget v1, p0, Loms/GameEngine/C_Lib;->nFrameFlashTime:I

    shr-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getFPS()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Loms/GameEngine/C_Lib;->nFPS:I

    return v0
.end method

.method public getFrameReflashTime()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Loms/GameEngine/C_Lib;->nFrameFlashTime:I

    return v0
.end method

.method public getGameCanvas()Loms/GameEngine/GameCanvas;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    return-object v0
.end method

.method public getInput()Loms/GameEngine/InputInterface;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    return-object v0
.end method

.method public getMContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMediaManager()Loms/GameEngine/MediaManager;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    return-object v0
.end method

.method public getMessageMgr()Loms/GameEngine/C_MessageManager;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMessageMgr:Loms/GameEngine/C_MessageManager;

    return-object v0
.end method

.method public getVBLCount()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Loms/GameEngine/C_Lib;->nVBLCount:I

    return v0
.end method

.method public getVibrateManager()Loms/GameEngine/VibrateManager;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cVibrateManager:Loms/GameEngine/VibrateManager;

    return-object v0
.end method

.method public isReflash()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0}, Loms/GameEngine/GameCanvas;->isReflash()Z

    move-result v0

    return v0
.end method

.method onDraw(Loms/GameEngine/C_Lib;Landroid/graphics/Canvas;I)V
    .locals 1
    .param p1, "cLib"    # Loms/GameEngine/C_Lib;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "picHeight"    # I

    .prologue
    .line 292
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    invoke-virtual {v0, p1, p2, p3}, Loms/GameEngine/GameCanvas;->onDraw(Loms/GameEngine/C_Lib;Landroid/graphics/Canvas;I)V

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    const/4 v1, 0x1

    iput-boolean v1, v0, Loms/GameEngine/InputInterface;->nIsPause:Z

    .line 265
    iget-object v0, p0, Loms/GameEngine/C_Lib;->input:Loms/GameEngine/InputInterface;

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ClearKeyValue()V

    .line 266
    const/16 v0, 0xa

    iput v0, p0, Loms/GameEngine/C_Lib;->nResumeDelay:I

    .line 267
    iget-object v0, p0, Loms/GameEngine/C_Lib;->gameCanvas:Loms/GameEngine/GameCanvas;

    const/4 v1, 0x0

    iput-boolean v1, v0, Loms/GameEngine/GameCanvas;->bUpdate:Z

    .line 268
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    invoke-virtual {v0}, Loms/GameEngine/MediaManager;->onPause()V

    .line 270
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Loms/GameEngine/C_Lib;->cMediaManager:Loms/GameEngine/MediaManager;

    invoke-virtual {v0}, Loms/GameEngine/MediaManager;->onResume()V

    .line 276
    :cond_0
    return-void
.end method

.method public setFPS(I)V
    .locals 0
    .param p1, "FPS"    # I

    .prologue
    .line 328
    iput p1, p0, Loms/GameEngine/C_Lib;->nFPS:I

    .line 329
    return-void
.end method

.method public setFrameReflashTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 279
    iput p1, p0, Loms/GameEngine/C_Lib;->nFrameFlashTime:I

    .line 280
    return-void
.end method

.method public setMContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    iput-object p1, p0, Loms/GameEngine/C_Lib;->mContext:Landroid/content/Context;

    .line 202
    return-void
.end method
