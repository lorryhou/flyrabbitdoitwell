.class public Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;
.super Lcom/adsmogo/mriad/controller/AdsMogoController;


# instance fields
.field private c:Landroid/view/WindowManager;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

.field private h:F


# direct methods
.method public constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/mriad/controller/AdsMogoController;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->d:Z

    iput v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->e:I

    iput v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->f:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    return-void
.end method

.method private a(Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;)Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;
    .locals 3

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    :cond_0
    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getLocationInWindow([I)V

    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    :cond_2
    iget v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v0, v1, v0

    iput v0, p1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    :cond_3
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController close"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->close()V

    return-void
.end method

.method public dimensions()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ \"top\" :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"left\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"bottom\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"right\" :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController expand: dimensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    invoke-static {v0, v1}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-direct {p0, v0}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a(Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;)Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;

    invoke-static {v0, v3}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;

    invoke-virtual {v1, v2, p2, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->expand(Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;Ljava/lang/String;Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->getScreenSize()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v0, -0x1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoDisplayController getOrientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController hide"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->hide()V

    return-void
.end method

.method public hideVideo()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController hideVideo"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->hideVideo()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logHTML(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoDisplayController "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController open: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " back: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " refresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->open(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController openMap: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->openMap(Ljava/lang/String;Z)V

    return-void
.end method

.method public pauseVideo([Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController pauseVideo"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->pauseVideo()V

    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController playAudio: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v0, 0x2

    aput v1, v6, v0

    const/4 v0, 0x3

    aput v1, v6, v0

    const-string v7, "normal"

    const-string v8, "exit"

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZ[ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoDisplayController playVideo: url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    aget v3, p6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v1, 0x0

    aget v1, p6, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    invoke-direct {v1}, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;-><init>()V

    const/4 v2, 0x0

    aget v2, p6, v2

    iput v2, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    const/4 v2, 0x1

    aget v2, p6, v2

    iput v2, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    const/4 v2, 0x2

    aget v2, p6, v2

    iput v2, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    const/4 v2, 0x3

    aget v2, p6, v2

    iput v2, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    invoke-direct {p0, v1}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a(Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;)Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    move-result-object v7

    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const-string v2, "Invalid url"

    const-string v3, "playVideo"

    invoke-virtual {v1, v2, v3}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->playVideo(Ljava/lang/String;ZZZZLcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoDisplayController resize: width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->f:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->e:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->e:I

    if-le p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const-string v1, "Maximum size exceeded"

    const-string v2, "resize"

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    iget v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->h:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->resize(II)V

    goto :goto_0
.end method

.method public setMaxSize(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->d:Z

    iput p1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->e:I

    iput p2, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->f:I

    return-void
.end method

.method public show()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController show"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->show()V

    return-void
.end method

.method public showVideo([Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoDisplayController showVideo"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->showVideo()V

    return-void
.end method

.method public startConfigurationListener()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;-><init>(Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopAllListeners()V
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->stopConfigurationListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    return-void
.end method

.method public stopConfigurationListener()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->g:Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
