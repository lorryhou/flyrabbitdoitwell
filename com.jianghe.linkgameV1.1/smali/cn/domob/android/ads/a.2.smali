.class public abstract Lcn/domob/android/ads/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a$c;,
        Lcn/domob/android/ads/a$b;,
        Lcn/domob/android/ads/a$a;
    }
.end annotation


# static fields
.field public static final c:I = -0x1

.field private static d:Lcn/domob/android/ads/d/e; = null

.field private static final j:I = 0x14


# instance fields
.field public a:Lcn/domob/android/ads/a$a;

.field public b:Lcn/domob/android/ads/a$b;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->f:Z

    .line 43
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->g:Z

    .line 44
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->h:Z

    .line 45
    iput-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    .line 53
    invoke-direct {p0}, Lcn/domob/android/ads/a;->b()V

    .line 54
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 56
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 57
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Lcn/domob/android/ads/a;->e:I

    .line 65
    if-eq p2, v2, :cond_0

    .line 66
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "Init WebView with custom background color."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcn/domob/android/ads/a;->setBackgroundColor(I)V

    .line 70
    :cond_0
    new-instance v0, Lcn/domob/android/ads/a$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$1;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 107
    new-instance v0, Lcn/domob/android/ads/a$2;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$2;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 116
    return-void
.end method

.method static synthetic a()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->g:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->h:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 355
    if-nez v1, :cond_1

    .line 356
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_0
    :goto_0
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    sget-object v1, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 359
    const-string v0, ""

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 371
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 373
    :goto_1
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 374
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 376
    :catch_1
    move-exception v0

    .line 377
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 381
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 382
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 384
    :catch_2
    move-exception v1

    goto :goto_0

    .line 367
    :catch_3
    move-exception v0

    .line 368
    const-string v0, ""

    goto :goto_0

    .line 380
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 381
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 382
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 384
    :catch_4
    move-exception v1

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    .line 380
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 381
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 382
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 385
    :cond_3
    :goto_2
    throw v0

    .line 384
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setHorizontalScrollBarEnabled(Z)V

    .line 120
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setHorizontalScrollbarOverlay(Z)V

    .line 121
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setVerticalScrollBarEnabled(Z)V

    .line 122
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/a;->setVerticalScrollbarOverlay(Z)V

    .line 123
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 124
    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/a;->d()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/ads/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->g:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    .line 162
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->a(Lcn/domob/android/ads/a;)V

    .line 166
    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/domob/android/ads/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/a;->c()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/ads/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcn/domob/android/ads/a;->e:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_0

    .line 170
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    .line 172
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->b(Lcn/domob/android/ads/a;)V

    .line 176
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    if-eqz v0, :cond_0

    .line 180
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/a;->i:Z

    .line 182
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/a$b;->c(Lcn/domob/android/ads/a;)V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/domob/android/ads/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->h:Z

    return v0
.end method

.method static synthetic f(Lcn/domob/android/ads/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/domob/android/ads/a;->e()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/ads/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/domob/android/ads/a;->f:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 331
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    .line 332
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 333
    sget-object v3, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert js file :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcn/domob/android/ads/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 335
    sget-object v3, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JS file path :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script src=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-object p1
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 213
    iput p1, p0, Lcn/domob/android/ads/a;->e:I

    .line 214
    return-void
.end method

.method public a(Lcn/domob/android/ads/a$a;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    .line 232
    return-void
.end method

.method public a(Lcn/domob/android/ads/a$b;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcn/domob/android/ads/a;->b:Lcn/domob/android/ads/a$b;

    .line 241
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 194
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 195
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v2, "BaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/a$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/a$3;-><init>(Lcn/domob/android/ads/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v3, "Load WebView with url = %s and data = %s."

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcn/domob/android/ads/a$c;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/a$c;-><init>(Lcn/domob/android/ads/a;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/a$c;->start()V

    .line 255
    invoke-static {p1}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 256
    :goto_0
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 258
    :goto_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 259
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/a;->loadUrl(Ljava/lang/String;)V

    .line 268
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 255
    goto :goto_0

    :cond_1
    move v3, v2

    .line 256
    goto :goto_1

    .line 260
    :cond_2
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    .line 261
    const-string v0, "text/html"

    const-string v1, "UTF-8"

    invoke-virtual {p0, p2, v0, v1}, Lcn/domob/android/ads/a;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 265
    :cond_4
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v3, "Error happened when loading WebView with URL = %s and data = %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lcn/domob/android/ads/a;->f:Z

    .line 223
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 306
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 315
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "Data is null or empty while calling \'loadDataWithBaseURL\'."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 274
    :try_start_0
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 277
    :cond_0
    sget-object v0, Lcn/domob/android/ads/a;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "loadUrl() is called with url = %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcn/domob/android/ads/m;

    invoke-virtual {p0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcn/domob/android/ads/a$4;

    invoke-direct {v2, p0, p1}, Lcn/domob/android/ads/a$4;-><init>(Lcn/domob/android/ads/a;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/m$a;)V

    .line 297
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method
