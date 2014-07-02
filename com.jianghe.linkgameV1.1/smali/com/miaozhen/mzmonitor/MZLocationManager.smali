.class public Lcom/miaozhen/mzmonitor/MZLocationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;
    }
.end annotation


# static fields
.field private static d:Lcom/miaozhen/mzmonitor/MZLocationManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Landroid/location/LocationManager;

.field private final e:Landroid/location/LocationListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/miaozhen/mzmonitor/MZLocationManager$1;

    invoke-direct {v0, p0}, Lcom/miaozhen/mzmonitor/MZLocationManager$1;-><init>(Lcom/miaozhen/mzmonitor/MZLocationManager;)V

    iput-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->e:Landroid/location/LocationListener;

    .line 39
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->a:Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->b:Z

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZLocationManager;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/miaozhen/mzmonitor/MZLocationManager;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZLocationManager;->d:Lcom/miaozhen/mzmonitor/MZLocationManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-direct {v0, p0}, Lcom/miaozhen/mzmonitor/MZLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miaozhen/mzmonitor/MZLocationManager;->d:Lcom/miaozhen/mzmonitor/MZLocationManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZLocationManager;->d:Lcom/miaozhen/mzmonitor/MZLocationManager;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->e:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->b:Z

    .line 135
    :cond_0
    return-void
.end method

.method private a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "MZSDK:20130601"

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miaozhen/mzmonitor/MZLocationManager;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a()V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/miaozhen/mzmonitor/MZLocationManager;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a()V

    return-void
.end method

.method static synthetic a(Lcom/miaozhen/mzmonitor/MZLocationManager;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic b(Lcom/miaozhen/mzmonitor/MZLocationManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "[UNKNOWN]"

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const-string v0, "%.7f,%.7f,%f,%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "Location"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZCrypto;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 44
    iget-boolean v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->b:Z

    if-nez v0, :cond_4

    .line 46
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    .line 48
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 54
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    invoke-virtual {v1, v0, v3}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    const-string v0, "MZSDK:20130601"

    const-string v1, "No provider is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "no-provider"

    .line 62
    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string v1, "gps"

    .line 67
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->b:Z

    .line 68
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->c:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miaozhen/mzmonitor/MZLocationManager;->e:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 69
    new-instance v0, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;

    invoke-direct {v0, p0}, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;-><init>(Lcom/miaozhen/mzmonitor/MZLocationManager;)V

    .line 70
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;->start()V

    goto :goto_0

    .line 64
    :cond_3
    const-string v2, "network"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v1, "network"

    goto :goto_1

    .line 72
    :cond_4
    const-string v0, "MZSDK:20130601"

    const-string v1, "MZLocationManager is still running..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
