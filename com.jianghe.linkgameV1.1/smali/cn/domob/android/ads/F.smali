.class Lcn/domob/android/ads/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/F$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/d/e; = null

.field private static final b:Ljava/lang/String; = "method"

.field private static final c:Ljava/lang/String; = "ua"

.field private static final d:Ljava/lang/String; = "cid"

.field private static final e:Ljava/lang/String; = "ipb"

.field private static final f:Ljava/lang/String; = "sv"

.field private static final g:Ljava/lang/String; = "network"

.field private static final h:Ljava/lang/String; = "idv"

.field private static final i:Ljava/lang/String; = "get_task_list"

.field private static final j:Ljava/lang/String; = "report_result"

.field private static final k:Ljava/lang/String; = "3rd"

.field private static final l:Ljava/lang/String; = "tasks"

.field private static final m:Ljava/lang/String; = "det_interval"

.field private static final n:Ljava/lang/String; = "pb[version_code]"

.field private static final o:Ljava/lang/String; = "pb[identifier]"

.field private static final p:Ljava/lang/String; = "result"

.field private static final q:Ljava/lang/String; = "visit"

.field private static final r:Ljava/lang/String; = "seqid"

.field private static final s:Ljava/lang/String; = "vcode"

.field private static final t:Ljava/lang/String; = "s"

.field private static final u:Ljava/lang/String; = "c"

.field private static final v:J = 0x36ee80L

.field private static final w:J = 0x240c8400L

.field private static final x:J = 0x927c0L

.field private static z:Lcn/domob/android/ads/F;


# instance fields
.field private A:Lcn/domob/android/ads/e;

.field private y:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/F;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/F;->z:Lcn/domob/android/ads/F;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/F;->A:Lcn/domob/android/ads/e;

    .line 63
    return-void
.end method

.method protected static a()Lcn/domob/android/ads/F;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcn/domob/android/ads/F;->z:Lcn/domob/android/ads/F;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcn/domob/android/ads/F;

    invoke-direct {v0}, Lcn/domob/android/ads/F;-><init>()V

    sput-object v0, Lcn/domob/android/ads/F;->z:Lcn/domob/android/ads/F;

    .line 71
    :cond_0
    sget-object v0, Lcn/domob/android/ads/F;->z:Lcn/domob/android/ads/F;

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    const/4 v0, 0x1

    .line 354
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 358
    invoke-static {v3, v1, v0, v2}, Lcn/domob/android/ads/F;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    if-eqz v2, :cond_1

    .line 360
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 362
    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "post params string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 287
    const-string v0, "method"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {p0}, Lcn/domob/android/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-nez v0, :cond_0

    .line 291
    const-string v0, "Android,,,,,,,,"

    .line 294
    :cond_0
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v2, Lcn/domob/android/ads/d/a;

    const-string v3, "domob_config"

    invoke-direct {v2, p0, v3}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    const-string v3, "cookie_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    if-eqz v2, :cond_1

    .line 300
    sget-object v3, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-class v4, Lcn/domob/android/ads/F;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 305
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 306
    const-string v4, "ipb"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_0
    invoke-static {p0}, Lcn/domob/android/a/a;->b(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 314
    const-string v5, "pb[version_code]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_2
    invoke-static {p0}, Lcn/domob/android/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 319
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 320
    const-string v5, "pb[identifier]"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_3
    const-string v4, "sv"

    const-string v5, "030306"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v4, "network"

    invoke-static {p0}, Lcn/domob/android/a/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v4, "idv"

    invoke-static {p0}, Lcn/domob/android/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v4, "vcode"

    invoke-static {v3, v0, v2}, Lcn/domob/android/ads/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/o$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-object v1

    .line 308
    :cond_4
    const-string v4, "DomobSDK"

    const-string v5, "publisher id is null or empty!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/d/a;

    const-string v1, "domob_config"

    invoke-direct {v0, p1, v1}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 136
    const-string v2, "next_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetectTime error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/F;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/domob/android/ads/F;->b()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 336
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 338
    if-eqz p3, :cond_1

    .line 339
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/F;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 219
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/F;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 220
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    invoke-static {p1}, Lcn/domob/android/a/a;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "is emulator ignore request"

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    :try_start_0
    new-instance v2, Lcn/domob/android/ads/d/a;

    const-string v3, "domob_config"

    invoke-direct {v2, p1, v3}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    const-string v3, "next_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 109
    cmp-long v4, v2, v7

    if-gez v4, :cond_2

    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 117
    sget-object v4, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exceed detInterval:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " min"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    cmp-long v2, v2, v7

    if-ltz v2, :cond_0

    move v0, v1

    .line 122
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    sget-object v2, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIsNeedDetect error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/F;->y:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/F;->y:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/domob/android/ads/F;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "no need to detect"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info detect has Throwable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x240c8400

    .line 145
    const-wide/32 v0, 0x927c0

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;J)V

    .line 146
    const-string v0, "get_task_list"

    invoke-static {p1, v0}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lcn/domob/android/ads/r;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/r;-><init>(Landroid/content/Context;)V

    .line 148
    sget-object v2, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https req:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcn/domob/android/ads/F;->A:Lcn/domob/android/ads/e;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/r;->a(Ljava/lang/String;Lcn/domob/android/ads/e;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v2, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https rsp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 160
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 161
    :cond_2
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Https rsp jsonobject is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDetectInfo has a exception msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_3
    :try_start_1
    const-string v2, "det_interval"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    if-nez v2, :cond_5

    .line 167
    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;J)V

    .line 180
    :goto_1
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    const-string v2, "tasks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 185
    :cond_4
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Can\'t find a tag name of task"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_5
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 172
    cmp-long v4, v2, v6

    if-lez v4, :cond_6

    .line 173
    const-wide/32 v2, 0x240c8400

    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 175
    :cond_6
    invoke-direct {p0, p1, v2, v3}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;J)V

    goto :goto_1

    .line 189
    :cond_7
    const-string v3, "report_result"

    invoke-static {p1, v3}, Lcn/domob/android/ads/F;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 191
    const-string v4, "seqid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_8

    .line 193
    const-string v4, "seqid"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 197
    invoke-direct {p0, v2, v0}, Lcn/domob/android/ads/F;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 199
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 200
    const-string v4, "result"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v0, "result"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-eqz v3, :cond_0

    .line 204
    invoke-direct {p0, v3}, Lcn/domob/android/ads/F;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcn/domob/android/ads/F;->A:Lcn/domob/android/ads/e;

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/r;->a(Ljava/lang/String;Lcn/domob/android/ads/e;)Ljava/lang/String;

    .line 206
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Https send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 227
    :try_start_0
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v0, "3rd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 231
    if-nez v1, :cond_1

    .line 232
    sget-object v0, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Https rsp JSONArray is error"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkThirdPartyExist has exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 236
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 237
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 239
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 241
    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 236
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :catch_1
    move-exception v4

    .line 243
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 244
    :catch_2
    move-exception v3

    .line 245
    sget-object v3, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    const-string v4, "check package has exception"

    invoke-virtual {v3, p0, v4}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 248
    :cond_2
    const-string v0, "3rd"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 258
    const-string v0, "visit"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 260
    if-eqz v2, :cond_1

    .line 262
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/F;->y:Landroid/content/Context;

    iget-object v3, p0, Lcn/domob/android/ads/F;->y:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GET"

    const/4 v6, 0x0

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/m$a;)V

    .line 264
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->c()V

    .line 265
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->e()Ljava/lang/String;

    move-result-object v1

    .line 266
    if-nez v1, :cond_0

    const-string v1, ""

    .line 268
    :cond_0
    const-string v2, "c"

    invoke-virtual {v9, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v1, "s"

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->f()I

    move-result v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v0, "visit"

    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visit url has a Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :try_start_1
    const-string v1, "c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v0, "s"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    const-string v0, "visit"

    invoke-virtual {p2, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    sget-object v1, Lcn/domob/android/ads/F;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/content/Context;Lcn/domob/android/ads/e;)V
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/F;->y:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcn/domob/android/ads/F;->A:Lcn/domob/android/ads/e;

    .line 77
    new-instance v0, Lcn/domob/android/ads/F$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/F$1;-><init>(Lcn/domob/android/ads/F;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/F$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
