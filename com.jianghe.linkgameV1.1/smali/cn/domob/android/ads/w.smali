.class public Lcn/domob/android/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/w$c;,
        Lcn/domob/android/ads/w$f;,
        Lcn/domob/android/ads/w$b;,
        Lcn/domob/android/ads/w$a;,
        Lcn/domob/android/ads/w$g;,
        Lcn/domob/android/ads/w$e;,
        Lcn/domob/android/ads/w$d;,
        Lcn/domob/android/ads/w$h;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "phase"

.field private static final B:Ljava/lang/String; = "origin"

.field private static final C:Ljava/lang/String; = "data"

.field private static a:Lcn/domob/android/ads/d/e; = null

.field private static final d:Ljava/lang/String; = "click_report"

.field private static final e:Ljava/lang/String; = "impression_report"

.field private static final f:Ljava/lang/String; = "v"

.field private static final g:Ljava/lang/String; = "sv"

.field private static final h:Ljava/lang/String; = "rt"

.field private static final i:Ljava/lang/String; = "ua"

.field private static final j:Ljava/lang/String; = "ipb"

.field private static final k:Ljava/lang/String; = "ppid"

.field private static final l:Ljava/lang/String; = "idv"

.field private static final m:Ljava/lang/String; = "ts"

.field private static final n:Ljava/lang/String; = "rnd"

.field private static final o:Ljava/lang/String; = "vcode"

.field private static final p:Ljava/lang/String; = "tr"

.field private static final q:Ljava/lang/String; = "type"

.field private static final r:Ljava/lang/String; = "pkg"

.field private static final s:Ljava/lang/String; = "vc"

.field private static final t:Ljava/lang/String; = "vn"

.field private static final u:Ljava/lang/String; = "total"

.field private static final v:Ljava/lang/String; = "failsafe"

.field private static final w:Ljava/lang/String; = "frame"

.field private static final x:Ljava/lang/String; = "sw"

.field private static final y:Ljava/lang/String; = "sh"

.field private static final z:Ljava/lang/String; = "so"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcn/domob/android/ads/w;->c:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 272
    new-instance v0, Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v2, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/android/ads/m$a;)V

    .line 275
    invoke-virtual {v0, p3}, Lcn/domob/android/ads/m;->a(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->b()V

    .line 277
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 290
    :cond_0
    const-string v0, "v"

    const-string v1, "20130726"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v0, "sv"

    const-string v1, "030306"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v0, "idv"

    iget-object v1, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method private a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/w$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Build Report Common Params Error, paramsMap is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v0, ""

    .line 194
    if-eqz p2, :cond_1

    .line 195
    iget-object v0, p2, Lcn/domob/android/ads/w$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcn/domob/android/ads/w$a;->a:Ljava/lang/String;

    .line 196
    :goto_1
    const-string v1, "origin"

    iget-object v2, p2, Lcn/domob/android/ads/w$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2, v0}, Lcn/domob/android/ads/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/o$a;

    move-result-object v3

    .line 203
    const-string v4, "tr"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "ts"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "rnd"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "vcode"

    invoke-virtual {v3}, Lcn/domob/android/ads/o$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "ipb"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "ppid"

    iget-object v1, p0, Lcn/domob/android/ads/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v0, "ua"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/m;)V
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p1}, Lcn/domob/android/ads/m;->f()I

    move-result v0

    .line 299
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 300
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$b;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$b;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Prepare to report:click_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    if-nez p3, :cond_0

    .line 141
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 144
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 145
    invoke-static {p3}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click report url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 148
    const-string v1, "click_report"

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Click report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$f;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$f;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Prepare to report:impression_report"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 157
    invoke-static {p1}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    if-nez p3, :cond_0

    .line 160
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 163
    :cond_0
    invoke-direct {p0, p3, p2}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 164
    const-string v0, "frame"

    iget-object v1, p2, Lcn/domob/android/ads/w$f;->d:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v0, "sw"

    iget v1, p2, Lcn/domob/android/ads/w$f;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "sh"

    iget v1, p2, Lcn/domob/android/ads/w$f;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "so"

    iget-object v1, p0, Lcn/domob/android/ads/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "phase"

    iget-object v1, p2, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-wide v0, p2, Lcn/domob/android/ads/w$f;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "total"

    iget-wide v1, p2, Lcn/domob/android/ads/w$f;->i:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_1
    invoke-static {p3}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 175
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 176
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression report urls:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impression_report-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_2
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Impression report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$h;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/w$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare to report:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 225
    if-nez p5, :cond_0

    .line 226
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 229
    :cond_0
    invoke-direct {p0, p5, p4}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;Lcn/domob/android/ads/w$a;)V

    .line 230
    invoke-direct {p0, p5}, Lcn/domob/android/ads/w;->a(Ljava/util/HashMap;)V

    .line 232
    if-eqz p2, :cond_1

    .line 233
    const-string v0, "rt"

    invoke-virtual {p2}, Lcn/domob/android/ads/w$h;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_1
    if-eqz p3, :cond_2

    .line 237
    const-string v0, "type"

    invoke-virtual {p5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_2
    if-eqz p4, :cond_7

    .line 241
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 242
    const-string v0, "pkg"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->d:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_3
    iget v0, p4, Lcn/domob/android/ads/w$c;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 246
    const-string v0, "vc"

    iget v1, p4, Lcn/domob/android/ads/w$c;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_4
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 250
    const-string v0, "vn"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->f:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_5
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 254
    const-string v0, "failsafe"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->g:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_6
    iget-object v0, p4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 258
    const-string v0, "data"

    iget-object v1, p4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    invoke-virtual {p5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_7
    invoke-static {p5}, Lcn/domob/android/ads/d/d;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 263
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 264
    sget-object v1, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event report urls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0, p1, v0, p3}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_8
    sget-object v0, Lcn/domob/android/ads/w;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Event report URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
