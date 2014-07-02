.class public Lcn/domob/android/ads/DomobAdView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobAdView$a;
    }
.end annotation


# static fields
.field public static final INLINE_SIZE_300X250:Ljava/lang/String; = "300x250"

.field public static final INLINE_SIZE_320X50:Ljava/lang/String; = "320x50"

.field public static final INLINE_SIZE_600X500:Ljava/lang/String; = "600x500"

.field public static final INLINE_SIZE_600X94:Ljava/lang/String; = "600x94"

.field public static final INLINE_SIZE_728X90:Ljava/lang/String; = "728x90"

.field public static final INLINE_SIZE_FLEXIBLE:Ljava/lang/String; = "FLEXIBLE_BANNER"

.field private static p:Lcn/domob/android/ads/d/e; = null

.field private static final q:Ljava/lang/String; = "0x90"

.field private static final r:Ljava/lang/String; = "0x50"


# instance fields
.field protected a:Lcn/domob/android/ads/e;

.field protected b:I

.field protected c:Landroid/content/Context;

.field protected d:Z

.field protected e:Z

.field protected f:Lcn/domob/android/ads/D;

.field protected g:Lcn/domob/android/ads/j;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:I

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Lcn/domob/android/ads/DomobAdListener;

.field protected o:Lcn/domob/android/ads/DomobAdEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    const-string v4, "320x50"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    .line 33
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 35
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 39
    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 40
    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->j:I

    .line 41
    iput-boolean v1, p0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 42
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->l:Z

    .line 43
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->m:Z

    .line 113
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/d/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " built at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/ads/d/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    .line 117
    new-instance v0, Lcn/domob/android/ads/D;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/D;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    .line 120
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/D;->setVisibility(I)V

    .line 121
    invoke-virtual {p0, p2, p3}, Lcn/domob/android/ads/DomobAdView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lcn/domob/android/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;)V

    .line 125
    if-eqz p4, :cond_2

    .line 126
    const-string v0, "FLEXIBLE_BANNER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    invoke-static {p1}, Lcn/domob/android/a/a;->C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "0x90"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    .line 140
    :goto_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->b:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    .line 141
    return-void

    .line 130
    :cond_0
    const-string v0, "0x50"

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_1
    iput-object p4, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_2
    iput-object v3, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/e;->a(Z)V

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v6}, Lcn/domob/android/ads/e;->b(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic k()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected a(II)V
    .locals 0

    .prologue
    .line 259
    iput p1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 260
    iput p2, p0, Lcn/domob/android/ads/DomobAdView;->j:I

    .line 261
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;)V
    .locals 6

    .prologue
    .line 369
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {p1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 370
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Switch AD with/without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 292
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/j;

    .line 293
    invoke-virtual {p1}, Lcn/domob/android/ads/j;->b()Landroid/view/View;

    move-result-object v1

    .line 296
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/ads/DomobAdView$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcn/domob/android/ads/DomobAdView$1;-><init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/j;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    invoke-virtual {p0, p1}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;)V

    .line 361
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->y()V

    .line 362
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcn/domob/android/ads/e;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/e;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    .line 149
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    return v0
.end method

.method public clean()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->b()V

    .line 510
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v2, "Clean DomobAdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v1}, Lcn/domob/android/ads/D;->getChildCount()I

    move-result v2

    .line 512
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    move v1, v0

    .line 513
    :goto_0
    if-ge v1, v2, :cond_2

    .line 515
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 517
    if-eqz v0, :cond_1

    .line 518
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/D;->removeView(Landroid/view/View;)V

    .line 519
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 513
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 523
    :cond_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 530
    :cond_2
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcn/domob/android/ads/DomobAdView;->b:I

    return v0
.end method

.method protected e()Lcn/domob/android/ads/DomobAdListener;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    return-object v0
.end method

.method protected f()Lcn/domob/android/ads/DomobAdEventListener;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    return-object v0
.end method

.method protected g()Lcn/domob/android/ads/j;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->g:Lcn/domob/android/ads/j;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected i()Z
    .locals 3

    .prologue
    .line 266
    const/4 v2, 0x1

    .line 267
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 268
    :goto_0
    if-eqz v1, :cond_2

    .line 270
    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v2

    .line 279
    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    .line 273
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    .line 275
    goto :goto_1

    .line 277
    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 374
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 494
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 496
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->c(Z)V

    .line 497
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->h(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p2}, Lcn/domob/android/ads/e;->i(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->B()V

    .line 502
    :goto_0
    return-void

    .line 501
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "mAdController is not initialized!"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 181
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Start to load AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcn/domob/android/ads/DomobAdView;->l()V

    .line 184
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 189
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->b()V

    .line 191
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v2, "Clean DomobAdView."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v1}, Lcn/domob/android/ads/D;->getChildCount()I

    move-result v2

    .line 193
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WebView to DESTROY."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    move v1, v0

    .line 194
    :goto_0
    if-ge v1, v2, :cond_2

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 198
    if-eqz v0, :cond_1

    .line 199
    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/D;->removeView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    const-string v3, "WebView has already been destroyed."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    sget-object v1, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 215
    :goto_2
    return-void

    .line 209
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 154
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 155
    iput-boolean p1, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    .line 157
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 158
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->h()V

    goto :goto_0

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    if-nez v0, :cond_0

    .line 165
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->c()V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 173
    sget-object v0, Lcn/domob/android/ads/DomobAdView;->p:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 174
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobAdView;->d:Z

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public orientationChanged()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    const-string v1, "0x50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->h:Ljava/lang/String;

    const-string v1, "0x90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->t(Landroid/content/Context;)I

    move-result v0

    .line 543
    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    if-eq v1, v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->onDetachedFromWindow()V

    .line 545
    iput v0, p0, Lcn/domob/android/ads/DomobAdView;->i:I

    .line 546
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 549
    :cond_1
    return-void
.end method

.method public requestAdForAggregationPlatform()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 482
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->b(Z)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 486
    return-void
.end method

.method public requestRefreshAd()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->x()V

    .line 474
    :cond_0
    return-void
.end method

.method public setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V
    .locals 0
    .param p1, "eventListener"    # Lcn/domob/android/ads/DomobAdEventListener;

    .prologue
    .line 462
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    .line 463
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->b(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setOnAdListener(Lcn/domob/android/ads/DomobAdListener;)V
    .locals 0
    .param p1, "adListener"    # Lcn/domob/android/ads/DomobAdListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    .line 453
    return-void
.end method

.method public setRefreshable(Z)V
    .locals 1
    .param p1, "refreshable"    # Z

    .prologue
    .line 441
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 444
    :cond_0
    return-void
.end method

.method public setSpots(Ljava/lang/String;)V
    .locals 1
    .param p1, "spot"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->f(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 422
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->e(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->d(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/e;->c(Ljava/lang/String;)V

    .line 433
    return-void
.end method
