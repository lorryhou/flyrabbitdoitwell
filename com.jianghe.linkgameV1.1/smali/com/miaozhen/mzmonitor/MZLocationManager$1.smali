.class Lcom/miaozhen/mzmonitor/MZLocationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaozhen/mzmonitor/MZLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miaozhen/mzmonitor/MZLocationManager;


# direct methods
.method constructor <init>(Lcom/miaozhen/mzmonitor/MZLocationManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$1;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$1;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-static {v0, p1}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a(Lcom/miaozhen/mzmonitor/MZLocationManager;Landroid/location/Location;)V

    .line 81
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$1;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a(Lcom/miaozhen/mzmonitor/MZLocationManager;)V

    .line 86
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 97
    return-void
.end method
