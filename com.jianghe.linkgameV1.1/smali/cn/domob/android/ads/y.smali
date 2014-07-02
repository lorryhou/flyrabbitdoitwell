.class Lcn/domob/android/ads/y;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static final A:I = 0x28

.field private static s:Lcn/domob/android/ads/d/e; = null

.field private static final y:Ljava/lang/String; = "domob_close.png"

.field private static final z:I = 0x28


# instance fields
.field protected p:Landroid/view/View;

.field protected q:Z

.field protected r:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Lcn/domob/android/ads/DomobSplashAdListener;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/y;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-boolean v2, p0, Lcn/domob/android/ads/y;->q:Z

    .line 39
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Init SplashAdView."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/e;->a(Z)V

    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/e;->b(Z)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/y;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/D;->setVisibility(I)V

    .line 48
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/y;->b:I

    .line 49
    return-void
.end method

.method static synthetic k()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method private l()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    new-instance v2, Lcn/domob/android/ads/c;

    invoke-direct {v2}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;)Lcn/domob/android/ads/G;

    move-result-object v2

    .line 89
    if-nez v2, :cond_0

    .line 90
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v2, "There is no available cache ad."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    const-string v2, "sp_no_creative"

    invoke-virtual {v0, v7, v2}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    :goto_0
    move v0, v1

    .line 119
    :goto_1
    return v0

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2}, Lcn/domob/android/ads/G;->d()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 93
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v3, "Cached ad expires."

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    invoke-virtual {v2}, Lcn/domob/android/ads/G;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v2

    const-string v3, "sp_expire"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcn/domob/android/ads/G;->a()Ljava/lang/String;

    move-result-object v3

    .line 98
    sget-object v4, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v5, "Cached ad orientation:%s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 100
    iget-object v4, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v4}, Lcn/domob/android/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {v2}, Lcn/domob/android/ads/G;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/domob/android/ads/y;->t:Ljava/lang/String;

    .line 103
    invoke-virtual {v2}, Lcn/domob/android/ads/G;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    .line 104
    new-instance v2, Lcn/domob/android/ads/c;

    invoke-direct {v2}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v3, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/domob/android/ads/y;->t:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/domob/android/ads/y;->v:I

    .line 105
    iget v2, p0, Lcn/domob/android/ads/y;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 106
    sget-object v1, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v2, "All resources of creative is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_2
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v2, "Some resources of creative is not ok."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    iget-object v2, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    invoke-static {v2}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v2

    const-string v3, "sp_res_incomplete"

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_3
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v2, "There is no available cache ad. Orientation wrong."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    const-string v2, "sp_no_creative"

    invoke-virtual {v0, v7, v2}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private n()V
    .locals 13

    .prologue
    const/high16 v12, 0x42200000

    const/4 v11, 0x0

    const/high16 v10, 0x447a0000

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "SplashView already has a parent."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 175
    iget-object v1, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->w()Lcn/domob/android/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->p()Z

    move-result v2

    .line 177
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->q()F

    move-result v3

    .line 178
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->r()F

    move-result v1

    .line 180
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    sget-object v5, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v6, "Creative width:%d, creative height:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcn/domob/android/ads/y;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcn/domob/android/ads/y;->j:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 184
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcn/domob/android/ads/y;->i:I

    iget v7, p0, Lcn/domob/android/ads/y;->j:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget v6, p0, Lcn/domob/android/ads/y;->x:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 187
    invoke-virtual {v4, p0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v2, v12

    float-to-int v2, v2

    .line 191
    iget-object v5, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-static {v5}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v5, v12

    float-to-int v5, v5

    .line 193
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 194
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 195
    iget-object v7, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    const-string v8, "domob_close.png"

    invoke-static {v7, v8}, Lcn/domob/android/ads/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    invoke-virtual {p0, v6, v7}, Lcn/domob/android/ads/y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v2, Lcn/domob/android/ads/y$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/y$1;-><init>(Lcn/domob/android/ads/y;)V

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcn/domob/android/ads/y$2;

    invoke-direct {v5, p0, v6}, Lcn/domob/android/ads/y$2;-><init>(Lcn/domob/android/ads/y;Landroid/widget/ImageButton;)V

    mul-float v6, v3, v10

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    :cond_1
    cmpl-float v2, v3, v11

    if-eqz v2, :cond_2

    .line 217
    sget-object v2, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Min imp time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 218
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcn/domob/android/ads/y$3;

    invoke-direct {v5, p0}, Lcn/domob/android/ads/y$3;-><init>(Lcn/domob/android/ads/y;)V

    mul-float/2addr v3, v10

    float-to-int v3, v3

    int-to-long v6, v3

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    :cond_2
    cmpl-float v2, v1, v11

    if-eqz v2, :cond_3

    .line 231
    sget-object v2, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto close time:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 232
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcn/domob/android/ads/y$4;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/y$4;-><init>(Lcn/domob/android/ads/y;)V

    mul-float/2addr v1, v10

    float-to-int v1, v1

    int-to-long v5, v1

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashPresent()V

    .line 246
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    sget-object v1, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 250
    :cond_5
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Splash cannot find view holder."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 3

    .prologue
    .line 134
    iput p1, p0, Lcn/domob/android/ads/y;->x:I

    .line 135
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set splash top margin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 142
    iput-object p2, p0, Lcn/domob/android/ads/y;->p:Landroid/view/View;

    .line 144
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load cached Ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    .line 147
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 148
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->c(Z)V

    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/y;->u:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)Lcn/domob/android/ads/h;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/ads/y;->v:I

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/h$b;->a(I)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    .line 155
    return-void
.end method

.method a(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    .line 66
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;)V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcn/domob/android/ads/x;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/x;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    .line 62
    return-void
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/ads/y;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 293
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 294
    check-cast v0, Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 297
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 6

    .prologue
    .line 261
    iget-boolean v0, p0, Lcn/domob/android/ads/y;->q:Z

    if-nez v0, :cond_1

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/y;->q:Z

    .line 263
    iget-object v0, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/y;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "f"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/y;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->e()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashDismiss()V

    .line 268
    :cond_0
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Request another Ad when current cached Ad is shown."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Delete old cached ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/y;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/y;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 277
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->requestRefreshAd()V

    .line 279
    :cond_1
    return-void
.end method

.method protected o()Z
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcn/domob/android/ads/y;->b:I

    sget-object v1, Lcn/domob/android/ads/DomobAdView$a;->d:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->invalidate()V

    .line 126
    return-void
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 330
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 3
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 306
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load ad or get ad responce and the ErrorCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcn/domob/android/ads/y;->w:Lcn/domob/android/ads/DomobSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobSplashAdListener;->onSplashLoadFailed()V

    .line 310
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 320
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 315
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/domob/android/ads/y;->c:Landroid/content/Context;

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 301
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Get new splash ad responce."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 325
    return-void
.end method

.method p()Z
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/domob/android/ads/y;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcn/domob/android/ads/y;->s:Lcn/domob/android/ads/d/e;

    const-string v1, "Both splash ad response and it\'s resources are OK."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->requestRefreshAd()V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcn/domob/android/ads/y;->invalidate()V

    .line 159
    invoke-direct {p0}, Lcn/domob/android/ads/y;->n()V

    .line 160
    return-void
.end method
