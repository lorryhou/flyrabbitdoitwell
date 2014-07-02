.class public Lcom/adsmogo/mriad/controller/AdsMogoSensorController;
.super Lcom/adsmogo/mriad/controller/AdsMogoController;


# instance fields
.field private c:Lcom/adsmogo/mriad/listeners/AccelListener;

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/mriad/controller/AdsMogoController;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->d:F

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->e:F

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->f:F

    new-instance v0, Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-direct {v0, p2, p0}, Lcom/adsmogo/mriad/listeners/AccelListener;-><init>(Landroid/content/Context;Lcom/adsmogo/mriad/controller/AdsMogoSensorController;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoSensorController getHeading: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v2}, Lcom/adsmogo/mriad/listeners/AccelListener;->getHeading()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->getHeading()F

    move-result v0

    return v0
.end method

.method public getTilt()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ x : \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", y : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", z : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoSensorController getTilt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onHeadingChange(F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ heading: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    const-wide v3, 0x404ca5dc1a63c1f8L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoSensorController onHeadingChange:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public onShake()V
    .locals 0

    return-void
.end method

.method public onTilt(FFF)V
    .locals 4

    iput p1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->d:F

    iput p2, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->e:F

    iput p3, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->f:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ tilt: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->getTilt()Ljava/lang/String;

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

    const-string v3, "AdsMogoSensorController onTilt:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->startTrackingHeading()V

    return-void
.end method

.method public startShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->startTrackingShake()V

    return-void
.end method

.method public startTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->startTrackingTilt()V

    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->stopAllListeners()V

    return-void
.end method

.method public stopHeadingListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->stopTrackingHeading()V

    return-void
.end method

.method public stopShakeListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->stopTrackingShake()V

    return-void
.end method

.method public stopTiltListener()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoSensorController;->c:Lcom/adsmogo/mriad/listeners/AccelListener;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/listeners/AccelListener;->stopTrackingTilt()V

    return-void
.end method
