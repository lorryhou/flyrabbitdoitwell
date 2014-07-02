.class public Lcn/domob/android/ads/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/h$a;,
        Lcn/domob/android/ads/h$c;,
        Lcn/domob/android/ads/h$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "click_tracker"

.field public static final B:Ljava/lang/String; = "imp_tracker"

.field public static final C:Ljava/lang/String; = "event_tracker"

.field public static final D:Ljava/lang/String; = "tracker"

.field public static final E:Ljava/lang/String; = "animation"

.field public static final F:Ljava/lang/String; = "o"

.field public static final G:Ljava/lang/String; = "cls_btn"

.field public static final H:Ljava/lang/String; = "imp_min"

.field public static final I:Ljava/lang/String; = "imp_cls"

.field public static final J:Ljava/lang/String; = "expire"

.field public static final K:Ljava/lang/String; = "rc"

.field public static final L:Ljava/lang/String; = "pkg"

.field public static final M:Ljava/lang/String; = "mz_url"

.field public static final N:Ljava/lang/String; = "code"

.field public static final O:Ljava/lang/String; = "text"

.field public static final P:Ljava/lang/String; = "refresh"

.field public static final Q:Ljava/lang/String; = "disable"

.field public static final R:Ljava/lang/String; = "dis_time"

.field public static final S:Ljava/lang/String; = "ors"

.field public static final T:Ljava/lang/String; = "version"

.field public static final U:Ljava/lang/String; = "config"

.field public static final V:Ljava/lang/String; = "sp_timeout"

.field private static W:Lcn/domob/android/ads/d/e; = null

.field public static final a:Ljava/lang/String; = "sid"

.field public static final b:Ljava/lang/String; = "cid"

.field public static final c:Ljava/lang/String; = "ad"

.field public static final d:Ljava/lang/String; = "error"

.field public static final e:Ljava/lang/String; = "control"

.field public static final f:Ljava/lang/String; = "id"

.field public static final g:Ljava/lang/String; = "format"

.field public static final h:Ljava/lang/String; = "width"

.field public static final i:Ljava/lang/String; = "height"

.field public static final j:Ljava/lang/String; = "ct"

.field public static final k:Ljava/lang/String; = "url"

.field public static final l:Ljava/lang/String; = "content"

.field public static final m:Ljava/lang/String; = "base_url"

.field public static final n:Ljava/lang/String; = "expandable"

.field public static final o:Ljava/lang/String; = "render"

.field public static final p:Ljava/lang/String; = "ct"

.field public static final q:Ljava/lang/String; = "url"

.field public static final r:Ljava/lang/String; = "content"

.field public static final s:Ljava/lang/String; = "base_url"

.field public static final t:Ljava/lang/String; = "o"

.field public static final u:Ljava/lang/String; = "preload"

.field public static final v:Ljava/lang/String; = "timeout"

.field public static final w:Ljava/lang/String; = "autoplay"

.field public static final x:Ljava/lang/String; = "cls_btn"

.field public static final y:Ljava/lang/String; = "width"

.field public static final z:Ljava/lang/String; = "height"


# instance fields
.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field private aa:Lcn/domob/android/ads/h$b;

.field private ab:Lcn/domob/android/ads/h$c;

.field private ac:Lcn/domob/android/ads/h$a;

.field private ad:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/h;->W:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/domob/android/ads/h;->ad:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/h;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcn/domob/android/ads/h;

    invoke-direct {v0}, Lcn/domob/android/ads/h;-><init>()V

    .line 96
    iput-object p0, v0, Lcn/domob/android/ads/h;->ad:Landroid/content/Context;

    .line 98
    invoke-direct {v0, p1}, Lcn/domob/android/ads/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcn/domob/android/ads/h;->W:Lcn/domob/android/ads/d/e;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/domob/android/ads/h;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iput-object p1, p0, Lcn/domob/android/ads/h;->X:Ljava/lang/String;

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 117
    const-string v1, "sid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/h;->Y:Ljava/lang/String;

    .line 118
    const-string v1, "cid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/h;->Z:Ljava/lang/String;

    .line 120
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 121
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 122
    const-string v3, "control"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    if-eqz v1, :cond_1

    .line 125
    new-instance v2, Lcn/domob/android/ads/h$b;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/ads/h$b;-><init>(Lcn/domob/android/ads/h;Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcn/domob/android/ads/h;->aa:Lcn/domob/android/ads/h$b;

    .line 132
    :goto_0
    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Lcn/domob/android/ads/h$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/h$a;-><init>(Lcn/domob/android/ads/h;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/h;->ac:Lcn/domob/android/ads/h$a;

    .line 136
    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_1
    return v0

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    new-instance v1, Lcn/domob/android/ads/h$c;

    invoke-direct {v1, p0, v2}, Lcn/domob/android/ads/h$c;-><init>(Lcn/domob/android/ads/h;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/h;->ab:Lcn/domob/android/ads/h$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcn/domob/android/ads/h;->W:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 141
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    :cond_2
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/h;->W:Lcn/domob/android/ads/d/e;

    const-string v2, "There is no ad response or error response."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/h;->X:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/h;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/h;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcn/domob/android/ads/h$b;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcn/domob/android/ads/h;->aa:Lcn/domob/android/ads/h$b;

    return-object v0
.end method

.method public e()Lcn/domob/android/ads/h$c;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/h;->ab:Lcn/domob/android/ads/h$c;

    return-object v0
.end method

.method public f()Lcn/domob/android/ads/h$a;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/h;->ac:Lcn/domob/android/ads/h$a;

    return-object v0
.end method
