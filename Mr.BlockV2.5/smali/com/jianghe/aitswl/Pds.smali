.class public Lcom/jianghe/aitswl/Pds;
.super Landroid/app/Service;


# static fields
.field public static a:I

.field private static final g:[Ljava/lang/String;

.field private static h:I


# instance fields
.field private b:Lcom/jianghe/aitswl/ac;

.field private c:Lcom/jianghe/aitswl/ai;

.field private d:Lcom/jianghe/aitswl/t;

.field private e:Lcom/jianghe/aitswl/at;

.field private f:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/jianghe/aitswl/Pds;->a:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/jianghe/aitswl/h;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    sput-object v0, Lcom/jianghe/aitswl/Pds;->g:[Ljava/lang/String;

    sput v2, Lcom/jianghe/aitswl/Pds;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/aitswl/Pds;->d:Lcom/jianghe/aitswl/t;

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/jianghe/aitswl/Pds;->h:I

    return v0
.end method

.method private a(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/jianghe/aitswl/Pds;->g:[Ljava/lang/String;

    aget-object v3, v0, p2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/jianghe/aitswl/Pds;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/jianghe/aitswl/Pds;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/jianghe/aitswl/Pds;)V
    .locals 0

    invoke-direct {p0}, Lcom/jianghe/aitswl/Pds;->b()V

    return-void
.end method

.method static synthetic a(Lcom/jianghe/aitswl/Pds;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jianghe/aitswl/Pds;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/jianghe/aitswl/ay;->b(J)V

    :cond_0
    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->q(Landroid/content/Context;)I

    move-result v0

    move v2, v1

    :goto_0
    if-nez v1, :cond_4

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/Pds;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v0}, Lcom/jianghe/aitswl/ay;->b(Landroid/content/Context;I)Z

    :goto_1
    if-nez v1, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    iget-object v3, v3, Lcom/jianghe/aitswl/ai;->j:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/jianghe/aitswl/ay;->c(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/jianghe/aitswl/Pds;->g:[Ljava/lang/String;

    array-length v3, v3

    rem-int/2addr v0, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/jianghe/aitswl/h;->cL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v0, "m"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jianghe/aitswl/Pds;->h:I

    return-void
.end method

.method private a(I)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v5, -0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/jianghe/aitswl/Pds;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget v3, Lcom/jianghe/aitswl/Pds;->a:I

    if-le v3, v5, :cond_0

    sget-object v0, Lcom/jianghe/aitswl/h;->bk:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/jianghe/aitswl/Pds;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lcom/jianghe/aitswl/Pds;->a(Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    sput v5, Lcom/jianghe/aitswl/Pds;->a:I

    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/ai;->a()V

    :try_start_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-virtual {v3}, Lcom/jianghe/aitswl/ai;->b()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jianghe/aitswl/Pds;->b:Lcom/jianghe/aitswl/ac;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/aitswl/ac;->a(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    iput-object v0, v1, Lcom/jianghe/aitswl/ai;->n:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/ai;->o:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-static {p0}, Lcom/jianghe/aitswl/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/ai;->l:Ljava/lang/String;

    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    iput-object v0, v1, Lcom/jianghe/aitswl/ai;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-static {}, Lcom/jianghe/aitswl/ay;->a()I

    move-result v1

    iput v1, v0, Lcom/jianghe/aitswl/ai;->q:I

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-static {p0}, Lcom/jianghe/aitswl/ay;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/ai;->r:Ljava/lang/String;

    return-void
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 9

    const-wide/16 v7, 0x7530

    const/4 v1, 0x0

    sput p1, Lcom/jianghe/aitswl/Pds;->h:I

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getReceiver(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v2, Lcom/jianghe/aitswl/h;->q:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/jianghe/aitswl/h;->cH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v7

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v7

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->cF:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/jianghe/aitswl/Pds;)Z
    .locals 1

    invoke-direct {p0}, Lcom/jianghe/aitswl/Pds;->d()Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 7

    invoke-static {}, Lcom/jianghe/aitswl/ay;->c()J

    move-result-wide v0

    invoke-static {}, Lcom/jianghe/aitswl/ay;->b()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    sget-object v4, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/jianghe/aitswl/h;->cE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/jianghe/aitswl/Pds;)Z
    .locals 1

    invoke-direct {p0}, Lcom/jianghe/aitswl/Pds;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Lcom/jianghe/aitswl/ai;

    invoke-direct {v0, p0}, Lcom/jianghe/aitswl/ai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/Pds;->c:Lcom/jianghe/aitswl/ai;

    invoke-static {p0}, Lcom/jianghe/aitswl/ac;->a(Landroid/content/Context;)Lcom/jianghe/aitswl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/aitswl/Pds;->b:Lcom/jianghe/aitswl/ac;

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->b:Lcom/jianghe/aitswl/ac;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/ac;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/jianghe/aitswl/h;->q:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/aitswl/Pds;->f:Landroid/os/Looper;

    new-instance v0, Lcom/jianghe/aitswl/at;

    iget-object v1, p0, Lcom/jianghe/aitswl/Pds;->f:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/jianghe/aitswl/at;-><init>(Lcom/jianghe/aitswl/Pds;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/Pds;->e:Lcom/jianghe/aitswl/at;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->f:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    iget-object v0, p0, Lcom/jianghe/aitswl/Pds;->e:Lcom/jianghe/aitswl/at;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/at;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/aitswl/h;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/aitswl/h;->ce:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/aitswl/h;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/jianghe/aitswl/b/a;

    invoke-direct {v1}, Lcom/jianghe/aitswl/b/a;-><init>()V

    sget-object v2, Lcom/jianghe/aitswl/h;->cf:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/aitswl/h;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/aitswl/h;->ce:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/aitswl/h;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jianghe/aitswl/Pds;->e:Lcom/jianghe/aitswl/at;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jianghe/aitswl/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Message;)V

    :goto_0
    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v1, p0, Lcom/jianghe/aitswl/Pds;->e:Lcom/jianghe/aitswl/at;

    invoke-virtual {v1, v0}, Lcom/jianghe/aitswl/at;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
