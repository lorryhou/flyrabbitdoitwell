.class Lcn/domob/android/ads/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/g$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "pb[name]"

.field private static final B:Ljava/lang/String; = "pb[version]"

.field private static final C:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final D:Ljava/lang/String; = "d[coord]"

.field private static final E:Ljava/lang/String; = "d[coord_acc]"

.field private static final F:Ljava/lang/String; = "d[coord_status]"

.field private static final G:Ljava/lang/String; = "d[coord_accuracy]"

.field private static final H:Ljava/lang/String; = "d[pc]"

.field private static final I:Ljava/lang/String; = "d[dob]"

.field private static final J:Ljava/lang/String; = "d[gender]"

.field private static final K:Ljava/lang/String; = "spot"

.field private static final L:Ljava/lang/String; = "network"

.field private static final M:Ljava/lang/String; = "lpkg"

.field private static final N:Ljava/lang/String; = "or"

.field private static final O:Ljava/lang/String; = "orv"

.field private static final P:Ljava/lang/String; = "dma"

.field private static final Q:Ljava/lang/String; = "ama"

.field private static final R:Ljava/lang/String; = "lac"

.field private static final S:Ljava/lang/String; = "cell"

.field private static final T:Ljava/lang/String; = "mcc"

.field private static final U:Ljava/lang/String; = "mnc"

.field private static final V:Ljava/lang/String; = "ar"

.field private static final W:Ljava/lang/String; = "ppid"

.field private static final X:Ljava/lang/String; = "scan"

.field protected static final a:I = 0x1

.field private static b:Lcn/domob/android/ads/d/e; = null

.field private static final f:Ljava/lang/String; = "sdk"

.field private static final g:Ljava/lang/String; = "rt"

.field private static final h:Ljava/lang/String; = "pt"

.field private static final i:Ljava/lang/String; = "ts"

.field private static final j:Ljava/lang/String; = "ua"

.field private static final k:Ljava/lang/String; = "ipb"

.field private static final l:Ljava/lang/String; = "idv"

.field private static final m:Ljava/lang/String; = "v"

.field private static final n:Ljava/lang/String; = "sv"

.field private static final o:Ljava/lang/String; = "l"

.field private static final p:Ljava/lang/String; = "f"

.field private static final q:Ljava/lang/String; = "e"

.field private static final r:Ljava/lang/String; = "cid"

.field private static final s:Ljava/lang/String; = "dim"

.field private static final t:Ljava/lang/String; = "so"

.field private static final u:Ljava/lang/String; = "sw"

.field private static final v:Ljava/lang/String; = "sh"

.field private static final w:Ljava/lang/String; = "sd"

.field private static final x:Ljava/lang/String; = "c"

.field private static final y:Ljava/lang/String; = "k"

.field private static final z:Ljava/lang/String; = "pb[identifier]"


# instance fields
.field private c:Lcn/domob/android/ads/m;

.field private d:Lcn/domob/android/ads/e;

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/e;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    const-string v1, "New instance of DomobAdRequest."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    .line 80
    invoke-virtual {p1}, Lcn/domob/android/ads/e;->s()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 97
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v0, "sdk"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "ua"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "ipb"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "ppid"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "idv"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "20130726"

    aput-object v4, v3, v7

    const-string v4, "android"

    aput-object v4, v3, v6

    const-string v4, "20130726"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "sv"

    const-string v2, "030306"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "l"

    invoke-static {}, Lcn/domob/android/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "f"

    const-string v2, "jsonp"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "cid"

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->l()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "pt"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "dim"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    const-string v0, "so"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "sw"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->t(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "sh"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "sd"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "gif"

    aput-object v3, v2, v7

    const-string v3, "ltx"

    aput-object v3, v2, v6

    const-string v3, "la"

    aput-object v3, v2, v8

    const-string v3, "hv"

    aput-object v3, v2, v9

    const-string v3, "expd"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    const-string v4, "iad"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "spi"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "mraid1"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "wvl"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "tpup"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "gd"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->D(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",vib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_2
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "pb[name]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "pb[version]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v0, "network"

    iget-object v2, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "ar"

    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->f()Z

    move-result v0

    if-ne v0, v6, :cond_e

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 151
    const-string v0, "k"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_f

    .line 157
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/android/a/a;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "d[coord]"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "d[coord_acc]"

    invoke-static {}, Lcn/domob/android/a/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v0, "d[coord_accuracy]"

    invoke-static {}, Lcn/domob/android/a/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->B(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    sget-object v2, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    const-string v3, "Base info: cid=%s, lac=%s, mcc=%s, mnc=%s"

    new-array v4, v5, [Ljava/lang/Object;

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 167
    const-string v2, "cell"

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v2, "lac"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "mcc"

    aget-object v3, v0, v8

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v2, "mnc"

    aget-object v0, v0, v9

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 173
    const-string v0, "d[pc]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 177
    const-string v0, "d[dob]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 181
    const-string v0, "d[gender]"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 185
    const-string v0, "spot"

    iget-object v2, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {v2}, Lcn/domob/android/ads/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_7
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/f;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 189
    const-string v0, "lpkg"

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/f;->d(Ljava/lang/String;)V

    .line 192
    :cond_8
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/f;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 193
    const-string v0, "or"

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_9
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/f;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 196
    const-string v0, "orv"

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_a
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_b

    .line 201
    sget-object v2, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 202
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_b
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_c

    .line 206
    sget-object v2, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 207
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_c
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 212
    sget-object v2, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaned AP mac list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 213
    const-string v2, "scan"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_d
    invoke-static {v1}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_e
    const-string v0, "0"

    goto/16 :goto_0

    .line 162
    :cond_f
    const-string v0, "d[coord_status]"

    invoke-static {}, Lcn/domob/android/a/a;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    .line 88
    sget-object v0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Lcn/domob/android/ads/g;->b()Ljava/lang/String;

    move-result-object v6

    .line 90
    sget-object v0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad req string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/m$a;)V

    iput-object v0, p0, Lcn/domob/android/ads/g;->c:Lcn/domob/android/ads/m;

    .line 93
    iget-object v0, p0, Lcn/domob/android/ads/g;->c:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->b()V

    .line 94
    return-void
.end method

.method public a(Lcn/domob/android/ads/m;)V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p1}, Lcn/domob/android/ads/m;->e()Ljava/lang/String;

    move-result-object v1

    .line 221
    const/4 v0, 0x0

    .line 223
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    sget-object v0, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcn/domob/android/ads/g;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v0

    .line 230
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/g;->d:Lcn/domob/android/ads/e;

    invoke-virtual {p1}, Lcn/domob/android/ads/m;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    .line 231
    return-void

    .line 227
    :cond_0
    sget-object v1, Lcn/domob/android/ads/g;->b:Lcn/domob/android/ads/d/e;

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
