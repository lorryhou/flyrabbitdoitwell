.class public Lcom/jianghe/cwblal/Bons;
.super Landroid/app/Service;


# instance fields
.field public a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/jianghe/cwblal/f;

.field private e:Landroid/os/Looper;

.field private f:Landroid/os/PowerManager;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->c:Z

    iput-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->g:Z

    iput-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/cwblal/Bons;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->j:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->i(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v1

    aget-object v4, v0, v2

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v0, Lcom/jianghe/cwblal/c/b;->bx:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-lez v4, :cond_9

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    const-class v4, Lcom/jianghe/cwblal/Bona;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/jianghe/cwblal/Bons;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/jianghe/cwblal/Bons;->j:Ljava/lang/String;

    iget v0, p0, Lcom/jianghe/cwblal/Bons;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0, v6}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0, v5}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-nez v6, :cond_3

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-nez v5, :cond_4

    if-nez v6, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-nez v5, :cond_8

    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto/16 :goto_0

    :cond_8
    move v2, v1

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0, v2}, Lcom/jianghe/cwblal/Bons;->a(Landroid/os/Handler;Z)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/jianghe/cwblal/Bons;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/jianghe/cwblal/Bons;)V
    .locals 0

    invoke-direct {p0}, Lcom/jianghe/cwblal/Bons;->a()V

    return-void
.end method

.method static synthetic c(Lcom/jianghe/cwblal/Bons;)Lcom/jianghe/cwblal/f;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->d:Lcom/jianghe/cwblal/f;

    return-object v0
.end method

.method static synthetic d(Lcom/jianghe/cwblal/Bons;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Handler;Z)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->q(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/jianghe/cwblal/c/h;->p(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/i;->a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;

    invoke-static {}, Lcom/jianghe/cwblal/i;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->q(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/jianghe/cwblal/c/h;->p(Landroid/content/Context;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/i;->a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;

    invoke-static {}, Lcom/jianghe/cwblal/i;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/jianghe/cwblal/Bons;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    sget-object v0, Lcom/jianghe/cwblal/i;->b:Landroid/os/Handler;

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->h:Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    const-class v3, Lcom/jianghe/cwblal/Bonr;

    invoke-static {v0, v3}, Lcom/jianghe/cwblal/c/h;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->q(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/jianghe/cwblal/Bons;->i:I

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bons;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->f:Landroid/os/PowerManager;

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/jianghe/cwblal/c/b;->bw:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->e:Landroid/os/Looper;

    new-instance v0, Lcom/jianghe/cwblal/f;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bons;->e:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/jianghe/cwblal/f;-><init>(Lcom/jianghe/cwblal/Bons;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/Bons;->d:Lcom/jianghe/cwblal/f;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bons;->d:Lcom/jianghe/cwblal/f;

    invoke-virtual {v0, v4}, Lcom/jianghe/cwblal/f;->sendEmptyMessage(I)Z

    iget-boolean v0, p0, Lcom/jianghe/cwblal/Bons;->c:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/jianghe/cwblal/Bons;->c:Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
