.class public Lcom/doodlemobile/gamecenter/DoodleMobileSettings;
.super Ljava/lang/Object;
.source "DoodleMobileSettings.java"


# static fields
.field private static mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;


# instance fields
.field dataCenter:Lcom/doodlemobile/gamecenter/model/DataCenter;

.field gameCenterPrefences:Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

.field mContext:Landroid/content/Context;

.field mDeviceName:Lorg/json/simple/JSONObject;

.field mIsDebug:Z

.field mMacAddress:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field mVersionName:Lorg/json/simple/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mMacAddress:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mDeviceName:Lorg/json/simple/JSONObject;

    .line 24
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mVersionName:Lorg/json/simple/JSONObject;

    .line 25
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->gameCenterPrefences:Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    .line 26
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->dataCenter:Lcom/doodlemobile/gamecenter/model/DataCenter;

    .line 27
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mIsDebug:Z

    .line 33
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private getImeiAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    .line 54
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getMacAddress()Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getVersionInfo()Lorg/json/simple/JSONObject;

    .line 56
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    new-instance v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->gameCenterPrefences:Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    .line 57
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    new-instance v1, Lcom/doodlemobile/gamecenter/model/DataCenter;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/model/DataCenter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->dataCenter:Lcom/doodlemobile/gamecenter/model/DataCenter;

    .line 58
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mIsDebug:Z

    .line 61
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    .line 40
    if-nez p1, :cond_0

    .line 41
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getMacAddress()Ljava/lang/String;

    .line 42
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getVersionInfo()Lorg/json/simple/JSONObject;

    .line 43
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    new-instance v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->gameCenterPrefences:Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    .line 44
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    new-instance v1, Lcom/doodlemobile/gamecenter/model/DataCenter;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/model/DataCenter;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->dataCenter:Lcom/doodlemobile/gamecenter/model/DataCenter;

    .line 45
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mIsDebug:Z

    .line 48
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    return-object v0
.end method

.method public static isOldGames()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    :try_start_0
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.wordsmobile.slot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.kiwifruitmobile.sudoku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.candydroid.breakblock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.forthblue.pool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.wordsmobile.hunterville"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.shootbubble.bubbledexlue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.sniper.activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.wordsmobile.rugby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.sword.game.bubble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.baileyz.bluppypro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.threed.bowling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.doodle.restaurant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.tapglider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.leagem.chesslive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "com.doodlemobile.gamecenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 68
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    move v0, v2

    .line 85
    goto :goto_0
.end method

.method public static setDeviceInfo(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 93
    :try_start_0
    const-string v1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    const-string v2, "width"

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "height"

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "density"

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "display"

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "id"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iput-object v0, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mDeviceName:Lorg/json/simple/JSONObject;

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Lorg/json/simple/JSONObject;

    invoke-direct {v1}, Lorg/json/simple/JSONObject;-><init>()V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getDeviceInfo()Lorg/json/simple/JSONObject;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mDeviceName:Lorg/json/simple/JSONObject;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "null"

    .line 113
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 116
    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 118
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    const-string v0, "null"

    move-object v0, v3

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getImeiAddress()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 123
    :cond_2
    const-string v1, "null"

    move-object v1, v3

    .line 125
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--dm--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_4
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionInfo()Lorg/json/simple/JSONObject;
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mVersionName:Lorg/json/simple/JSONObject;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 146
    :try_start_0
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iput-object v0, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mVersionName:Lorg/json/simple/JSONObject;

    .line 155
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mInstance:Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mVersionName:Lorg/json/simple/JSONObject;

    return-object v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Lorg/json/simple/JSONObject;

    invoke-direct {v1}, Lorg/json/simple/JSONObject;-><init>()V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
