.class public Lcom/jianghe/blcpml/Cefr;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:J

.field private static c:Ljava/lang/Class;

.field private static d:Ljava/util/Set;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jianghe/blcpml/Cefr;->b:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/jianghe/blcpml/Cefr;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/Cefr;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/jianghe/blcpml/Cefs;

    invoke-static {p0, v0}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/blcpml/Cefr;->c:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/jianghe/blcpml/Cefr;->c:Ljava/lang/Class;

    return-object v0
.end method

.method protected static a(Lcom/jianghe/blcpml/f;)V
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/Cefr;->d:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/jianghe/blcpml/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jianghe/blcpml/a/d;->a()Lcom/jianghe/blcpml/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jianghe/blcpml/a/d;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/a/d;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/d;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v2, Lcom/jianghe/blcpml/e/b;->Q:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/a/h;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->m()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/jianghe/blcpml/e/h;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/jianghe/blcpml/m;

    invoke-direct {v3, p1, v2, v4}, Lcom/jianghe/blcpml/m;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Lcom/jianghe/blcpml/a/h;->a(Lcom/jianghe/blcpml/a/c;)V

    :cond_2
    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->f()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/a/h;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->m()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->l()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blcpml/e/b;->Q:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/jianghe/blcpml/e/h;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/jianghe/blcpml/m;

    invoke-direct {v3, p1, v2, v4}, Lcom/jianghe/blcpml/m;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Lcom/jianghe/blcpml/a/h;->a(Lcom/jianghe/blcpml/a/c;)V

    :cond_5
    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/h;->f()V

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v1, 0x1080034

    const/16 v4, 0x10

    const/4 v6, 0x3

    const/4 v7, -0x1

    iput-object p1, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jianghe/blcpml/e/b;->N:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/jianghe/blcpml/e/h;->h(Landroid/content/Context;Ljava/lang/String;)Lcom/jianghe/blcpml/b/f;

    move-result-object v9

    if-eqz v9, :cond_4

    iget v2, v9, Lcom/jianghe/blcpml/b/f;->x:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v9, Lcom/jianghe/blcpml/b/f;->x:I

    if-ne v2, v6, :cond_3

    :cond_0
    const/4 v2, 0x4

    iput v2, v9, Lcom/jianghe/blcpml/b/f;->x:I

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/jianghe/blcpml/e/h;->d(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)Z

    new-instance v2, Lcom/jianghe/blcpml/b/q;

    invoke-direct {v2}, Lcom/jianghe/blcpml/b/q;-><init>()V

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/jianghe/blcpml/b/q;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/jianghe/blcpml/e/h;->g(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    sget-object v2, Lcom/jianghe/blcpml/e/b;->O:Ljava/lang/String;

    iget v3, v9, Lcom/jianghe/blcpml/b/f;->e:I

    if-nez v8, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :goto_0
    iget-object v6, v9, Lcom/jianghe/blcpml/b/f;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/jianghe/blcpml/r;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    sget-object v0, Lcom/jianghe/blcpml/Cefr;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/f;

    invoke-interface {v0, v9}, Lcom/jianghe/blcpml/f;->a(Lcom/jianghe/blcpml/b/f;)V

    goto :goto_1

    :cond_1
    move-object v5, v8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/jianghe/blcpml/e/h;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/jianghe/blcpml/b/f;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/jianghe/blcpml/b/a;->a()Lcom/jianghe/blcpml/b/a;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget v5, v8, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-virtual {v2, v3, v5, v6}, Lcom/jianghe/blcpml/b/a;->a(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/jianghe/blcpml/e/h;->h(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v5

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    sget-object v2, Lcom/jianghe/blcpml/e/b;->O:Ljava/lang/String;

    iget v3, v8, Lcom/jianghe/blcpml/b/f;->e:I

    if-nez v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :cond_5
    iget-object v6, v8, Lcom/jianghe/blcpml/b/f;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/jianghe/blcpml/r;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    sget-object v0, Lcom/jianghe/blcpml/Cefr;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/f;

    invoke-interface {v0, v8}, Lcom/jianghe/blcpml/f;->a(Lcom/jianghe/blcpml/b/f;)V

    goto :goto_3

    :cond_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/jianghe/blcpml/Cefr;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/jianghe/blcpml/Cefr;->b:J

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/jianghe/blcpml/Cefr;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jianghe/blcpml/Cefr;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jianghe/blcpml/Cefr;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_8
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jianghe/blcpml/Cefr;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/jianghe/blcpml/e/h;->s(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/Cefr;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/jianghe/blcpml/Cefr;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_2
.end method
