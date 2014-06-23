.class public Lcom/Wuzla/game/Block_AD/BlockPro;
.super Landroid/app/Activity;
.source "BlockPro.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# static fields
.field private static final Tag:Ljava/lang/String; = "BlockLite"

.field public static adScreenStatus:Z

.field public static adView:Lcom/google/ads/AdView;


# instance fields
.field private AdMobID:Ljava/lang/String;

.field private activityLayout:Landroid/widget/RelativeLayout;

.field private adViewStatus:Z

.field private cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

.field private cView:Loms/GameEngine/GameView;

.field private mAdHandler:Landroid/os/Handler;

.field private mClickMoreGames:Z

.field private mHandler:Landroid/os/Handler;

.field private mLayoutMode:I

.field private mMoreGames:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/Wuzla/game/Block_AD/BlockPro;->adScreenStatus:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->adViewStatus:Z

    .line 41
    const-string v0, "a14dcd13d4a20c1"

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->AdMobID:Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mClickMoreGames:Z

    .line 128
    new-instance v0, Lcom/Wuzla/game/Block_AD/BlockPro$1;

    invoke-direct {v0, p0}, Lcom/Wuzla/game/Block_AD/BlockPro$1;-><init>(Lcom/Wuzla/game/Block_AD/BlockPro;)V

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mMoreGames:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/Wuzla/game/Block_AD/BlockPro$2;

    invoke-direct {v0, p0}, Lcom/Wuzla/game/Block_AD/BlockPro$2;-><init>(Lcom/Wuzla/game/Block_AD/BlockPro;)V

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/Wuzla/game/Block_AD/BlockPro$3;

    invoke-direct {v0, p0}, Lcom/Wuzla/game/Block_AD/BlockPro$3;-><init>(Lcom/Wuzla/game/Block_AD/BlockPro;)V

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mAdHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/Wuzla/game/Block_AD/BlockPro;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->moreGames()V

    return-void
.end method

.method static synthetic access$1(Lcom/Wuzla/game/Block_AD/BlockPro;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->adViewStatus:Z

    return v0
.end method

.method private moreGames()V
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/MoreGames/API/MoreGames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    #invoke-virtual {p0, v0}, Lcom/Wuzla/game/Block_AD/BlockPro;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method


# virtual methods
.method public AdViewHandler()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xc

    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 296
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    .local v0, "adWhirlLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    if-ne v1, v3, :cond_1

    .line 300
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 301
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    :cond_0
    :goto_0
    sget-object v1, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    sget-object v1, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1}, Lcom/google/ads/AdView;->invalidate()V

    .line 310
    return-void

    .line 303
    :cond_1
    iget v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    if-ne v1, v4, :cond_0

    .line 305
    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method public FullScreen(Z)V
    .locals 3
    .param p1, "full"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 118
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 124
    return-void

    .line 120
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public SetAdViewLayout(I)V
    .locals 4
    .param p1, "align"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    .line 314
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mAdHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 315
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "text"

    const-string v3, "VISIBLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "viz"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 319
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mAdHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method public clickMoreGames()V
    .locals 4

    .prologue
    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mClickMoreGames:Z

    .line 150
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mMoreGames:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 152
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "text"

    const-string v3, "VISIBLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "viz"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 155
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mMoreGames:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/high16 v6, 0x43f00000

    const/high16 v5, 0x43a00000

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/Wuzla/game/Block_AD/BlockPro;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V
	
	.line 56
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;

    move-result-object v0

    const-string v1, "0123456789abcdef0123456789abcdef"

    invoke-virtual {v0, p0, v1}, Lcom/jianghe/aitswl/Pdm;->setId(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/jianghe/aitswl/Pdm;->getMessage(Landroid/content/Context;Z)V

    .line 60
    new-instance v3, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-direct {v3, p0}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    .line 61
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v3}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->getCLib()Loms/GameEngine/C_Lib;

    move-result-object v3

    invoke-virtual {v3, p0}, Loms/GameEngine/C_Lib;->SetActivity(Landroid/app/Activity;)V

    .line 64
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v4, :cond_1

    .line 66
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v3}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->getCLib()Loms/GameEngine/C_Lib;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Loms/GameEngine/C_Lib;->SetCanvasScale(FF)V

    .line 72
    :goto_0
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x1e0

    if-ge v3, v4, :cond_0

    .line 73
    const/4 v3, 0x0

    sput-boolean v3, Lcom/Wuzla/game/Block_AD/BlockPro;->adScreenStatus:Z

    .line 76
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/Wuzla/game/Block_AD/BlockPro;->setContentView(Landroid/view/View;)V

    .line 79
    new-instance v3, Loms/GameEngine/GameView;

    invoke-direct {v3, p0}, Loms/GameEngine/GameView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    .line 80
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v4}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->getCLib()Loms/GameEngine/C_Lib;

    move-result-object v4

    invoke-virtual {v3, v4}, Loms/GameEngine/GameView;->SetDraw(Loms/GameEngine/C_Lib;)V

    .line 81
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    iget-object v5, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->AdMobID:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    sput-object v3, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    .line 85
    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    #.line 86
    #.local v2, "request":Lcom/google/ads/AdRequest;
    #sget-object v3, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    #invoke-virtual {v3, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    #.line 87
    #sget-object v3, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    #invoke-virtual {v3, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 90
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v0, "adWhirlLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 92
    iput v8, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    .line 93
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    sget-object v4, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void

    .line 70
    .end local v0    # "adWhirlLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "request":Lcom/google/ads/AdRequest;
    :cond_1
    iget-object v3, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v3}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->getCLib()Loms/GameEngine/C_Lib;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Loms/GameEngine/C_Lib;->SetCanvasScale(FF)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onDestory()V

    .line 187
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    invoke-virtual {v0}, Loms/GameEngine/GameView;->onDestory()V

    .line 188
    sget-object v0, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->stopLoading()V

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 235
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;
    .param p2, "arg1"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0, p1, p2}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0, p1, p2}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 245
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    invoke-virtual {v0}, Loms/GameEngine/GameView;->onPause()V

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 250
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 1
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 254
    const/4 v0, 0x1

    sput v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->mADFlag:I

    .line 257
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/Wuzla/game/Block_AD/BlockPro;->FullScreen(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/BlockPro;->resumeMoreGames()V

    .line 178
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cView:Loms/GameEngine/GameView;

    invoke-virtual {v0}, Loms/GameEngine/GameView;->onResume()V

    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->cOPhoneApp:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    invoke-virtual {v0, p1}, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resumeMoreGames()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 138
    iget-boolean v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mClickMoreGames:Z

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mClickMoreGames:Z

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v0, "adWhirlLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mLayoutMode:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->activityLayout:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/Wuzla/game/Block_AD/BlockPro;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v0    # "adWhirlLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setAdVisibility(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->adViewStatus:Z

    .line 273
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 274
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "text"

    const-string v3, "VISIBLE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "viz"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 278
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/BlockPro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method
