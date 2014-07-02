.class public Lcom/adsmogo/mriad/controller/AdsMogoLocationController;
.super Lcom/adsmogo/mriad/controller/AdsMogoController;


# instance fields
.field private c:Landroid/location/LocationManager;

.field private d:Z

.field private e:Lcom/adsmogo/mriad/listeners/LocListener;

.field private f:Lcom/adsmogo/mriad/listeners/LocListener;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/mriad/controller/AdsMogoController;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->d:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->h:Z

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->c:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->c:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/mriad/listeners/LocListener;

    const/16 v1, 0x3e8

    const-string v2, "gps"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/adsmogo/mriad/listeners/LocListener;-><init>(Landroid/content/Context;ILcom/adsmogo/mriad/controller/AdsMogoLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->c:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/adsmogo/mriad/listeners/LocListener;

    const/16 v1, 0x3e8

    const-string v2, "network"

    invoke-direct {v0, p2, v1, p0, v2}, Lcom/adsmogo/mriad/listeners/LocListener;-><init>(Landroid/content/Context;ILcom/adsmogo/mriad/controller/AdsMogoLocationController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->d:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ lat: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowLocationServices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->h:Z

    return-void
.end method

.method public allowLocationServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->h:Z

    return v0
.end method

.method public fail()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoLocationController Location can\'t be determined"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const-string v1, "window.mogoview.fireErrorEvent(\"Location cannot be identified\", \"AdsmogoRmLocationController\")"

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoLocationController getLocation: hasPermission: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->c:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v0, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AdsMogoLocationController getLocation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->c:Landroid/location/LocationManager;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1
.end method

.method public startLocationListener()V
    .locals 1

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->start()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->start()V

    :cond_1
    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public stopLocationListener()V
    .locals 1

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->g:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->f:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->e:Lcom/adsmogo/mriad/listeners/LocListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/LocListener;->stop()V

    :cond_1
    return-void
.end method

.method public success(Landroid/location/Location;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ location: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoLocationController "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoLocationController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method
