.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;
.super Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->latitude:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$002(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->longitude:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$102(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    goto :goto_0
.end method
