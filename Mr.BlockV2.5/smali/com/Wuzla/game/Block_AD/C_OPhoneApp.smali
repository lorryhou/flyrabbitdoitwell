.class public Lcom/Wuzla/game/Block_AD/C_OPhoneApp;
.super Ljava/lang/Object;
.source "C_OPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;
    }
.end annotation


# static fields
.field public static DownCount:I

.field public static UpCount:I

.field public static cLib:Loms/GameEngine/C_Lib;

.field public static mADFlag:I


# instance fields
.field private cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

.field private cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->mADFlag:I

    .line 144
    sput v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->DownCount:I

    sput v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->UpCount:I

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    .line 43
    new-instance v0, Loms/GameEngine/C_Lib;

    const/16 v1, 0x400

    const/16 v2, 0x200

    invoke-direct {v0, p1, v3, v1, v2}, Loms/GameEngine/C_Lib;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    .line 44
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v3}, Loms/GameEngine/MediaManager;->Init(II)V

    .line 46
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Loms/GameEngine/GameCanvas;->SetMaxLogicLayer(I)V

    .line 47
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Loms/GameEngine/C_Lib;->setFrameReflashTime(I)V

    .line 48
    new-instance v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-direct {v0, v1}, Lcom/Wuzla/game/Block_AD/C_BlockMenu;-><init>(Loms/GameEngine/C_Lib;)V

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    .line 49
    return-void
.end method

.method private CM_GetNumCount(J)I
    .locals 2
    .param p1, "num"    # J

    .prologue
    .line 166
    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 168
    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 169
    const/4 v0, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 171
    const/4 v0, 0x3

    goto :goto_0

    .line 172
    :cond_2
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    .line 173
    const/4 v0, 0x4

    goto :goto_0

    .line 174
    :cond_3
    const-wide/32 v0, 0x186a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 175
    const/4 v0, 0x5

    goto :goto_0

    .line 176
    :cond_4
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 177
    const/4 v0, 0x6

    goto :goto_0

    .line 178
    :cond_5
    const-wide/32 v0, 0x989680

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    .line 179
    const/4 v0, 0x7

    goto :goto_0

    .line 181
    :cond_6
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static setAdVisibility(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 119
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->GetActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/Wuzla/game/Block_AD/BlockPro;

    .line 120
    .local v0, "activity":Lcom/Wuzla/game/Block_AD/BlockPro;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->setAdVisibility(Z)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public CM_PaintNum(JIIII[I)V
    .locals 9
    .param p1, "num"    # J
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "NumWidth"    # I
    .param p6, "Attrib"    # I
    .param p7, "ACTPtr"    # [I

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->CM_GetNumCount(J)I

    move-result v0

    .line 187
    .local v0, "Count":I
    const/16 v3, 0xa

    .line 188
    .local v3, "multip1":I
    const/4 v4, 0x1

    .line 189
    .local v4, "multip2":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 196
    return-void

    .line 190
    :cond_0
    int-to-long v5, v3

    rem-long v5, p1, v5

    int-to-long v7, v4

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 191
    .local v1, "data":I
    mul-int/lit8 v3, v3, 0xa

    .line 192
    div-int/lit8 v4, v3, 0xa

    .line 193
    sget-object v5, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    aget v6, p7, v1

    invoke-virtual {v5, v6, p3, p4, p6}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 194
    sub-int/2addr p3, p5

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCLib()Loms/GameEngine/C_Lib;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    return-object v0
.end method

.method public onDestory()V
    .locals 3

    .prologue
    .line 75
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v2

    invoke-virtual {v2}, Loms/GameEngine/MediaManager;->release()V

    .line 76
    const/4 v1, 0x1

    .line 77
    .local v1, "retry":Z
    :goto_0
    if-nez v1, :cond_0

    .line 87
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    .line 88
    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    invoke-virtual {v2}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 108
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Loms/GameEngine/InputInterface;->onKeyDown(I)V

    .line 109
    :goto_0
    return v0

    .line 95
    :sswitch_0
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Loms/GameEngine/MediaManager;->SetSystemVolume(I)V

    goto :goto_0

    .line 98
    :sswitch_1
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Loms/GameEngine/MediaManager;->SetSystemVolume(I)V

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 106
    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1b -> :sswitch_2
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    sparse-switch p1, :sswitch_data_0

    .line 137
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Loms/GameEngine/InputInterface;->onKeyUp(I)V

    .line 138
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 135
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    invoke-direct {v0, p0, v1, v2}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;-><init>(Lcom/Wuzla/game/Block_AD/C_OPhoneApp;Loms/GameEngine/C_Lib;Lcom/Wuzla/game/Block_AD/C_BlockMenu;)V

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    .line 66
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cGameThread:Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;

    invoke-virtual {v0}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->start()V

    .line 71
    :cond_0
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->onResume()V

    .line 72
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 148
    .local v0, "X":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 149
    .local v1, "Y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 162
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 151
    :pswitch_0
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Loms/GameEngine/InputInterface;->SetTouchDown(II)V

    .line 152
    sget v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->DownCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->DownCount:I

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Loms/GameEngine/InputInterface;->SetTouchUp(II)V

    .line 156
    sget v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->UpCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->UpCount:I

    goto :goto_0

    .line 159
    :pswitch_2
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Loms/GameEngine/InputInterface;->SetTouchMove(II)V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
