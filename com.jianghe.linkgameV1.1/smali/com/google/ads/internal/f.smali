.class public final Lcom/google/ads/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/internal/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/l;

.field private final b:Lcom/google/ads/internal/f$a;

.field private volatile c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/l;)V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/ads/internal/f$1;

    invoke-direct {v0}, Lcom/google/ads/internal/f$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/ads/internal/f;-><init>(Lcom/google/ads/l;Lcom/google/ads/internal/f$a;)V

    .line 135
    return-void
.end method

.method constructor <init>(Lcom/google/ads/l;Lcom/google/ads/internal/f$a;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/Thread;

    .line 145
    iput-object p1, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    .line 146
    iput-object p2, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/f$a;

    .line 147
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 486
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 487
    const-string v1, "drt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-boolean v1, p0, Lcom/google/ads/internal/f;->d:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 493
    const-string v1, "X-Afma-drt-Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const-string v1, "Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->b(Ljava/net/HttpURLConnection;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->f(Ljava/net/HttpURLConnection;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->g(Ljava/net/HttpURLConnection;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->h(Ljava/net/HttpURLConnection;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->e(Ljava/net/HttpURLConnection;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->i(Ljava/net/HttpURLConnection;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->j(Ljava/net/HttpURLConnection;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->k(Ljava/net/HttpURLConnection;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->d(Ljava/net/HttpURLConnection;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->c(Ljava/net/HttpURLConnection;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->l(Ljava/net/HttpURLConnection;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->m(Ljava/net/HttpURLConnection;)V

    .line 175
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x190

    .line 395
    const/16 v0, 0x12c

    if-gt v0, p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 397
    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get redirect location from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redirect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 401
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    .line 436
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;)V

    .line 408
    iput-object v0, p0, Lcom/google/ads/internal/f;->e:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_1
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_3

    .line 411
    invoke-direct {p0, p1}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;)V

    .line 412
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response content is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response message is null or zero length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 420
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    iget-object v2, p0, Lcom/google/ads/internal/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto :goto_0

    .line 427
    :cond_3
    if-ne p2, v1, :cond_4

    .line 428
    const-string v0, "Bad request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 430
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto/16 :goto_0

    .line 432
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 434
    invoke-virtual {p0}, Lcom/google/ads/internal/f;->a()V

    goto/16 :goto_0
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/internal/f;->c:Z

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/internal/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/google/ads/internal/f;->b:Lcom/google/ads/internal/f$a;

    invoke-interface {v1, v0}, Lcom/google/ads/internal/f$a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/f;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V

    .line 469
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    .line 470
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 471
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 472
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 473
    invoke-direct {p0, v1, v0}, Lcom/google/ads/internal/f;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 478
    :cond_0
    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 181
    const-string v0, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->f(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 192
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->b(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method private d(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 204
    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->b(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 214
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 218
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    const/high16 v3, 0x447a0000

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/internal/d;->a(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get timeout value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f(Ljava/net/HttpURLConnection;)V
    .locals 5

    .prologue
    .line 231
    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 235
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0, v4}, Lcom/google/ads/internal/d;->b(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method private g(Ljava/net/HttpURLConnection;)V
    .locals 5

    .prologue
    .line 244
    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 248
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-virtual {v0, v4}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method private h(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 259
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 268
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    .line 269
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 271
    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(F)V

    .line 272
    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/google/ads/internal/d;->g()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get refresh value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/google/ads/internal/d;->f()V

    goto :goto_0
.end method

.method private i(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 286
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    goto :goto_0
.end method

.method private j(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 301
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    :try_start_0
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 305
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/internal/d;->b(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 329
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->c(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method private l(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 341
    const-string v0, "X-Afma-Ad-Size"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    :try_start_0
    const-string v1, "x"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 347
    array-length v2, v1

    if-eq v2, v3, :cond_1

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 352
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    new-instance v3, Lcom/google/ads/AdSize;

    invoke-direct {v3, v2, v1}, Lcom/google/ads/AdSize;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdSize;)V

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse size header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m(Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 366
    const-string v0, "X-Afma-Disable-Activation-And-Scroll"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Z)V

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/f;->c:Z

    .line 156
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 379
    iput-object p1, p0, Lcom/google/ads/internal/f;->e:Ljava/lang/String;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/f;->c:Z

    .line 381
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/Thread;

    .line 382
    iget-object v0, p0, Lcom/google/ads/internal/f;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/google/ads/internal/f;->d:Z

    .line 322
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 442
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/internal/f;->b()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 456
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 447
    :catch_1
    move-exception v0

    .line 449
    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 451
    :catch_2
    move-exception v0

    .line 453
    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    iget-object v0, p0, Lcom/google/ads/internal/f;->a:Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0
.end method
