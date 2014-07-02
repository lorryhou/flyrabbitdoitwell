.class Lcn/domob/android/ads/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/p$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "http://r.domob.cn/a/"

.field private static b:Lcn/domob/android/ads/d/e; = null

.field private static final f:Ljava/lang/String; = "sdk"

.field private static final g:Ljava/lang/String; = "rt"

.field private static final h:Ljava/lang/String; = "ts"

.field private static final i:Ljava/lang/String; = "ua"

.field private static final j:Ljava/lang/String; = "ipb"

.field private static final k:Ljava/lang/String; = "idv"

.field private static final l:Ljava/lang/String; = "v"

.field private static final m:Ljava/lang/String; = "sv"

.field private static final n:Ljava/lang/String; = "l"

.field private static final o:Ljava/lang/String; = "f"

.field private static final p:Ljava/lang/String; = "e"

.field private static final q:Ljava/lang/String; = "pb[identifier]"

.field private static final r:Ljava/lang/String; = "pb[version_name]"

.field private static final s:Ljava/lang/String; = "pb[version_code]"

.field private static final t:Ljava/lang/String; = "network"

.field private static final u:I = 0x4


# instance fields
.field private c:Lcn/domob/android/ads/m;

.field private d:Lcn/domob/android/ads/e;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/p;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/e;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    const-string v1, "New instance of DomobExtraRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/e;

    .line 51
    iput-object p2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v1, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "rt"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/p;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20130726"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20130726"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "sv"

    const-string v2, "030306"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "l"

    invoke-static {}, Lcn/domob/android/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "f"

    const-string v2, "jsonp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "pb[version_name]"

    iget-object v2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "pb[version_code]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/a/a;->b(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "network"

    iget-object v2, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    .line 59
    sget-object v0, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to request ExtraInfo."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcn/domob/android/ads/p;->b()Ljava/lang/String;

    move-result-object v6

    .line 61
    sget-object v0, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtraInfo req string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    const-string v2, "http://r.domob.cn/a/"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/m$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/p;->c:Lcn/domob/android/ads/m;

    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/p;->c:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->b()V

    .line 65
    return-void
.end method

.method public a(Lcn/domob/android/ads/m;)V
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p1}, Lcn/domob/android/ads/m;->e()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    sget-object v1, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExtraInfo resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcn/domob/android/ads/p;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/domob/android/ads/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcn/domob/android/ads/p;->b:Lcn/domob/android/ads/d/e;

    const-string v1, "ExtraInfo respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
