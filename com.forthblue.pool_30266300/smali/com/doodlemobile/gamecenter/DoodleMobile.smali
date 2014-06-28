.class public Lcom/doodlemobile/gamecenter/DoodleMobile;
.super Ljava/lang/Object;
.source "DoodleMobile.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x1

.field public static final LOG_LEVEL_ERROR:I = 0x8

.field public static final LOG_LEVEL_FATAL:I = 0x10

.field public static final LOG_LEVEL_INFO:I = 0x2

.field public static final LOG_LEVEL_WARN:I = 0x4

.field private static MC_MAX_ANALYTICS_FILES:I

.field private static MC_MAX_EVENTS_PER_FILE:I

.field private static mIsDebug:Z

.field private static task:Lcom/doodlemobile/gamecenter/QueryIDTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->task:Lcom/doodlemobile/gamecenter/QueryIDTask;

    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->mIsDebug:Z

    .line 27
    const/16 v0, 0x64

    sput v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->MC_MAX_ANALYTICS_FILES:I

    .line 28
    const/4 v0, 0x5

    sput v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->MC_MAX_EVENTS_PER_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v0, "doodle_mobile_appid"

    .line 31
    .line 35
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 37
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    :try_start_1
    const-string v1, "doodle_mobile_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    :try_start_2
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :try_start_3
    const-string v0, "doodle_mobile_appid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 52
    :goto_1
    const-string v1, "DoodleMobile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appid =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 42
    goto :goto_2

    .line 47
    :catch_1
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    .line 43
    :catch_2
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->mIsDebug:Z

    return v0
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public static onStartSession(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    .line 58
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->setDeviceInfo(Landroid/app/Activity;)V

    .line 59
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->task:Lcom/doodlemobile/gamecenter/QueryIDTask;

    if-nez v0, :cond_0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getGameList(Landroid/content/Context;)V

    .line 68
    :cond_1
    return-void
.end method

.method public static onStartSession(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p0, p2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;Z)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    .line 72
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->setDeviceInfo(Landroid/app/Activity;)V

    .line 73
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobile;->task:Lcom/doodlemobile/gamecenter/QueryIDTask;

    if-nez v0, :cond_0

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getGameList(Landroid/content/Context;)V

    .line 82
    :cond_1
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    .prologue
    .line 89
    sput-boolean p0, Lcom/doodlemobile/gamecenter/DoodleMobile;->mIsDebug:Z

    .line 90
    return-void
.end method
