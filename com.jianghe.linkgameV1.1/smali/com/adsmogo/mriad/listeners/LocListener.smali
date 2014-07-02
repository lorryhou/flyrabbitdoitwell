.class public Lcom/adsmogo/mriad/listeners/LocListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private a:Lcom/adsmogo/mriad/controller/AdsMogoLocationController;

.field private b:Landroid/location/LocationManager;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/adsmogo/mriad/controller/AdsMogoLocationController;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/adsmogo/mriad/listeners/LocListener;->a:Lcom/adsmogo/mriad/controller/AdsMogoLocationController;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->b:Landroid/location/LocationManager;

    iput-object p4, p0, Lcom/adsmogo/mriad/listeners/LocListener;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->a:Lcom/adsmogo/mriad/controller/AdsMogoLocationController;

    invoke-virtual {v0, p1}, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->success(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->a:Lcom/adsmogo/mriad/controller/AdsMogoLocationController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->fail()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->a:Lcom/adsmogo/mriad/controller/AdsMogoLocationController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->fail()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    iget-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/adsmogo/mriad/listeners/LocListener;->c:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/listeners/LocListener;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
