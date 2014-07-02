.class public Lcn/domob/android/ads/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/C$a;
.implements Lcn/domob/android/ads/F$a;
.implements Lcn/domob/android/ads/d$a;
.implements Lcn/domob/android/ads/g$a;
.implements Lcn/domob/android/ads/j$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/e$b;,
        Lcn/domob/android/ads/e$c;,
        Lcn/domob/android/ads/e$a;
    }
.end annotation


# static fields
.field protected static final A:Ljava/lang/String; = "phase"

.field protected static final B:Ljava/lang/String; = "wtai://wp/mc;"

.field protected static final C:I = 0x1

.field protected static final D:I = 0x2

.field protected static final E:I = 0x3

.field protected static final F:I = 0x4

.field protected static final G:I = 0x5

.field private static H:Lcn/domob/android/ads/d/e; = null

.field protected static final m:Ljava/lang/String; = "domob"

.field protected static final n:Ljava/lang/String; = "mraid"

.field protected static final o:Ljava/lang/String; = "inapp"

.field protected static final p:Ljava/lang/String; = "download"

.field protected static final q:Ljava/lang/String; = "report"

.field protected static final r:Ljava/lang/String; = "launch"

.field protected static final s:Ljava/lang/String; = "custom"

.field protected static final t:Ljava/lang/String; = "expand"

.field protected static final u:Ljava/lang/String; = "close"

.field protected static final v:Ljava/lang/String; = "clk"

.field protected static final w:Ljava/lang/String; = "imp"

.field protected static final x:Ljava/lang/String; = "event"

.field protected static final y:Ljava/lang/String; = "visit"

.field protected static final z:Ljava/lang/String; = "url"


# instance fields
.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:I

.field private V:Landroid/os/Handler;

.field private W:J

.field private X:J

.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Lcn/domob/android/ads/DomobAdView;

.field protected e:Lcn/domob/android/ads/h;

.field protected f:Lcn/domob/android/ads/e$b;

.field protected g:Lcn/domob/android/ads/j;

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Lcn/domob/android/ads/e$a;

.field protected l:Lcn/domob/android/ads/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcn/domob/android/ads/e;->J:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcn/domob/android/ads/e;->L:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcn/domob/android/ads/e;->M:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcn/domob/android/ads/e;->N:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/e;->P:Ljava/lang/String;

    .line 55
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->Q:Z

    .line 56
    iput-boolean v1, p0, Lcn/domob/android/ads/e;->R:Z

    .line 57
    iput-boolean v1, p0, Lcn/domob/android/ads/e;->S:Z

    .line 58
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->T:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    .line 61
    iput-wide v4, p0, Lcn/domob/android/ads/e;->W:J

    .line 62
    iput-wide v4, p0, Lcn/domob/android/ads/e;->X:J

    .line 63
    iput-object v2, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    .line 64
    iput-object v2, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    .line 65
    new-instance v0, Lcn/domob/android/ads/e$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/e$b;-><init>(Lcn/domob/android/ads/e;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    .line 68
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->h:Z

    .line 69
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->i:Z

    .line 70
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->j:Z

    .line 71
    sget-object v0, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    iput-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    .line 72
    sget-object v0, Lcn/domob/android/ads/e$c;->c:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    .line 106
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    .line 110
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdView;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iput-object v0, p0, Lcn/domob/android/ads/e;->b:Landroid/content/Context;

    .line 113
    :cond_0
    iput-object p2, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    .line 115
    if-nez p2, :cond_1

    .line 116
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 118
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->b(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcn/domob/android/ads/e;->J()V

    .line 122
    invoke-direct {p0}, Lcn/domob/android/ads/e;->K()V

    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;Lcn/domob/android/ads/d$a;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcn/domob/android/ads/e;->J:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcn/domob/android/ads/e;->L:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcn/domob/android/ads/e;->M:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcn/domob/android/ads/e;->N:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/e;->P:Ljava/lang/String;

    .line 55
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->Q:Z

    .line 56
    iput-boolean v1, p0, Lcn/domob/android/ads/e;->R:Z

    .line 57
    iput-boolean v1, p0, Lcn/domob/android/ads/e;->S:Z

    .line 58
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->T:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    .line 61
    iput-wide v4, p0, Lcn/domob/android/ads/e;->W:J

    .line 62
    iput-wide v4, p0, Lcn/domob/android/ads/e;->X:J

    .line 63
    iput-object v2, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    .line 64
    iput-object v2, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    .line 65
    new-instance v0, Lcn/domob/android/ads/e$b;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/e$b;-><init>(Lcn/domob/android/ads/e;)V

    iput-object v0, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    .line 68
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->h:Z

    .line 69
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->i:Z

    .line 70
    iput-boolean v3, p0, Lcn/domob/android/ads/e;->j:Z

    .line 71
    sget-object v0, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    iput-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    .line 72
    sget-object v0, Lcn/domob/android/ads/e$c;->c:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    .line 132
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Init DomobAdController."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 135
    if-nez p1, :cond_0

    .line 136
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 138
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->b(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic I()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method private J()V
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcn/domob/android/ads/d/a;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "config"

    const-string v3, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method private K()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 154
    new-instance v0, Lcn/domob/android/ads/d/a;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v1

    const-string v2, "cookie_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/f;->c(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v1

    const-string v2, "disable"

    invoke-virtual {v0, v2, v6}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "time"

    invoke-virtual {v0, v5, v6}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/domob/android/ads/f;->a(ZJI)V

    .line 159
    const-string v1, "interval"

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/e;->U:I

    .line 160
    return-void
.end method

.method private L()V
    .locals 8

    .prologue
    const/16 v3, 0x1388

    .line 557
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 559
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->c()Ljava/lang/String;

    move-result-object v1

    .line 560
    if-eqz v1, :cond_0

    .line 561
    const-string v2, "cookie_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/f;->c(Ljava/lang/String;)V

    .line 566
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 574
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$a;->a()I

    move-result v1

    .line 576
    mul-int/lit16 v1, v1, 0x3e8

    .line 578
    if-gtz v1, :cond_5

    .line 579
    const/4 v1, 0x0

    iput v1, p0, Lcn/domob/android/ads/e;->U:I

    .line 586
    :cond_1
    :goto_0
    const-string v1, "interval"

    iget v2, p0, Lcn/domob/android/ads/e;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$a;->b()Z

    move-result v1

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 591
    iget-object v4, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v4}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$a;->c()I

    move-result v4

    .line 592
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v5, "disable"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v5, "time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v5, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time stamp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    sget-object v5, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disable time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3, v4}, Lcn/domob/android/ads/f;->a(ZJI)V

    .line 600
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 601
    iget-object v2, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$a;->f()Ljava/lang/String;

    move-result-object v2

    .line 602
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/f;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 603
    const-string v3, "version"

    iget-object v4, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v4}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v3, "config"

    iget-object v4, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v4}, Lcn/domob/android/ads/h;->f()Lcn/domob/android/ads/h$a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcn/domob/android/ads/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 610
    new-instance v1, Lcn/domob/android/ads/d/a;

    iget-object v2, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    const-string v3, "domob_config"

    invoke-direct {v1, v2, v3}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/a;->a(Ljava/util/HashMap;)V

    .line 613
    :cond_4
    return-void

    .line 580
    :cond_5
    if-lez v1, :cond_6

    if-ge v1, v3, :cond_6

    .line 581
    iput v3, p0, Lcn/domob/android/ads/e;->U:I

    goto/16 :goto_0

    .line 582
    :cond_6
    if-lt v1, v3, :cond_1

    .line 583
    iput v1, p0, Lcn/domob/android/ads/e;->U:I

    goto/16 :goto_0
.end method

.method private M()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->u()Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/domob/android/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->d(Ljava/lang/String;)V

    .line 654
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/n;)V
    .locals 6

    .prologue
    .line 988
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 989
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 990
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 991
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 992
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 993
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 994
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->b:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 996
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 883
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 884
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 885
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 886
    iput p3, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 887
    iput-object p4, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 889
    const-string v1, "http://e.domob.cn/event_report"

    sget-object v2, Lcn/domob/android/ads/w$h;->e:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 890
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/e;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->T:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/e;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcn/domob/android/ads/e;->T:Z

    return p1
.end method

.method private b(Lcn/domob/android/ads/h;I)V
    .locals 8

    .prologue
    .line 679
    if-eqz p1, :cond_2

    .line 680
    iput-object p1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    .line 682
    invoke-direct {p0}, Lcn/domob/android/ads/e;->L()V

    .line 684
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->A()V

    .line 686
    invoke-direct {p0}, Lcn/domob/android/ads/e;->M()V

    .line 687
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Get ad response successfully."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$c;->b()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$c;->a()I

    move-result v1

    .line 692
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v2

    .line 693
    const-string v3, "DomobSDK"

    const-string v4, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    div-int/lit16 v0, v1, 0x3e8

    packed-switch v0, :pswitch_data_0

    .line 713
    :goto_1
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 699
    :pswitch_0
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 702
    :pswitch_1
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 705
    :pswitch_2
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INVALID_REQUEST:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 708
    :pswitch_3
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->NO_FILL:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 711
    :pswitch_4
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_1

    .line 718
    :cond_1
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Unexpected resp, Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 719
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_0

    .line 725
    :cond_2
    sparse-switch p2, :sswitch_data_0

    .line 748
    const-string v0, "DomobSDK"

    const-string v1, "Connection Error. Please make sure that your network is available."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :goto_2
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "AdResponse instance is null. Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 753
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto/16 :goto_0

    .line 727
    :sswitch_0
    const-string v0, "DomobSDK"

    const-string v1, "There is no ad response for the request this time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 730
    :sswitch_1
    const-string v0, "DomobSDK"

    const-string v1, "Bad Request. Please make sure that your publisher ID or any other infomation is correct."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 734
    :sswitch_2
    const-string v0, "DomobSDK"

    const-string v1, "Your publisher ID is forbidden by web server. Please ask domob\'s support for help."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 738
    :sswitch_3
    const-string v0, "DomobSDK"

    const-string v1, "Your publisher ID is not available temporarily, e.g. Your app is being examined and verified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 742
    :sswitch_4
    const-string v0, "DomobSDK"

    const-string v1, "Server Error."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 745
    :sswitch_5
    const-string v0, "DomobSDK"

    const-string v1, "Server Busy."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 725
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x1f6 -> :sswitch_5
    .end sparse-switch
.end method

.method private j(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 894
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->g:Lcn/domob/android/ads/w$h;

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 897
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 6

    .prologue
    .line 619
    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->t(Landroid/content/Context;)I

    move-result v0

    .line 623
    :goto_0
    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->d()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/a;->u(Landroid/content/Context;)I

    move-result v1

    .line 625
    :goto_1
    iget-object v3, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3, v0, v1}, Lcn/domob/android/ads/DomobAdView;->a(II)V

    .line 628
    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 629
    sget-object v3, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad format from response is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 630
    invoke-static {v2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    new-instance v2, Lcn/domob/android/ads/a/c;

    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/i;

    invoke-direct {v4, v0, v1}, Lcn/domob/android/ads/i;-><init>(II)V

    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-direct {v2, v3, v4, v0, p0}, Lcn/domob/android/ads/a/c;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    iput-object v2, p0, Lcn/domob/android/ads/e;->g:Lcn/domob/android/ads/j;

    .line 644
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/e;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j$a;)V

    .line 645
    iget-object v0, p0, Lcn/domob/android/ads/e;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->a()V

    .line 646
    :goto_3
    return-void

    .line 621
    :cond_0
    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    .line 633
    :cond_2
    const-string v3, "domob"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    new-instance v2, Lcn/domob/android/ads/a/c;

    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/i;

    invoke-direct {v4, v0, v1}, Lcn/domob/android/ads/i;-><init>(II)V

    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-direct {v2, v3, v4, v0, p0}, Lcn/domob/android/ads/a/c;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    iput-object v2, p0, Lcn/domob/android/ads/e;->g:Lcn/domob/android/ads/j;

    goto :goto_2

    .line 635
    :cond_3
    const-string v3, "mraid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 636
    new-instance v2, Lcn/domob/android/ads/c/a;

    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/ads/i;

    invoke-direct {v4, v0, v1}, Lcn/domob/android/ads/i;-><init>(II)V

    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-direct {v2, v3, v4, v0, p0}, Lcn/domob/android/ads/c/a;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    iput-object v2, p0, Lcn/domob/android/ads/e;->g:Lcn/domob/android/ads/j;

    goto :goto_2

    .line 638
    :cond_4
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "bad ad received"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    goto :goto_3
.end method

.method public B()V
    .locals 4

    .prologue
    .line 657
    iget-object v0, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    const-string v0, ""

    .line 659
    iget-object v0, p0, Lcn/domob/android/ads/e;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/e;->P:Ljava/lang/String;

    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "mraid"

    .line 663
    :goto_0
    sget-object v1, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gen fake ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 664
    const-string v1, "{\"sid\":\"search_id\",\"cid\":\"cookie_id\",\"ad\":{\"id\":\"12345\",\"format\":\"%s\",\"ct\":\"url\",\"width\":320,\"height\":50,\"url\":\"%s\",\"content\":\"\",\"base_url\":\"\",\"click_tracker\":\"\",\"imp_tracker\":\"h\",\"event_tracker\":\"\",\"tracker\":\"8ewfqd8ffqwer1325effff342f3444\",\"animation\":1,\"o\":\"h\",\"cls_btn\":0,\"imp_min\":5,\"imp_cls\":8,\"cache\":1440,\"pkg\":\"cn.domob.android.rm.demo\",\"mz_click_tracker\":\"\",\"mz_imp_tracker\":\"\"},\"control\":{\"refresh\":20,\"disable\":false,\"dis_time\":30,\"location\":true,\"ors\":{\"version\":\"2\",\"config\":{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\",\"cn.domob.test\":\"5\"}}}}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-static {v0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v0

    .line 666
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    .line 671
    :goto_1
    return-void

    .line 662
    :cond_0
    const-string v0, "domob"

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->x()V

    goto :goto_1
.end method

.method public C()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    .line 930
    :cond_0
    return-void
.end method

.method public D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_0

    .line 942
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method public E()V
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->c()V

    .line 948
    sget-object v0, Lcn/domob/android/ads/e$a;->b:Lcn/domob/android/ads/e$a;

    iput-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    .line 949
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    .line 952
    :cond_0
    return-void
.end method

.method public F()V
    .locals 2

    .prologue
    .line 956
    sget-object v0, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    iput-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    .line 957
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->d()V

    .line 958
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    .line 961
    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    .line 968
    :cond_0
    return-void
.end method

.method public H()V
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->j()V

    .line 973
    return-void
.end method

.method protected a()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    sget-object v1, Lcn/domob/android/ads/e$c;->a:Lcn/domob/android/ads/e$c;

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_3

    .line 178
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->R:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start schedule new request. Refresh interval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/e;->U:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcn/domob/android/ads/e;->U:I

    if-nez v0, :cond_2

    .line 181
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "AdView is auto refreshable but interval from ad response is 0. DON\'T SCHEDULE."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    iget v2, p0, Lcn/domob/android/ads/e;->U:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    sget-object v0, Lcn/domob/android/ads/e$c;->a:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->b:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_0

    .line 189
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "AdView is expanding, cancel current \'start()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 393
    iput p1, p0, Lcn/domob/android/ads/e;->U:I

    .line 394
    return-void
.end method

.method protected a(J)V
    .locals 2

    .prologue
    .line 424
    iput-wide p1, p0, Lcn/domob/android/ads/e;->W:J

    .line 425
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/ads/e;->X:J

    .line 426
    return-void
.end method

.method protected a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 2

    .prologue
    .line 762
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "FAILED to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/e;->T:Z

    .line 764
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->a()V

    .line 766
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/e$2;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/ads/e$2;-><init>(Lcn/domob/android/ads/e;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method public a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 921
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "FAILED to load ad content view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 923
    return-void
.end method

.method public a(Lcn/domob/android/ads/h;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, p1, v0, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method public a(Lcn/domob/android/ads/h;I)V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/e;->b(Lcn/domob/android/ads/h;I)V

    .line 676
    return-void
.end method

.method public a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 495
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V

    .line 496
    return-void
.end method

.method public a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/h;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->j()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    .line 485
    new-instance v2, Lcn/domob/android/ads/w;

    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    new-instance v3, Lcn/domob/android/ads/w$b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcn/domob/android/ads/w$b;-><init>(Lcn/domob/android/ads/w;)V

    .line 487
    iput-object v1, v3, Lcn/domob/android/ads/w$b;->a:Ljava/lang/String;

    .line 488
    if-eqz p3, :cond_0

    .line 489
    iput-object p3, v3, Lcn/domob/android/ads/w$b;->b:Ljava/lang/String;

    .line 491
    :cond_0
    invoke-virtual {v2, v0, v3, p2}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$b;Ljava/util/HashMap;)V

    .line 492
    return-void
.end method

.method public a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/h;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 504
    new-instance v1, Lcn/domob/android/ads/w$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/w$f;-><init>(Lcn/domob/android/ads/w;)V

    .line 505
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->k()Ljava/lang/String;

    move-result-object v2

    .line 506
    iget-object v3, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v3}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/domob/android/ads/w$f;->a:Ljava/lang/String;

    .line 507
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 508
    iget-object v4, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v4, v3}, Lcn/domob/android/ads/DomobAdView;->getLocationOnScreen([I)V

    .line 510
    const-string v4, "%d,%d,%d,%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    iget-object v6, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v6}, Lcn/domob/android/ads/DomobAdView;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v6}, Lcn/domob/android/ads/DomobAdView;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/domob/android/ads/w$f;->d:Ljava/lang/String;

    .line 512
    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->t(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcn/domob/android/ads/w$f;->e:I

    .line 513
    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->u(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcn/domob/android/ads/w$f;->f:I

    .line 514
    iget-object v3, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcn/domob/android/ads/w$f;->g:Ljava/lang/String;

    .line 515
    iput-object p3, v1, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    .line 516
    iput-object p4, v1, Lcn/domob/android/ads/w$f;->b:Ljava/lang/String;

    .line 517
    iput-wide p5, v1, Lcn/domob/android/ads/w$f;->i:J

    .line 519
    invoke-virtual {v0, v2, v1, p2}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$f;Ljava/util/HashMap;)V

    .line 521
    const-string v0, "s"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->w()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    sget-object v1, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v2, "the version of miaoZhen SDK is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/miaozhen/mzmonitor/MZMonitor;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v2, "the MZURLTrackingCode test result is error and the content is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcn/domob/android/ads/j;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->S:Z

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->n()I

    move-result v0

    .line 789
    packed-switch v0, :pswitch_data_0

    .line 803
    add-int/lit8 v0, v0, -0x2

    .line 804
    if-ltz v0, :cond_0

    invoke-static {}, Lcn/domob/android/ads/H$a;->values()[Lcn/domob/android/ads/H$a;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 806
    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-static {}, Lcn/domob/android/ads/H$a;->values()[Lcn/domob/android/ads/H$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/H;->a(Lcn/domob/android/ads/H$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V

    .line 818
    :goto_0
    return-void

    .line 792
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 796
    :pswitch_1
    invoke-static {}, Lcn/domob/android/ads/H$a;->values()[Lcn/domob/android/ads/H$a;

    move-result-object v0

    array-length v0, v0

    .line 797
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, v0

    mul-double v0, v1, v3

    double-to-int v0, v0

    .line 798
    iget-object v1, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-static {}, Lcn/domob/android/ads/H$a;->values()[Lcn/domob/android/ads/H$a;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Lcn/domob/android/ads/H;->a(Lcn/domob/android/ads/H$a;)[Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 810
    :cond_0
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Invalid animation type index."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, p1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V

    goto :goto_0

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 978
    const-string v0, "install_success"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 979
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 823
    const-string v0, "up_alert"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 880
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto refresh is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 248
    iput-boolean p1, p0, Lcn/domob/android/ads/e;->R:Z

    .line 249
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    sget-object v0, Lcn/domob/android/ads/e$c;->c:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    .line 196
    return-void
.end method

.method public b(Lcn/domob/android/ads/j;)V
    .locals 0

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/j;)V

    .line 917
    return-void
.end method

.method public b(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 983
    const-string v0, "run"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 984
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcn/domob/android/ads/e;->J:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 828
    const-string v0, "up_ok"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 829
    return-void
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition animation is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 257
    iput-boolean p1, p0, Lcn/domob/android/ads/e;->S:Z

    .line 258
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 199
    iget-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    sget-object v1, Lcn/domob/android/ads/e$c;->b:Lcn/domob/android/ads/e$c;

    if-ne v0, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_2

    .line 204
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->R:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    iget-wide v2, p0, Lcn/domob/android/ads/e;->X:J

    iget-wide v4, p0, Lcn/domob/android/ads/e;->W:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/domob/android/ads/e;->X:J

    .line 208
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause schedule and the ad has shown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/domob/android/ads/e;->X:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcn/domob/android/ads/e$c;->b:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->b:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_0

    .line 212
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "AdView is expanding, pause() has been called. Cancel current \'pause()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcn/domob/android/ads/e;->K:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 833
    const-string v0, "up_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 834
    return-void
.end method

.method protected c(Z)V
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcn/domob/android/ads/e;->T:Z

    .line 381
    return-void
.end method

.method protected d()V
    .locals 5

    .prologue
    .line 217
    iget-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    sget-object v1, Lcn/domob/android/ads/e$c;->a:Lcn/domob/android/ads/e$c;

    if-ne v0, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->a:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_3

    .line 222
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->R:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/domob/android/ads/e;->U:I

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/e;->W:J

    .line 225
    iget v0, p0, Lcn/domob/android/ads/e;->U:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcn/domob/android/ads/e;->X:J

    sub-long/2addr v0, v2

    .line 227
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 228
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Maybe there is no ad, request no."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->i()V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v2, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume with remaining time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v3, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    sget-object v0, Lcn/domob/android/ads/e$c;->a:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/e;->k:Lcn/domob/android/ads/e$a;

    sget-object v1, Lcn/domob/android/ads/e$a;->b:Lcn/domob/android/ads/e$a;

    if-ne v0, v1, :cond_0

    .line 237
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "AdView is expanding, cancel current \'resume()\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcn/domob/android/ads/e;->L:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 838
    const-string v0, "up_skip"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    return-void
.end method

.method protected d(Z)V
    .locals 0

    .prologue
    .line 415
    iput-boolean p1, p0, Lcn/domob/android/ads/e;->Q:Z

    .line 416
    return-void
.end method

.method protected e()J
    .locals 6

    .prologue
    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    iget-wide v2, p0, Lcn/domob/android/ads/e;->X:J

    iget-wide v4, p0, Lcn/domob/android/ads/e;->W:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcn/domob/android/ads/e;->M:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 843
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 844
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcn/domob/android/ads/e;->N:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public f(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 848
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 849
    return-void
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->R:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcn/domob/android/ads/e;->j(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public g(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 853
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 854
    return-void
.end method

.method protected g()Z
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Check settings and permissions."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "All permissions are ok."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    .line 280
    :goto_0
    return v0

    .line 274
    :cond_0
    const-string v0, "DomobSDK"

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    const-string v0, "DomobSDK"

    const-string v1, "Please set your PlacementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected declared-synchronized h()V
    .locals 2

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->Q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/e;->T:Z

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :goto_0
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Ignore auto request from DomobAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcn/domob/android/ads/e;->O:Ljava/lang/String;

    .line 907
    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 858
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    return-void
.end method

.method protected declared-synchronized i()V
    .locals 4

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->T:Z

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_0
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/e;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "DomobAdView is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 306
    iget-object v0, p0, Lcn/domob/android/ads/e;->V:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/e;->f:Lcn/domob/android/ads/e$b;

    iget v2, p0, Lcn/domob/android/ads/e;->U:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcn/domob/android/ads/e;->P:Ljava/lang/String;

    .line 911
    return-void
.end method

.method public i(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 863
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 864
    return-void
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/e;->I:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcn/domob/android/ads/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 873
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/domob/android/ads/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 874
    return-void
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->d()I

    move-result v0

    return v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/e;->J:Ljava/lang/String;

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/android/ads/e;->K:Ljava/lang/String;

    return-object v0
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/e;->L:Ljava/lang/String;

    return-object v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcn/domob/android/ads/e;->M:Ljava/lang/String;

    return-object v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcn/domob/android/ads/e;->N:Ljava/lang/String;

    return-object v0
.end method

.method protected s()Landroid/content/Context;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcn/domob/android/ads/e;->U:I

    return v0
.end method

.method protected u()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    return-object v0
.end method

.method protected v()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lcn/domob/android/ads/e;->Q:Z

    return v0
.end method

.method protected w()Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    return-object v0
.end method

.method protected x()V
    .locals 1

    .prologue
    .line 434
    .line 435
    new-instance v0, Lcn/domob/android/ads/e$1;

    invoke-direct {v0, p0, p0}, Lcn/domob/android/ads/e$1;-><init>(Lcn/domob/android/ads/e;Lcn/domob/android/ads/e;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/e$1;->start()V

    .line 474
    return-void
.end method

.method protected y()V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcn/domob/android/ads/F;->a()Lcn/domob/android/ads/F;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Lcn/domob/android/ads/e;)V

    .line 540
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->z()V

    .line 541
    return-void
.end method

.method protected z()V
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/e;->Q:Z

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/e;->T:Z

    .line 549
    sget-object v0, Lcn/domob/android/ads/e$c;->c:Lcn/domob/android/ads/e$c;

    iput-object v0, p0, Lcn/domob/android/ads/e;->l:Lcn/domob/android/ads/e$c;

    .line 550
    invoke-virtual {p0}, Lcn/domob/android/ads/e;->a()V

    .line 551
    return-void
.end method
