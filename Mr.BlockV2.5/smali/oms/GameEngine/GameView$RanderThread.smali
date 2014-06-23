.class public Loms/GameEngine/GameView$RanderThread;
.super Ljava/lang/Thread;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loms/GameEngine/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RanderThread"
.end annotation


# instance fields
.field private cLib:Loms/GameEngine/C_Lib;

.field private mHandler:Landroid/os/Handler;

.field private mRun:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mThreadEnd:Z

.field final synthetic this$0:Loms/GameEngine/GameView;


# direct methods
.method public constructor <init>(Loms/GameEngine/GameView;Landroid/view/SurfaceHolder;Landroid/os/Handler;)V
    .locals 2
    .param p2, "mSurfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-object p1, p0, Loms/GameEngine/GameView$RanderThread;->this$0:Loms/GameEngine/GameView;

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    iput-boolean v1, p0, Loms/GameEngine/GameView$RanderThread;->mRun:Z

    .line 39
    iput-boolean v1, p0, Loms/GameEngine/GameView$RanderThread;->mThreadEnd:Z

    .line 54
    iput-object p2, p0, Loms/GameEngine/GameView$RanderThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 55
    iput-object p3, p0, Loms/GameEngine/GameView$RanderThread;->mHandler:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    .line 58
    iput-boolean v1, p0, Loms/GameEngine/GameView$RanderThread;->mThreadEnd:Z

    return-void
.end method


# virtual methods
.method public SetDraw(Loms/GameEngine/C_Lib;)V
    .locals 0
    .param p1, "c_lib"    # Loms/GameEngine/C_Lib;

    .prologue
    .line 64
    iput-object p1, p0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    .line 65
    return-void
.end method

.method public ismRun()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Loms/GameEngine/GameView$RanderThread;->mRun:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 79
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    if-eqz v14, :cond_3

    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .local v6, "frameElapse":J
    const-wide/16 v8, 0x0

    .line 89
    .local v8, "frameTick":J
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    iget v14, v14, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    add-int/lit16 v14, v14, -0x1e0

    div-int/lit8 v13, v14, 0x2

    .line 91
    .local v13, "rectHeight":I
    sget v14, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    sget v15, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    sget v14, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    const/high16 v15, 0x3f800000

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 92
    const/4 v10, 0x1

    .line 97
    .local v10, "randerMode":Z
    :goto_1
    const/4 v3, 0x0

    .line 98
    .local v3, "canvasBMP":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 99
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 100
    .local v1, "c":Landroid/graphics/Canvas;
    if-nez v10, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    iget v14, v14, Loms/GameEngine/C_Lib;->nRefreshWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    iget v15, v15, Loms/GameEngine/C_Lib;->nRefreshHeight:I

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 104
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Loms/GameEngine/GameView$RanderThread;->mRun:Z

    if-nez v14, :cond_5

    .line 190
    if-eqz v3, :cond_1

    .line 192
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    const/4 v3, 0x0

    .line 195
    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Loms/GameEngine/GameView$RanderThread;->mThreadEnd:Z

    .line 196
    :cond_2
    return-void

    .line 81
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "canvasBMP":Landroid/graphics/Bitmap;
    .end local v6    # "frameElapse":J
    .end local v8    # "frameTick":J
    .end local v10    # "randerMode":Z
    .end local v13    # "rectHeight":I
    :cond_3
    const-wide/16 v14, 0x0

    const/16 v16, 0x1f4

    :try_start_0
    invoke-static/range {v14 .. v16}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v6    # "frameElapse":J
    .restart local v8    # "frameTick":J
    .restart local v13    # "rectHeight":I
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "randerMode":Z
    goto :goto_1

    .line 112
    .restart local v1    # "c":Landroid/graphics/Canvas;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "canvasBMP":Landroid/graphics/Bitmap;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 114
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Loms/GameEngine/GameView$RanderThread;->mRun:Z

    if-eqz v14, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14}, Loms/GameEngine/C_Lib;->isReflash()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 132
    .local v11, "randerStart":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 134
    if-nez v10, :cond_c

    .line 136
    if-eqz v1, :cond_6

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->this$0:Loms/GameEngine/GameView;

    # getter for: Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v14}, Loms/GameEngine/GameView;->access$0(Loms/GameEngine/GameView;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 139
    sget v14, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    sget v15, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 141
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->this$0:Loms/GameEngine/GameView;

    # getter for: Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v14}, Loms/GameEngine/GameView;->access$0(Loms/GameEngine/GameView;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 143
    if-lez v13, :cond_a

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    move-object/from16 v0, p0

    iget-object v15, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14, v15, v2, v13}, Loms/GameEngine/C_Lib;->onDraw(Loms/GameEngine/C_Lib;Landroid/graphics/Canvas;I)V

    .line 149
    :goto_4
    if-eqz v1, :cond_7

    .line 151
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v3, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 179
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v11

    long-to-int v15, v15

    iput v15, v14, Loms/GameEngine/C_Lib;->nFPS:I

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v6, v14, v8

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14}, Loms/GameEngine/C_Lib;->getFrameReflashTime()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v6, v14

    if-gez v14, :cond_0

    .line 183
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14}, Loms/GameEngine/C_Lib;->getFrameReflashTime()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v14, v6

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Loms/GameEngine/GameView$RanderThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 184
    :catch_1
    move-exception v5

    .line 186
    .local v5, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 119
    .end local v5    # "e1":Ljava/lang/InterruptedException;
    .end local v11    # "randerStart":J
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14}, Loms/GameEngine/C_Lib;->getFrameReflashTime()I

    move-result v14

    shr-int/lit8 v14, v14, 0x2

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 122
    :catch_2
    move-exception v4

    .line 124
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 125
    const-string v14, "Test"

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 148
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v11    # "randerStart":J
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14, v2}, Loms/GameEngine/C_Lib;->OnDraw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 173
    :catchall_0
    move-exception v14

    .line 174
    if-eqz v1, :cond_b

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Loms/GameEngine/GameView$RanderThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v15, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 178
    :cond_b
    throw v14

    .line 156
    :cond_c
    if-eqz v1, :cond_d

    .line 158
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->this$0:Loms/GameEngine/GameView;

    # getter for: Loms/GameEngine/GameView;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;
    invoke-static {v14}, Loms/GameEngine/GameView;->access$0(Loms/GameEngine/GameView;)Landroid/graphics/PaintFlagsDrawFilter;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 162
    :cond_d
    if-lez v13, :cond_e

    .line 164
    if-eqz v1, :cond_7

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    move-object/from16 v0, p0

    iget-object v15, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14, v15, v1, v13}, Loms/GameEngine/C_Lib;->onDraw(Loms/GameEngine/C_Lib;Landroid/graphics/Canvas;I)V

    goto/16 :goto_5

    .line 168
    :cond_e
    if-eqz v1, :cond_7

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Loms/GameEngine/GameView$RanderThread;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v14, v1}, Loms/GameEngine/C_Lib;->OnDraw(Landroid/graphics/Canvas;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5
.end method

.method public setRunning(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Loms/GameEngine/GameView$RanderThread;->mRun:Z

    .line 204
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 215
    iget-object v2, p0, Loms/GameEngine/GameView$RanderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 216
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "text"

    const-string v3, "VISIBLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "viz"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 220
    iget-object v2, p0, Loms/GameEngine/GameView$RanderThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    return-void
.end method
