.class Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "DoodleMobileLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileLocation;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 168
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerNetwork:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-boolean v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->gps_enabled:Z

    if-eqz v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-boolean v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->network_enabled:Z

    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 183
    :goto_2
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 185
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    .line 204
    :goto_3
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_3

    .line 202
    :catch_0
    move-exception v0

    goto :goto_3

    .line 193
    :cond_1
    if-eqz v0, :cond_2

    .line 194
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_3

    .line 197
    :cond_2
    if-eqz v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V

    goto :goto_3

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$GetLastLocation;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method
