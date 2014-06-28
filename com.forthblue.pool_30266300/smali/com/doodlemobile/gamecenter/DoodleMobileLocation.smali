.class Lcom/doodlemobile/gamecenter/DoodleMobileLocation;
.super Ljava/lang/Object;
.source "DoodleMobileLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;,
        Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;
    }
.end annotation


# instance fields
.field gps_enabled:Z

.field lm:Landroid/location/LocationManager;

.field locationListenerGps:Landroid/location/LocationListener;

.field locationListenerNetwork:Landroid/location/LocationListener;

.field locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

.field network_enabled:Z

.field timer1:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z

    .line 20
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$1;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileLocation;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    .line 49
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileLocation;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    .line 207
    return-void
.end method


# virtual methods
.method public getLocation(Landroid/content/Context;Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "network"

    const-string v0, "gps"

    .line 79
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    move v0, v7

    .line 119
    :goto_0
    return v0

    .line 83
    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    .line 84
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 85
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    move v0, v6

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    .line 95
    :goto_1
    const-string v0, "network"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->isProviderSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_2
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z

    if-nez v0, :cond_5

    move v0, v6

    .line 102
    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    goto :goto_2

    .line 98
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 104
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 107
    :cond_6
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z

    if-eqz v0, :cond_7

    .line 108
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    :cond_7
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    .line 115
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    new-instance v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileLocation;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v7

    .line 119
    goto/16 :goto_0

    .line 110
    :catch_1
    move-exception v0

    move v0, v6

    .line 111
    goto/16 :goto_0

    .line 116
    :catch_2
    move-exception v0

    move v0, v6

    .line 117
    goto/16 :goto_0
.end method

.method public isProviderSupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move v1, v3

    .line 149
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    .line 144
    :catch_0
    move-exception v0

    move v0, v3

    .line 146
    goto :goto_1

    .line 149
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 154
    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    move v0, v3

    .line 157
    goto :goto_1
.end method

.method public stopLocation()V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 126
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_2
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method
