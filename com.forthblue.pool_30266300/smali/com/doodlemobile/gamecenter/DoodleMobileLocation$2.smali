.class Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;
.super Ljava/lang/Object;
.source "DoodleMobileLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileLocation;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 54
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->timer1:Ljava/util/Timer;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationResult:Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;

    invoke-virtual {v0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;->gotLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 62
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileLocation;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileLocation;->locationListenerGps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
