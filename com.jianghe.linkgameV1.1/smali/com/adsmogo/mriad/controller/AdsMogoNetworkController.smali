.class public Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;
.super Lcom/adsmogo/mriad/controller/AdsMogoController;


# static fields
.field private static synthetic g:[I


# instance fields
.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

.field private f:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/mriad/controller/AdsMogoController;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->c:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const-string v0, "unknown"

    if-nez v1, :cond_1

    const-string v0, "offline"

    :cond_0
    :goto_0
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoNetworkController getNetwork: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "cell"

    goto :goto_0

    :pswitch_1
    const-string v0, "unknown"

    goto :goto_0

    :pswitch_2
    const-string v0, "offline"

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "wifi"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ network: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoNetworkController onConnectionChanged"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;-><init>(Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->f:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->f:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    iget v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->e:Lcom/adsmogo/mriad/util/AdsMogoNetworkBroadcastReceiver;

    iput-object v2, p0, Lcom/adsmogo/mriad/controller/AdsMogoNetworkController;->f:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method
