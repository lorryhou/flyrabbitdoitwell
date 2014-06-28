.class public Lcom/forthblue/pool/Main;
.super Lcom/fruitsmobile/basket/GameActivity;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/Main$MyHandler;
    }
.end annotation


# static fields
.field public static API_LEVEL:I = 0x0

.field public static final COUNT:[I

.field public static final MSG_COIN_199:I = 0x186a1

.field public static final MSG_COIN_2499:I = 0x186a4

.field public static final MSG_COIN_499:I = 0x186a2

.field public static final MSG_COIN_4999:I = 0x186a5

.field public static final MSG_COIN_999:I = 0x186a3

.field public static final MSG_COIN_9999:I = 0x186a6

.field static final PREFS_NAME:Ljava/lang/String; = "Setting"

.field private static final REQUESTCODE:I = 0x2711

.field public static final SOUND_ID_COLLIDE:I = 0x0

.field public static final SOUND_ID_COLLIDEEDGE:I = 0x1

.field public static final SOUND_ID_HIT:I = 0x3

.field public static final SOUND_ID_HONOR:I = 0x4

.field public static final SOUND_ID_POT:I = 0x2

.field public static final SOUND_ID_SHAKE:I = 0x5

.field public static final coin_ids:[Ljava/lang/String;

.field public static density:F

.field public static height:I

.field public static rheight:F

.field public static rwidth:F

.field public static width:I


# instance fields
.field private arcade_level:I

.field private arcade_stage:I

.field private base64EncodedPublicKey:Ljava/lang/String;

.field private focus:Z

.field public free_count:J

.field public game_scene:Lcom/forthblue/pool/ui/GameScene;

.field public guideShowed:Z

.field public level_rule:Lcom/forthblue/pool/rules/LevelRule;

.field public level_scene:Lcom/forthblue/pool/ui/LevelScene;

.field public loading:Lcom/forthblue/pool/GameLoading;

.field private mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

.field private mGotInventoryListener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

.field public mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/forthblue/pool/util/IabHelper;

.field private mPurchaseFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

.field public menu_scene:Lcom/forthblue/pool/ui/MenuScene;

.field needScale:Z

.field public rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

.field public rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

.field tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

.field public tutorial_rule:Lcom/forthblue/pool/rules/TutorialRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "coin_199"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "coin_499"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "coin_999"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "coin_2499"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "coin_4999"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "coin_9999"

    aput-object v2, v0, v1

    sput-object v0, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/Main;->COUNT:[I

    .line 203
    const/16 v0, 0xa

    sput v0, Lcom/forthblue/pool/Main;->API_LEVEL:I

    return-void

    .line 55
    nop

    :array_0
    .array-data 4
        0x5
        0xe
        0x1e
        0x41
        0xaa
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/fruitsmobile/basket/GameActivity;-><init>()V

    .line 45
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAknCCF3op7cEzvGjIQ1NNOZarY/iw5lfBs5HiuqewZI04Hkg3gLyAT8b5iW/kuCdLVnlIJA9nguRN4ye5CtFQM9JL7MF9EgERpRGYnGotcSZzJiYluOF00bbdRDf04t5f/+da5GcC4onLAUF02mZOEHkhxYvnCajkFKr0G2RvmSj6cL4X5wR4ZHZWP0Qa56bFzUogo1KR6QE/DsSdjGX4OAJjsw3Fv+tZVkg9OQ+yKGWMVoV6Wl7YYP7JOyGCnY/WXcUMW9Enk3wZxjZcPFC+Q+VQRLYkSO2grE8+c3Upk6S3PhzTVsISNWOFZxGwd2ogxYXnyRgtCvrDXAFYvSc8wwIDAQAB"

    iput-object v0, p0, Lcom/forthblue/pool/Main;->base64EncodedPublicKey:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/forthblue/pool/Main$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/forthblue/pool/Main$MyHandler;-><init>(Lcom/forthblue/pool/Main;Lcom/forthblue/pool/Main$1;)V

    iput-object v0, p0, Lcom/forthblue/pool/Main;->mHandler:Landroid/os/Handler;

    .line 303
    iput-boolean v2, p0, Lcom/forthblue/pool/Main;->needScale:Z

    .line 462
    iput-boolean v2, p0, Lcom/forthblue/pool/Main;->focus:Z

    .line 556
    iput-boolean v2, p0, Lcom/forthblue/pool/Main;->guideShowed:Z

    .line 557
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/forthblue/pool/Main;->free_count:J

    return-void
.end method

.method static synthetic access$000(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mGotInventoryListener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/forthblue/pool/Main;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/forthblue/pool/Main;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/forthblue/pool/Main;->callBilling(Ljava/lang/String;)V

    return-void
.end method

.method private callBilling(Ljava/lang/String;)V
    .locals 7
    .param p1, "sku_id"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/forthblue/pool/Main;->mPurchaseFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/forthblue/pool/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 139
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const-string v0, "Purchase interrupted. If money charged, reopen the game."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public backToLevelLayer()V
    .locals 2

    .prologue
    .line 450
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureGame()V

    .line 451
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/LevelScene;->initTable()V

    .line 452
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    invoke-virtual {v1}, Lcom/forthblue/pool/ui/LevelScene;->getTableIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->initLevelPanel(I)V

    .line 453
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/Main;->setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V

    .line 454
    return-void
.end method

.method public backToMenu()V
    .locals 1

    .prologue
    .line 457
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureGame()V

    .line 458
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureIcon()V

    .line 459
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/Main;->setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V

    .line 460
    return-void
.end method

.method public createBilling()V
    .locals 2

    .prologue
    .line 60
    :try_start_0
    new-instance v0, Lcom/forthblue/pool/util/IabHelper;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/forthblue/pool/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->enableDebugLogging(Z)V

    .line 67
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    new-instance v1, Lcom/forthblue/pool/Main$1;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/Main$1;-><init>(Lcom/forthblue/pool/Main;)V

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->startSetup(Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 77
    :cond_0
    new-instance v0, Lcom/forthblue/pool/Main$2;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/Main$2;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v0, p0, Lcom/forthblue/pool/Main;->mPurchaseFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 88
    new-instance v0, Lcom/forthblue/pool/Main$3;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/Main$3;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v0, p0, Lcom/forthblue/pool/Main;->mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    .line 110
    new-instance v0, Lcom/forthblue/pool/Main$4;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/Main$4;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v0, p0, Lcom/forthblue/pool/Main;->mGotInventoryListener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    .line 122
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadCount()J
    .locals 4

    .prologue
    .line 583
    const-string v1, "Setting"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 584
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "FREEC"

    const-wide/16 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/forthblue/pool/Main;->free_count:J

    .line 586
    iget-wide v1, p0, Lcom/forthblue/pool/Main;->free_count:J

    return-wide v1
.end method

.method public loadPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 560
    const-string v1, "Setting"

    invoke-virtual {p0, v1, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "Music"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/fruitsmobile/basket/audio/SoundManager;->setMusicOn(Z)V

    .line 562
    const-string v1, "Sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/fruitsmobile/basket/audio/SoundManager;->setSoundOn(Z)V

    .line 563
    iget-object v1, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    const-string v2, "Difficulty"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    .line 564
    iget-object v1, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    const-string v2, "ShowAimLine"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    .line 565
    iget-object v1, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v2, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-boolean v2, v2, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    iput-boolean v2, v1, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    .line 566
    const-string v1, "Guided"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/forthblue/pool/Main;->guideShowed:Z

    .line 567
    const-string v1, "FREEC"

    const-wide/16 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/forthblue/pool/Main;->free_count:J

    .line 568
    iget-object v1, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    invoke-virtual {v1}, Lcom/forthblue/pool/ui/MenuScene;->resetPitchons()V

    .line 569
    return-void
.end method

.method public nextLevel()V
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/forthblue/pool/Main;->arcade_level:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 439
    new-instance v0, Lcom/forthblue/pool/Main$6;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/Main$6;-><init>(Lcom/forthblue/pool/Main;)V

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget v0, p0, Lcom/forthblue/pool/Main;->arcade_stage:I

    iget v1, p0, Lcom/forthblue/pool/Main;->arcade_level:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/forthblue/pool/Main;->startGameInArcadeMode(II)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/forthblue/pool/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x3

    .line 208
    invoke-virtual {p0}, Lcom/forthblue/pool/Main;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sput v4, Lcom/forthblue/pool/Main;->density:F

    .line 209
    invoke-static {p0}, Lcom/fruitsmobile/basket/GameEngine;->createLandscapeFullScreen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/GameEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/forthblue/pool/Main;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    .line 210
    iget-object v4, p0, Lcom/forthblue/pool/Main;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    new-instance v5, Lcom/forthblue/pool/GameLoading;

    invoke-direct {v5}, Lcom/forthblue/pool/GameLoading;-><init>()V

    iput-object v5, p0, Lcom/forthblue/pool/Main;->loading:Lcom/forthblue/pool/GameLoading;

    invoke-interface {v4, v5}, Lcom/fruitsmobile/basket/interfaces/Engine;->setLoading(Lcom/fruitsmobile/basket/interfaces/Loading;)V

    .line 211
    invoke-super {p0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    const/4 v3, 0x5

    .line 216
    .local v3, "version":I
    :try_start_0
    const-class v0, Landroid/os/Build$VERSION;

    .line 217
    .local v0, "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Build$VERSION;>;"
    const-string v4, "SDK_INT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 218
    .local v2, "field":Ljava/lang/reflect/Field;
    new-instance v4, Landroid/os/Build$VERSION;

    invoke-direct {v4}, Landroid/os/Build$VERSION;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 221
    .end local v0    # "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Build$VERSION;>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    .line 222
    const/16 v4, 0x2601

    sput v4, Lcom/fruitsmobile/basket/resources/Texture;->texture_filter:I

    .line 226
    :goto_1
    sput v3, Lcom/forthblue/pool/Main;->API_LEVEL:I

    .line 227
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apilevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/forthblue/pool/Main;->API_LEVEL:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :try_start_1
    sget v4, Lcom/forthblue/pool/Main;->API_LEVEL:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/forthblue/pool/Main;->createBilling()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :cond_0
    :goto_2
    invoke-virtual {p0, v7}, Lcom/forthblue/pool/Main;->setVolumeControlStream(I)V

    .line 240
    new-instance v4, Lcom/forthblue/pool/rules/Time8Ball1P;

    invoke-direct {v4}, Lcom/forthblue/pool/rules/Time8Ball1P;-><init>()V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

    .line 241
    new-instance v4, Lcom/forthblue/pool/rules/Time9Ball1P;

    invoke-direct {v4}, Lcom/forthblue/pool/rules/Time9Ball1P;-><init>()V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    .line 243
    new-instance v4, Lcom/forthblue/pool/ui/MenuScene;

    invoke-direct {v4, p0}, Lcom/forthblue/pool/ui/MenuScene;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    .line 245
    new-instance v4, Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {v4, p0}, Lcom/forthblue/pool/ui/GameScene;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    .line 246
    iget-object v4, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v5, p0, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    invoke-virtual {v4, v5}, Lcom/forthblue/pool/ui/GameScene;->setRule(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 248
    new-instance v4, Lcom/forthblue/pool/rules/LevelRule;

    invoke-direct {v4}, Lcom/forthblue/pool/rules/LevelRule;-><init>()V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    .line 249
    iget-object v4, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    iget-object v5, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v4, v5}, Lcom/forthblue/pool/rules/LevelRule;->setEventListener(Lcom/forthblue/pool/rules/LevelRule$EventListener;)V

    .line 251
    new-instance v4, Lcom/forthblue/pool/rules/TutorialRule;

    invoke-direct {v4}, Lcom/forthblue/pool/rules/TutorialRule;-><init>()V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->tutorial_rule:Lcom/forthblue/pool/rules/TutorialRule;

    .line 252
    iget-object v4, p0, Lcom/forthblue/pool/Main;->tutorial_rule:Lcom/forthblue/pool/rules/TutorialRule;

    iget-object v5, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v4, v5}, Lcom/forthblue/pool/rules/TutorialRule;->setEventListener(Lcom/forthblue/pool/rules/LevelRule$EventListener;)V

    .line 254
    new-instance v4, Lcom/forthblue/pool/ui/LevelScene;

    invoke-direct {v4, p0}, Lcom/forthblue/pool/ui/LevelScene;-><init>(Lcom/forthblue/pool/Main;)V

    iput-object v4, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    .line 256
    invoke-virtual {p0}, Lcom/forthblue/pool/Main;->loadPreference()V

    .line 258
    iget-object v4, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/Main;->setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V

    .line 260
    const/high16 v4, 0x7f060000

    invoke-static {p0, v4}, Lcom/fruitsmobile/basket/audio/SoundManager;->setBgMusic(Landroid/content/Context;I)V

    .line 261
    const/high16 v4, 0x3f000000

    invoke-static {v4}, Lcom/fruitsmobile/basket/audio/SoundManager;->setMusicVolume(F)V

    .line 263
    const/4 v4, 0x0

    const v5, 0x7f060001

    invoke-static {v4, p0, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 264
    const/4 v4, 0x1

    const v5, 0x7f060002

    invoke-static {v4, p0, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 265
    const/4 v4, 0x2

    const v5, 0x7f060005

    invoke-static {v4, p0, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 266
    const v4, 0x7f060003

    invoke-static {v7, p0, v4}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 267
    const/4 v4, 0x5

    const v5, 0x7f060006

    invoke-static {v4, p0, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 268
    const/4 v4, 0x4

    const v5, 0x7f060004

    invoke-static {v4, p0, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->prepareSound(ILandroid/content/Context;I)V

    .line 271
    :try_start_2
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v4

    iput-object v4, p0, Lcom/forthblue/pool/Main;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 272
    iget-object v4, p0, Lcom/forthblue/pool/Main;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v5, "UA-20942226-2"

    const/16 v6, 0x1e

    invoke-virtual {v4, v5, v6, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    .line 273
    iget-object v4, p0, Lcom/forthblue/pool/Main;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v5, "/Pool"

    invoke-virtual {v4, v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    :goto_3
    :try_start_3
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    .line 280
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onCreate(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 286
    :goto_4
    :try_start_4
    invoke-static {p0}, Lcom/forthblue/pool/DoodleHelper;->init(Landroid/app/Activity;)V

    .line 287
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureScreen()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 291
    :goto_5
    return-void

    .line 224
    :cond_1
    const/16 v4, 0x2600

    sput v4, Lcom/fruitsmobile/basket/resources/Texture;->texture_filter:I

    goto/16 :goto_1

    .line 234
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 274
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 275
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 281
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 282
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    move-object v1, v4

    .line 289
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    .line 604
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 602
    :pswitch_0
    new-instance v0, Lcom/doodlemobile/gamecenter/PromoteDialog;

    const v1, 0x7f090002

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/PromoteDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0xef422
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-super {p0}, Lcom/fruitsmobile/basket/GameActivity;->onDestroy()V

    .line 510
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    invoke-virtual {v0}, Lcom/forthblue/pool/util/IabHelper;->dispose()V

    .line 513
    :cond_0
    iput-object v1, p0, Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;

    .line 514
    iput-object v1, p0, Lcom/forthblue/pool/Main;->mGotInventoryListener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    .line 515
    iput-object v1, p0, Lcom/forthblue/pool/Main;->mPurchaseFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 516
    iput-object v1, p0, Lcom/forthblue/pool/Main;->mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    .line 518
    invoke-static {}, Lcom/forthblue/pool/PoolHelper;->onDestory()V

    .line 519
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v1, v1, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v1, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->saveScore(I)Z

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/Main;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    .line 525
    return-void
.end method

.method public onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-interface {p1, v0, v0, v0, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glClearColor(FFFF)V

    .line 348
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glClear(I)V

    .line 349
    return-void
.end method

.method public onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-interface {p1, v0, v0, v0, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glClearColor(FFFF)V

    .line 354
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glClear(I)V

    .line 355
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-static {p1, p2}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    .line 531
    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 532
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_2

    .line 533
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget v0, v0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    if-nez v0, :cond_1

    .line 534
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->onButtonClick(I)V

    move v0, v2

    .line 538
    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_3

    .line 540
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->onKeyBack()V

    move v0, v2

    .line 541
    goto :goto_0

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    if-ne v0, v1, :cond_4

    .line 543
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->onButtonClick(I)V

    :cond_4
    move v0, v2

    .line 545
    goto :goto_0

    .line 547
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0}, Lcom/fruitsmobile/basket/GameActivity;->onPause()V

    .line 488
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->pause()V

    .line 491
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/forthblue/pool/Main;->focus:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->onResume()V

    .line 497
    :cond_0
    invoke-super {p0}, Lcom/fruitsmobile/basket/GameActivity;->onResume()V

    .line 498
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Lcom/fruitsmobile/basket/GameActivity;->onStart()V

    .line 503
    const-string v0, "7EUQHDP4YXMFRL6SGAFK"

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 504
    const-string v0, "10026"

    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/DoodleMobile;->onStartSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Lcom/fruitsmobile/basket/GameActivity;->onStop()V

    .line 478
    invoke-virtual {p0}, Lcom/forthblue/pool/Main;->savePreference()V

    .line 479
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobile;->onEndSession(Landroid/content/Context;)V

    .line 480
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onStop(Landroid/app/Activity;)V

    .line 481
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->onStop()V

    .line 482
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 483
    return-void
.end method

.method public onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    .line 336
    invoke-virtual {p0, p2, p3}, Lcom/forthblue/pool/Main;->resize(II)V

    .line 337
    return-void
.end method

.method public onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 342
    invoke-virtual {p0, p2, p3}, Lcom/forthblue/pool/Main;->resize(II)V

    .line 343
    return-void
.end method

.method public onTouchDown(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/ui/GameScene;->onTouchDown(I)V

    .line 366
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->currentDrawable:Lcom/fruitsmobile/basket/interfaces/Drawable;

    if-ne v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/ui/MenuScene;->onTouchDown(I)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/ui/LevelScene;->onTouchDown(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onWindowFocusChanged(Z)V

    .line 467
    iput-boolean p1, p0, Lcom/forthblue/pool/Main;->focus:Z

    .line 468
    iget-boolean v0, p0, Lcom/forthblue/pool/Main;->focus:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->onResume()V

    .line 473
    :goto_0
    return-void

    .line 471
    :cond_0
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->onPause()V

    goto :goto_0
.end method

.method resize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/high16 v1, 0x43f00000

    const/4 v3, 0x1

    const/high16 v2, 0x44340000

    .line 306
    sput p1, Lcom/forthblue/pool/Main;->width:I

    .line 307
    sput p2, Lcom/forthblue/pool/Main;->height:I

    .line 309
    const/16 v0, 0x1e0

    if-eq p2, v0, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/forthblue/pool/Main;->needScale:Z

    .line 310
    sput v1, Lcom/forthblue/pool/Main;->rheight:F

    .line 311
    int-to-float v0, p2

    div-float v0, v1, v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    sput v0, Lcom/forthblue/pool/Main;->rwidth:F

    .line 312
    sget v0, Lcom/forthblue/pool/Main;->rwidth:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 313
    iput-boolean v3, p0, Lcom/forthblue/pool/Main;->needScale:Z

    .line 314
    sget v0, Lcom/forthblue/pool/Main;->rwidth:F

    div-float v0, v2, v0

    sget v1, Lcom/forthblue/pool/Main;->rheight:F

    mul-float/2addr v0, v1

    sput v0, Lcom/forthblue/pool/Main;->rheight:F

    .line 315
    sput v2, Lcom/forthblue/pool/Main;->rwidth:F

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    sget v1, Lcom/forthblue/pool/Main;->rwidth:F

    sget v2, Lcom/forthblue/pool/Main;->rheight:F

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->setSize(FF)V

    .line 319
    iget-object v0, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    sget v1, Lcom/forthblue/pool/Main;->rwidth:F

    sget v2, Lcom/forthblue/pool/Main;->rheight:F

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/MenuScene;->setSize(FF)V

    .line 320
    iget-object v0, p0, Lcom/forthblue/pool/Main;->loading:Lcom/forthblue/pool/GameLoading;

    sget v1, Lcom/forthblue/pool/Main;->rwidth:F

    sget v2, Lcom/forthblue/pool/Main;->rheight:F

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/GameLoading;->setSize(FF)V

    .line 321
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    sget v1, Lcom/forthblue/pool/Main;->rwidth:F

    sget v2, Lcom/forthblue/pool/Main;->rheight:F

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/LevelScene;->setSize(FF)V

    .line 323
    iget-boolean v0, p0, Lcom/forthblue/pool/Main;->needScale:Z

    if-eqz v0, :cond_2

    .line 324
    sget v0, Lcom/forthblue/pool/Main;->rwidth:F

    sget v1, Lcom/forthblue/pool/Main;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/fruitsmobile/basket/MotionService;->xScale:F

    .line 325
    sget v0, Lcom/forthblue/pool/Main;->rheight:F

    sget v1, Lcom/forthblue/pool/Main;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/fruitsmobile/basket/MotionService;->yScale:F

    .line 330
    :goto_1
    sput-boolean v3, Lcom/fruitsmobile/basket/SpriteBase;->forceNeedRecommit:Z

    .line 331
    return-void

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_2
    const/high16 v0, 0x3f800000

    sput v0, Lcom/fruitsmobile/basket/MotionService;->yScale:F

    sput v0, Lcom/fruitsmobile/basket/MotionService;->xScale:F

    goto :goto_1
.end method

.method public saveCount(J)V
    .locals 5
    .param p1, "count"    # J

    .prologue
    .line 590
    iput-wide p1, p0, Lcom/forthblue/pool/Main;->free_count:J

    .line 592
    const-string v2, "Setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 593
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 594
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "FREEC"

    iget-wide v3, p0, Lcom/forthblue/pool/Main;->free_count:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 595
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    return-void
.end method

.method public savePreference()V
    .locals 4

    .prologue
    .line 572
    const-string v2, "Setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 573
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 574
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Sound"

    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->isSoundOn()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 575
    const-string v2, "Music"

    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->isMusicOn()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 576
    const-string v2, "Guided"

    iget-boolean v3, p0, Lcom/forthblue/pool/Main;->guideShowed:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    const-string v2, "Difficulty"

    iget-object v3, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget v3, v3, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 578
    const-string v2, "ShowAimLine"

    iget-object v3, p0, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-boolean v3, v3, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    return-void
.end method

.method public saveScore(I)I
    .locals 6
    .param p1, "score"    # I

    .prologue
    const v4, 0xc350

    const/16 v3, 0xb

    .line 400
    const/4 v1, 0x1

    .line 402
    .local v1, "star_count":I
    iget v2, p0, Lcom/forthblue/pool/Main;->arcade_stage:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/forthblue/pool/Main;->arcade_level:I

    if-ge v2, v3, :cond_3

    .line 404
    if-lt p1, v4, :cond_1

    .line 405
    const/4 v1, 0x3

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    iget v3, p0, Lcom/forthblue/pool/Main;->arcade_stage:I

    iget v4, p0, Lcom/forthblue/pool/Main;->arcade_level:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/forthblue/pool/ui/LevelScene;->saveScore(IIII)V

    .line 434
    :cond_0
    return v1

    .line 406
    :cond_1
    const/16 v2, 0x61a8

    if-lt p1, v2, :cond_2

    .line 407
    const/4 v1, 0x2

    goto :goto_0

    .line 409
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 412
    :cond_3
    iget-object v2, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    invoke-virtual {v2}, Lcom/forthblue/pool/rules/LevelRule;->getBallCount()I

    move-result v0

    .line 413
    .local v0, "ball_count":I
    if-ge v0, v3, :cond_6

    .line 414
    const v2, 0x11170

    if-lt p1, v2, :cond_4

    .line 415
    const/4 v1, 0x3

    goto :goto_0

    .line 416
    :cond_4
    const v2, 0x88b8

    if-lt p1, v2, :cond_5

    .line 417
    const/4 v1, 0x2

    goto :goto_0

    .line 419
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 422
    :cond_6
    const v2, 0x15f90

    if-lt p1, v2, :cond_7

    .line 423
    const/4 v1, 0x3

    goto :goto_0

    .line 424
    :cond_7
    if-lt p1, v4, :cond_8

    .line 425
    const/4 v1, 0x2

    goto :goto_0

    .line 427
    :cond_8
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAimOutLineVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iput-boolean p1, v0, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    .line 552
    return-void
.end method

.method public setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/fruitsmobile/basket/interfaces/Drawable;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/fruitsmobile/basket/GameActivity;->setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V

    .line 295
    instance-of v0, p1, Lcom/forthblue/pool/ui/MenuScene;

    if-eqz v0, :cond_0

    .line 296
    check-cast p1, Lcom/forthblue/pool/ui/MenuScene;

    .end local p1    # "drawable":Lcom/fruitsmobile/basket/interfaces/Drawable;
    invoke-virtual {p1}, Lcom/forthblue/pool/ui/MenuScene;->show()V

    .line 298
    :cond_0
    return-void
.end method

.method public shopping(I)V
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/forthblue/pool/Main;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 157
    return-void
.end method

.method public startGame(Lcom/forthblue/pool/rules/PoolRule;)V
    .locals 2
    .param p1, "rule"    # Lcom/forthblue/pool/rules/PoolRule;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/ui/GameScene;->setRule(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 370
    iget-object v0, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    if-ne p1, v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/Main;->level_scene:Lcom/forthblue/pool/ui/LevelScene;

    invoke-virtual {v1}, Lcom/forthblue/pool/ui/LevelScene;->getTableIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->setTables(I)V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->start()V

    .line 376
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/Main;->setCurrentDrawable(Lcom/fruitsmobile/basket/interfaces/Drawable;)V

    .line 377
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/Main;->game_scene:Lcom/forthblue/pool/ui/GameScene;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->setTables(I)V

    goto :goto_0
.end method

.method public startGameInArcadeMode(II)V
    .locals 3
    .param p1, "stage"    # I
    .param p2, "level"    # I

    .prologue
    .line 383
    invoke-static {}, Lcom/forthblue/pool/LevelManager;->getInstance()Lcom/forthblue/pool/LevelManager;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Lcom/forthblue/pool/LevelManager;->loadData(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "datas":Ljava/lang/String;
    iget-object v2, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    invoke-virtual {v2, p1, p2, v1}, Lcom/forthblue/pool/rules/LevelRule;->init(IILjava/lang/String;)Z

    move-result v0

    .line 385
    .local v0, "data_loaded":Z
    if-eqz v0, :cond_0

    .line 386
    iput p1, p0, Lcom/forthblue/pool/Main;->arcade_stage:I

    .line 387
    iput p2, p0, Lcom/forthblue/pool/Main;->arcade_level:I

    .line 388
    iget-object v2, p0, Lcom/forthblue/pool/Main;->level_rule:Lcom/forthblue/pool/rules/LevelRule;

    invoke-virtual {p0, v2}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 397
    :goto_0
    return-void

    .line 390
    :cond_0
    new-instance v2, Lcom/forthblue/pool/Main$5;

    invoke-direct {v2, p0}, Lcom/forthblue/pool/Main$5;-><init>(Lcom/forthblue/pool/Main;)V

    invoke-virtual {p0, v2}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
