.class public Lcn/domob/android/ads/c/a;
.super Lcn/domob/android/ads/j;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a/d$b;


# static fields
.field private static g:Lcn/domob/android/ads/d/e; = null

.field private static final m:Ljava/lang/String; = "mraid"

.field private static final n:Ljava/lang/String; = "open"

.field private static final o:Ljava/lang/String; = "expand"


# instance fields
.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/c/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/j;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    .line 34
    iput-boolean v2, p0, Lcn/domob/android/ads/c/a;->h:Z

    .line 35
    iput-boolean v2, p0, Lcn/domob/android/ads/c/a;->i:Z

    .line 36
    iput-boolean v2, p0, Lcn/domob/android/ads/c/a;->j:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/domob/android/ads/c/a;->k:Landroid/os/Handler;

    .line 39
    iput v2, p0, Lcn/domob/android/ads/c/a;->l:I

    .line 47
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "New DomobMRAIDAdAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/c/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/c/a;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    .line 202
    :try_start_0
    const-string v2, "mraid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v2, "mraid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v2, "Scheme MRAID"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/c/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 210
    :cond_1
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "voicemail:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "sms:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mailto:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "geo:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tel:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    :cond_2
    sget-object v2, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v3, "Handle other phone intents."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 215
    if-eqz p3, :cond_3

    .line 216
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->t()V

    .line 220
    :cond_3
    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    iget-object v1, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/ads/d/d;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 223
    if-nez v1, :cond_4

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->l()V

    .line 228
    iget-object v2, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    sget-object v2, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :cond_5
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :try_start_2
    iget-object v3, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->l()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 237
    :catch_1
    move-exception v1

    .line 238
    :try_start_3
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

    goto/16 :goto_0

    .line 244
    :cond_6
    sget-object v2, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v3, "Handle unknown intents."

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 246
    if-eqz p3, :cond_7

    .line 247
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->t()V

    .line 250
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 253
    :try_start_4
    iget-object v3, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 255
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->l()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    .line 260
    goto/16 :goto_0

    .line 256
    :catch_2
    move-exception v1

    .line 257
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
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/c/a;Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/c/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcn/domob/android/ads/c/a;)Lcn/domob/android/ads/i;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->b:Lcn/domob/android/ads/i;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 356
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/c/a;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 358
    iget-object v1, p0, Lcn/domob/android/ads/c/a;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 359
    if-eqz p2, :cond_0

    .line 360
    iput-object p2, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 363
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/c/a;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/w$h;->c:Lcn/domob/android/ads/w$h;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 365
    return-void
.end method

.method private b(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 277
    .line 279
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->v()V

    .line 284
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "do click report for mraid scheme"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->t()V

    .line 288
    :cond_1
    check-cast p1, Lcn/domob/android/ads/c/s;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/domob/android/ads/c/s;->a(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 294
    :goto_0
    return v0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    sget-object v1, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 291
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcn/domob/android/ads/c/a;)Lcn/domob/android/ads/i;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->b:Lcn/domob/android/ads/i;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/c/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->g()V

    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/c/a;)I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcn/domob/android/ads/c/a;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/domob/android/ads/c/a;->l:I

    return v0
.end method

.method static synthetic f(Lcn/domob/android/ads/c/a;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/domob/android/ads/c/a;->l:I

    return v0
.end method

.method static synthetic g(Lcn/domob/android/ads/c/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->j()V

    return-void
.end method

.method static synthetic h(Lcn/domob/android/ads/c/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->j()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/c/a;)I
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcn/domob/android/ads/c/a;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/domob/android/ads/c/a;->l:I

    return v0
.end method

.method static synthetic j(Lcn/domob/android/ads/c/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->k()V

    return-void
.end method

.method static synthetic r()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcn/domob/android/ads/c/a;->k:Landroid/os/Handler;

    new-instance v2, Lcn/domob/android/ads/c/a$1;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/c/a$1;-><init>(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/h$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->d:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/c/a;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;)V

    .line 299
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->h()V

    .line 300
    return-void
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcn/domob/android/ads/c/a;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/c/a;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/c/a;->i:Z

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 383
    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->h:Z

    .line 384
    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->i:Z

    .line 385
    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->j:Z

    .line 386
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to load DomobMRAID adapter."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->s()V

    .line 54
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "lp_url"

    invoke-direct {p0, v0, p1}, Lcn/domob/android/ads/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/c/s;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->k()V

    .line 61
    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    const-string v1, "Destroy Domob MRAID WebViews."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/c/a;->f:Landroid/view/View;

    .line 75
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "load_success"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->h:Z

    .line 308
    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "load_failed"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->j:Z

    .line 316
    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 320
    invoke-direct {p0}, Lcn/domob/android/ads/c/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "load_cancel"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/c/a;->i:Z

    .line 324
    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 330
    iget v0, p0, Lcn/domob/android/ads/c/a;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/c/a;->l:I

    .line 332
    sget-object v0, Lcn/domob/android/ads/c/a;->g:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserClosed mOverlayCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/c/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcn/domob/android/ads/c/a;->l:I

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcn/domob/android/ads/c/a;->k()V

    .line 336
    :cond_0
    const-string v0, "close_lp"

    invoke-direct {p0, v0}, Lcn/domob/android/ads/c/a;->a(Ljava/lang/String;)V

    .line 337
    return-void
.end method
