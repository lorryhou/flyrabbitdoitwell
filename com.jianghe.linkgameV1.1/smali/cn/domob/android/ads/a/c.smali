.class public Lcn/domob/android/ads/a/c;
.super Lcn/domob/android/ads/j;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a/a$a;
.implements Lcn/domob/android/ads/a/d$b;
.implements Lcn/domob/android/ads/d$a;
.implements Lcn/domob/android/ads/n$a;


# static fields
.field private static final A:Ljava/lang/String; = "vibrate"

.field private static final B:Ljava/lang/String; = "pattern"

.field private static final C:Ljava/lang/String; = "url"

.field private static final D:Ljava/lang/String; = "clk"

.field private static final E:Ljava/lang/String; = "imp"

.field private static final F:Ljava/lang/String; = "event"

.field private static final G:Ljava/lang/String; = "visit"

.field private static final H:Ljava/lang/String; = "url"

.field private static final I:Ljava/lang/String; = "phase"

.field private static final J:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final K:Ljava/lang/String; = "banner"

.field private static final L:Ljava/lang/String; = "expandable"

.field private static g:Lcn/domob/android/ads/d/e; = null

.field private static final n:Ljava/lang/String; = "domob"

.field private static final o:Ljava/lang/String; = "inapp"

.field private static final p:Ljava/lang/String; = "download"

.field private static final q:Ljava/lang/String; = "report"

.field private static final r:Ljava/lang/String; = "launch"

.field private static final s:Ljava/lang/String; = "custom"

.field private static final t:Ljava/lang/String; = "expand"

.field private static final u:Ljava/lang/String; = "close"

.field private static final v:Ljava/lang/String; = "form"

.field private static final w:Ljava/lang/String; = "fetch"

.field private static final x:Ljava/lang/String; = "url"

.field private static final y:Ljava/lang/String; = "name"

.field private static final z:Ljava/lang/String; = "rt"


# instance fields
.field private h:Lcn/domob/android/ads/a/e;

.field private i:Lcn/domob/android/ads/t$a;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/j;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->j:Landroid/os/Handler;

    .line 59
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->k:Z

    .line 60
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->l:Z

    .line 61
    iput-boolean v2, p0, Lcn/domob/android/ads/a/c;->m:Z

    .line 92
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "New DomobHTMLAdAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/h$b$a;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/h$b$a;)V

    return-void
.end method

.method private a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V
    .locals 6

    .prologue
    .line 230
    invoke-virtual {p2}, Lcn/domob/android/ads/h$b$a;->h()I

    move-result v0

    .line 231
    if-gez v0, :cond_3

    .line 232
    const/4 v0, 0x5

    .line 236
    :cond_0
    :goto_0
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expandable timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(I)V

    .line 240
    if-eqz p3, :cond_1

    .line 241
    new-instance v0, Lcn/domob/android/ads/a/c$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a/c$2;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$b;)V

    .line 272
    :cond_1
    new-instance v0, Lcn/domob/android/ads/a/c$3;

    invoke-direct {v0, p0, p1}, Lcn/domob/android/ads/a/c$3;-><init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)V

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a$a;)V

    .line 291
    invoke-virtual {p2}, Lcn/domob/android/ads/h$b$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "Content type of expandable is null or empty."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 310
    :cond_2
    :goto_1
    return-void

    .line 233
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->t()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->t()I

    move-result v0

    goto :goto_0

    .line 297
    :cond_4
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    invoke-virtual {p2}, Lcn/domob/android/ads/h$b$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 299
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_5
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {p2}, Lcn/domob/android/ads/h$b$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p2}, Lcn/domob/android/ads/h$b$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 304
    sget-object v2, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v3, "Get an DomobWebView instance for EXPANDABLE and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lcn/domob/android/ads/h$b$a;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 316
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Show expandable part of current creative."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lcn/domob/android/ads/h$b$a;->k()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 321
    invoke-virtual {p1}, Lcn/domob/android/ads/h$b$a;->k()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 323
    :goto_0
    invoke-virtual {p1}, Lcn/domob/android/ads/h$b$a;->l()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcn/domob/android/ads/h$b$a;->l()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 326
    :cond_0
    sget-object v2, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v3, "Expandable size is: %d * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 328
    new-instance v2, Lcn/domob/android/ads/t$a;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcn/domob/android/ads/t$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcn/domob/android/ads/t$a;->a(II)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v7}, Lcn/domob/android/ads/t$a;->a(ZZZZ)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/ads/h$b$a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Z)Lcn/domob/android/ads/t$a;

    move-result-object v0

    new-instance v1, Lcn/domob/android/ads/a/c$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$4;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/c;->i:Lcn/domob/android/ads/t$a;

    .line 342
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->i:Lcn/domob/android/ads/t$a;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->a(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/e;->loadUrl(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->j()V

    .line 350
    :goto_1
    return-void

    .line 348
    :cond_1
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Expandable part is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/n;)V
    .locals 6

    .prologue
    .line 851
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 852
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 853
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->a()Lcn/domob/android/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 854
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    .line 855
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->d()I

    move-result v1

    iput v1, v4, Lcn/domob/android/ads/w$c;->e:I

    .line 856
    invoke-virtual {p2}, Lcn/domob/android/ads/n;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    .line 857
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

    .line 859
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 368
    :try_start_0
    const-string v1, "domob"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 371
    const-string v2, "domob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Scheme domob action."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/c;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    .line 437
    :goto_0
    return v0

    .line 375
    :cond_0
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "voicemail:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wtai://wp/mc;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 379
    :cond_1
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Handle other phone intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 380
    if-eqz p3, :cond_2

    .line 381
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 385
    :cond_2
    const-string v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 387
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/ads/d/d;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 388
    if-nez v1, :cond_3

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 392
    :cond_3
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 393
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 437
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 396
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    const-string v2, "wtai://wp/mc;"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 399
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Create intent for: wtai://wp/mc;"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 400
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wtai://wp/mc;"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 406
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 407
    :catch_0
    move-exception v1

    .line 408
    :try_start_2
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 431
    :catch_1
    move-exception v1

    .line 432
    sget-object v2, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v3, "Exception in click."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 433
    sget-object v2, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 414
    :cond_7
    :try_start_3
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Handle unknown intents."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 417
    if-eqz p3, :cond_8

    .line 418
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 421
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 422
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 424
    :try_start_4
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 425
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 426
    :catch_2
    move-exception v1

    .line 427
    :try_start_5
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not handle intent with URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Is this intent unsupported on your phone?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/domob/android/ads/a/c;Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/i;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->b:Lcn/domob/android/ads/i;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 727
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 728
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 729
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 730
    if-eqz p2, :cond_0

    .line 731
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 734
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->c:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 736
    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 449
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 453
    const-string v4, "inapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    if-eqz p3, :cond_0

    .line 455
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 458
    :cond_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->i()Landroid/content/Context;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->w()V

    .line 464
    new-instance v2, Lcn/domob/android/ads/a/d;

    invoke-direct {v2, v0, v1, p2, p0}, Lcn/domob/android/ads/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/d$b;)V

    invoke-virtual {v2}, Lcn/domob/android/ads/a/d;->a()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 465
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$5;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    :cond_1
    :goto_0
    return v7

    .line 472
    :cond_2
    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 473
    if-eqz p3, :cond_3

    .line 474
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 477
    :cond_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    new-instance v2, Lcn/domob/android/ads/n;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-direct {v2, v3, v0, v4, p0}, Lcn/domob/android/ads/n;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/h;Lcn/domob/android/ads/n$a;)V

    .line 480
    invoke-virtual {v2}, Lcn/domob/android/ads/n;->i()V

    .line 481
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_4
    const-string v4, "launch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 483
    if-eqz p3, :cond_5

    .line 484
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 487
    :cond_5
    new-instance v1, Lcn/domob/android/ads/a/a;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0}, Lcn/domob/android/ads/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/android/ads/a/a$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/a/a;->a()V

    goto :goto_0

    .line 488
    :cond_6
    const-string v4, "expand"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 489
    if-eqz p3, :cond_7

    .line 490
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 493
    :cond_7
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 494
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 496
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expandable part base and content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/h$b$a;)V

    goto/16 :goto_0

    .line 502
    :cond_8
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "\u5e7f\u544a\u5e94\u7b54\u65e0Expandable\u90e8\u5206\uff0c\u65e0\u6cd5\u8fdb\u884cexpand action\u3002"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    move v7, v1

    .line 503
    goto/16 :goto_0

    .line 505
    :cond_9
    const-string v4, "report"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 509
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 510
    if-eqz v3, :cond_a

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_b

    .line 511
    :cond_a
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "There is no report type."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    move v7, v1

    .line 512
    goto/16 :goto_0

    .line 514
    :cond_b
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 515
    const-string v3, "imp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 516
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 518
    const-string v3, "s"

    .line 519
    const-string v0, "phase"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 520
    const-string v0, "phase"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    const-string v1, "phase"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 523
    :cond_c
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    const-string v4, "ac"

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 524
    :cond_d
    const-string v3, "event"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 525
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 527
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    .line 528
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 529
    const-string v0, "url"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    const-string v1, "url"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 533
    :cond_e
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 534
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 535
    iget-object v3, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v3}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 536
    const-string v3, "ac"

    iput-object v3, v4, Lcn/domob/android/ads/w$c;->b:Ljava/lang/String;

    move-object v3, v2

    .line 538
    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 539
    :cond_f
    const-string v3, "clk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 540
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "ac"

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->h()V

    goto/16 :goto_0

    .line 544
    :cond_10
    const-string v3, "visit"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 546
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    new-instance v1, Lcn/domob/android/ads/m;

    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v0, v2}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/m$a;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/m;->b()V

    goto/16 :goto_0

    .line 549
    :cond_11
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Unknown reprot type."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_12
    const-string v2, "close"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 552
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->m()V

    goto/16 :goto_0

    .line 553
    :cond_13
    const-string v2, "custom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 555
    const-string v2, "form"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 556
    if-eqz p3, :cond_14

    .line 557
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 560
    :cond_14
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 562
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 564
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const-class v3, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 565
    const-string v2, "DomobActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v2, "webview_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 570
    :cond_15
    const-string v2, "fetch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 571
    if-eqz p3, :cond_16

    .line 572
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->u()V

    .line 575
    :cond_16
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 577
    const-string v0, "url"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    const-string v1, "name"

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    const-string v3, "rt"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 581
    invoke-static {v2}, Lcn/domob/android/ads/d/d;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 582
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 584
    :goto_1
    iget-object v3, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcn/domob/android/ads/n;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 586
    :cond_17
    const-string v2, "vibrate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 592
    iget-object v2, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->D(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 593
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Vibration function can not be achieved, because there is no authority or device does not support"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V

    move v7, v1

    .line 594
    goto/16 :goto_0

    .line 596
    :cond_18
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 598
    const-string v2, "pattern"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 599
    if-eqz v0, :cond_1a

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 600
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 601
    array-length v0, v2

    new-array v3, v0, [J

    move v0, v1

    .line 603
    :goto_2
    :try_start_0
    array-length v4, v2

    if-ge v0, v4, :cond_19

    .line 604
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 606
    :cond_19
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 607
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "action vibrate, parse data error or other"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    move v7, v1

    .line 610
    goto/16 :goto_0

    .line 613
    :cond_1a
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "action vibrate, pattern is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :cond_1b
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle unknown action : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    move v7, v1

    .line 618
    goto/16 :goto_0

    :cond_1c
    move v2, v7

    goto/16 :goto_1
.end method

.method static synthetic c(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/i;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->b:Lcn/domob/android/ads/i;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 782
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 783
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 784
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 785
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->h:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 787
    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/e;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic h(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->g()V

    return-void
.end method

.method static synthetic j(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->t()V

    return-void
.end method

.method static synthetic m(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->j()V

    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->k()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcn/domob/android/ads/a/c;->j:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/a/c$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/a/c$1;-><init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/h$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private t()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->i:Lcn/domob/android/ads/t$a;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->i:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/t$a;->a()V

    .line 356
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->d:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;)V

    .line 626
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->h()V

    .line 627
    return-void
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/a/c;->l:Z

    if-nez v0, :cond_0

    .line 744
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->k:Z

    .line 755
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->l:Z

    .line 756
    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->m:Z

    .line 757
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to load DomobHTML adapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->s()V

    .line 100
    return-void
.end method

.method public a(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 842
    const-string v0, "install_success"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 843
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 774
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "la_failsafe_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    const-string v0, "la_failsafe_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 670
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 675
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 676
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {v1}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 682
    :cond_2
    const-string v2, "domob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "inapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcn/domob/android/ads/a/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Error while parsing landingpage URL."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 690
    sget-object v1, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 698
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 702
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 706
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_0
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domob://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcn/domob/android/ads/a/c;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 720
    :goto_1
    return-void

    .line 713
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "domob://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 762
    const-string v0, "la_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p0}, Lcn/domob/android/ads/a/c;->l()V

    .line 764
    return-void
.end method

.method public b(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 847
    const-string v0, "run"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 848
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 768
    const-string v0, "la_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->c(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public c(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 792
    const-string v0, "download_finish"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 793
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onViewable) ? domobjs.onViewable() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public d(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 797
    const-string v0, "download_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 798
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    const-string v1, "javascript:(window.domobjs && window.domobjs.onDismiss) ? domobjs.onDismiss() : null"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public e(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 802
    const-string v0, "download_start"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 803
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    sget-object v0, Lcn/domob/android/ads/a/c;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Destroy DomobWebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 121
    iput-object v2, p0, Lcn/domob/android/ads/a/c;->f:Landroid/view/View;

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/a/e;->destroy()V

    .line 126
    iput-object v2, p0, Lcn/domob/android/ads/a/c;->h:Lcn/domob/android/ads/a/e;

    .line 128
    :cond_1
    return-void
.end method

.method public f(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 807
    const-string v0, "download_cancel"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 808
    return-void
.end method

.method public g(Lcn/domob/android/ads/n;)V
    .locals 2

    .prologue
    .line 812
    const-string v0, "download_repeat"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 813
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$7;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 821
    :cond_0
    return-void
.end method

.method public h(Lcn/domob/android/ads/n;)V
    .locals 0

    .prologue
    .line 826
    return-void
.end method

.method public i(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 830
    const-string v0, "download_md5_failed"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/a/c;->a(Ljava/lang/String;Lcn/domob/android/ads/n;)V

    .line 831
    return-void
.end method

.method public j(Lcn/domob/android/ads/n;)V
    .locals 1

    .prologue
    .line 836
    invoke-static {}, Lcn/domob/android/ads/d;->a()Lcn/domob/android/ads/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/d;->a(Lcn/domob/android/ads/n;)V

    .line 837
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 633
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->k:Z

    .line 637
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->m:Z

    .line 645
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcn/domob/android/ads/a/c;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a/c;->l:Z

    .line 653
    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcn/domob/android/ads/a/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a/c$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/c$6;-><init>(Lcn/domob/android/ads/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 664
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/a/c;->b(Ljava/lang/String;)V

    .line 665
    return-void
.end method
