.class public Lcn/domob/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final A:Ljava/lang/String; = "locacc"

.field protected static final B:Ljava/lang/String; = "locaccmeters"

.field protected static final C:Ljava/lang/String; = "locstatus"

.field protected static final D:Ljava/lang/String; = "loctime"

.field protected static final E:Ljava/lang/String; = "ama"

.field protected static final F:Ljava/lang/String; = "ma"

.field protected static final G:Ljava/lang/String; = "areacode"

.field protected static final H:Ljava/lang/String; = "cellid"

.field protected static final I:Ljava/lang/String; = "language"

.field protected static final J:Ljava/lang/String; = "scan"

.field protected static final K:Ljava/lang/String; = "istab"

.field private static L:Lcn/domob/android/ads/d/e; = null

.field private static M:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static N:Ljava/lang/String; = null

.field private static O:I = 0x0

.field private static P:I = 0x0

.field private static Q:Ljava/lang/String; = null

.field private static R:Ljava/lang/String; = null

.field private static final S:Ljava/lang/String; = "sdk"

.field protected static final a:Ljava/lang/String; = "pkgname"

.field protected static final b:Ljava/lang/String; = "vc"

.field protected static final c:Ljava/lang/String; = "vn"

.field protected static final d:Ljava/lang/String; = "appname"

.field protected static final e:Ljava/lang/String; = "useragent"

.field protected static final f:Ljava/lang/String; = "ua"

.field protected static final g:Ljava/lang/String; = "install"

.field protected static final h:Ljava/lang/String; = "idv"

.field protected static final i:Ljava/lang/String; = "imei"

.field protected static final j:Ljava/lang/String; = "andoidid"

.field protected static final k:Ljava/lang/String; = "osv"

.field protected static final l:Ljava/lang/String; = "devicemodel"

.field protected static final m:Ljava/lang/String; = "networktype"

.field protected static final n:Ljava/lang/String; = "networkavailable"

.field protected static final o:Ljava/lang/String; = "ip"

.field protected static final p:Ljava/lang/String; = "timezone"

.field protected static final q:Ljava/lang/String; = "carrier"

.field protected static final r:Ljava/lang/String; = "orientation"

.field protected static final s:Ljava/lang/String; = "isemulator"

.field protected static final t:Ljava/lang/String; = "rsd"

.field protected static final u:Ljava/lang/String; = "csd"

.field protected static final v:Ljava/lang/String; = "rsw"

.field protected static final w:Ljava/lang/String; = "rsh"

.field protected static final x:Ljava/lang/String; = "csw"

.field protected static final y:Ljava/lang/String; = "csh"

.field protected static final z:Ljava/lang/String; = "locinfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    const-string v0, ""

    .line 571
    sget-object v1, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v2, "scan"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-static {p0}, Lcn/domob/android/a/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_0
    return-object v0
.end method

.method public static B(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 584
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "areacode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "cellid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-1"

    aput-object v2, v0, v1

    .line 588
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/domob/android/a/b;->x(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 605
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "istab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->y(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 619
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 637
    :goto_0
    return v0

    .line 623
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0, v2}, Lcn/domob/android/a/a;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    :try_start_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 626
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 627
    const-string v3, "hasVibrator"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 628
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 629
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 630
    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    sget-object v1, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-string v3, "Android version of the device is less than 3.0, the interface is no mapping"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 634
    sget-object v1, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    :cond_1
    move v0, v2

    .line 637
    goto :goto_0
.end method

.method private static E(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 256
    invoke-static {p0}, Lcn/domob/android/a/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 258
    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 261
    :cond_0
    const-string v1, "0"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static F(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 268
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 269
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/a/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :goto_0
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    :goto_1
    invoke-static {p0}, Lcn/domob/android/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :goto_2
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated device id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    :try_start_1
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    sget-object v2, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 284
    const-string v0, "DomobSDK"

    const-string v2, "you must set READ_PHONE_STATE permisson in AndroidManifest.xml"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 285
    :catch_1
    move-exception v0

    .line 286
    sget-object v2, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 293
    :cond_1
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-string v2, "Android ID is null, use -1 instead"

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 294
    const-string v0, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, ""

    .line 91
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turn off list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 74
    sput-object p0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    .line 77
    :cond_0
    return-void
.end method

.method public static a(IZ)Z
    .locals 1

    .prologue
    .line 538
    invoke-static {p0, p1}, Lcn/domob/android/a/b;->a(IZ)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcn/domob/android/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, -0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "ip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string v0, ""

    .line 368
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, ""

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, ""

    .line 117
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d()I
    .locals 2

    .prologue
    .line 498
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "locacc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, -0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->d()I

    move-result v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "appname"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, ""

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()I
    .locals 2

    .prologue
    .line 505
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "locaccmeters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const/4 v0, -0x1

    .line 508
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->c()I

    move-result v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "useragent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, ""

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()I
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "locstatus"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, -0x1

    .line 515
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->e()I

    move-result v0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "ua"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const-string v0, ""

    .line 202
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v0, "_"

    .line 155
    sget-object v0, Lcn/domob/android/a/a;->N:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 167
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :goto_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 180
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-static {p0}, Lcn/domob/android/a/a;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_2

    .line 188
    const-string v2, ","

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/a;->N:Ljava/lang/String;

    .line 199
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/d/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/domob/android/a/a;->N:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_3
    sget-object v0, Lcn/domob/android/a/a;->N:Ljava/lang/String;

    goto/16 :goto_0

    .line 170
    :cond_4
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 520
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "loctime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const-wide/16 v0, -0x1

    .line 523
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "idv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, ""

    .line 237
    :goto_0
    return-object v0

    .line 227
    :cond_0
    sget-object v0, Lcn/domob/android/a/a;->R:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 228
    invoke-static {p0}, Lcn/domob/android/a/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-string v1, "Use emulator id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 230
    const-string v0, "-1,-1,emulator"

    sput-object v0, Lcn/domob/android/a/a;->R:Ljava/lang/String;

    .line 237
    :cond_1
    :goto_1
    sget-object v0, Lcn/domob/android/a/a;->R:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_2
    sget-object v0, Lcn/domob/android/a/a;->L:Lcn/domob/android/ads/d/e;

    const-string v1, "Generate device id"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 233
    invoke-static {p0}, Lcn/domob/android/a/a;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/a;->R:Ljava/lang/String;

    goto :goto_1
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const-string v0, ""

    .line 596
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/domob/android/a/b;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    sget-object v1, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v2, "isemulator"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    sget-object v1, Lcn/domob/android/a/a;->Q:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 245
    invoke-static {p0}, Lcn/domob/android/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/domob/android/a/a;->Q:Ljava/lang/String;

    .line 247
    :cond_2
    sget-object v1, Lcn/domob/android/a/a;->Q:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcn/domob/android/a/a;->E(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 252
    invoke-static {p0}, Lcn/domob/android/a/a;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "-1"

    .line 304
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "andoidid"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "-1"

    .line 311
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "osv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, ""

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "devicemodel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, ""

    .line 337
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "networktype"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const-string v0, ""

    .line 346
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 354
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "networkavailable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->k(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "carrier"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, ""

    .line 390
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, ""

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 416
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "rsd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/high16 v0, -0x40800000

    .line 419
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->n(Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 429
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "csd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/high16 v0, -0x40800000

    .line 432
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->o(Landroid/content/Context;)F

    move-result v0

    goto :goto_0
.end method

.method public static t(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 444
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "rsw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const/4 v0, -0x1

    .line 450
    :goto_0
    return v0

    .line 447
    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/a;->v(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/a/a;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/a/a;->O:I

    .line 450
    sget v0, Lcn/domob/android/a/a;->O:I

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 454
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "rsh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, -0x1

    .line 460
    :goto_0
    return v0

    .line 457
    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/a;->w(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcn/domob/android/a/a;->r(Landroid/content/Context;)F

    move-result v1

    invoke-static {p0}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcn/domob/android/a/a;->P:I

    .line 460
    sget v0, Lcn/domob/android/a/a;->P:I

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 464
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "csw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, -0x1

    .line 467
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->p(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "csh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const/4 v0, -0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->q(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "locinfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string v0, ""

    .line 493
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "ma"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    const-string v0, ""

    .line 551
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 562
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    const-string v1, "ama"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const-string v0, ""

    .line 565
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/domob/android/a/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcn/domob/android/a/a;->M:Ljava/util/ArrayList;

    return-object v0
.end method
