.class public Lcom/google/ads/n;
.super Lcom/google/ads/util/i;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/internal/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/ads/util/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$d",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/internal/ActivationOverlay;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/ak;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/al;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/l;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/l;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<[",
            "Lcom/google/ads/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/AdListener;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/AppEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/SwipeableAdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    .line 96
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "currentAd"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->n:Lcom/google/ads/util/i$c;

    .line 99
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "nextAd"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    .line 105
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "adListener"

    invoke-direct {v0, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    .line 108
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "appEventListener"

    invoke-direct {v0, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/n;->r:Lcom/google/ads/util/i$c;

    .line 112
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "swipeableEventListener"

    invoke-direct {v0, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    .line 134
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "appState"

    invoke-direct {v0, p0, v2, p1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    .line 135
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "ad"

    invoke-direct {v0, p0, v2, p2}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    .line 136
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "adView"

    invoke-direct {v0, p0, v2, p3}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    .line 137
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "adType"

    invoke-direct {v0, p0, v2, p9}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    .line 138
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "adUnitId"

    invoke-direct {v0, p0, v2, p5}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    .line 139
    new-instance v0, Lcom/google/ads/util/i$d;

    const-string v2, "activity"

    invoke-direct {v0, p0, v2, p6}, Lcom/google/ads/util/i$d;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    .line 140
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "interstitialAd"

    invoke-direct {v0, p0, v2, p4}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->k:Lcom/google/ads/util/i$b;

    .line 141
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "bannerContainer"

    invoke-direct {v0, p0, v2, p8}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    .line 142
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "applicationContext"

    invoke-direct {v0, p0, v2, p7}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    .line 144
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v2, "adSizes"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    .line 145
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "adManager"

    invoke-direct {v0, p0, v2, p10}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    .line 148
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Lcom/google/ads/internal/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/ActivationOverlay;-><init>(Lcom/google/ads/n;)V

    .line 151
    :goto_0
    new-instance v2, Lcom/google/ads/util/i$b;

    const-string v3, "activationOverlay"

    invoke-direct {v2, p0, v3, v0}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    .line 157
    if-eqz p6, :cond_0

    .line 158
    const-string v0, "afma-sdk-a-v6.3.1"

    invoke-static {v0, p6}, Lcom/google/ads/ak;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/ads/ak;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/google/ads/al;

    invoke-direct {v1, v0}, Lcom/google/ads/al;-><init>(Lcom/google/ads/ai;)V

    .line 163
    :goto_1
    new-instance v2, Lcom/google/ads/util/i$b;

    const-string v3, "spamSignals"

    invoke-direct {v2, p0, v3, v0}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$b;

    .line 164
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v2, "spamSignalsUtil"

    invoke-direct {v0, p0, v2, v1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$b;

    .line 165
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    return v0
.end method
