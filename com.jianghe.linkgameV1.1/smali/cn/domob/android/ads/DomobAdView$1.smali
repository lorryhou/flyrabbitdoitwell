.class final Lcn/domob/android/ads/DomobAdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/j;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/view/animation/AnimationSet;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcn/domob/android/ads/j;

.field final synthetic d:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdView;[Landroid/view/animation/AnimationSet;Landroid/view/View;Lcn/domob/android/ads/j;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Landroid/view/View;

    iput-object p4, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 299
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 300
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is not null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 302
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v1, v1, Lcn/domob/android/ads/DomobAdView;->j:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_4

    .line 309
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Show ad with animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    aget-object v0, v0, v5

    .line 312
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->a:[Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 313
    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, v2, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/D;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/D;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 322
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/D;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v4, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v4, v4, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-boolean v0, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    if-eqz v0, :cond_5

    .line 328
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iput-boolean v5, v0, Lcn/domob/android/ads/DomobAdView;->k:Z

    .line 334
    :goto_2
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/domob/android/ads/a;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v5}, Lcn/domob/android/ads/D;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/a;

    .line 337
    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, v1, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/D;->removeView(Landroid/view/View;)V

    .line 338
    invoke-virtual {v0}, Lcn/domob/android/ads/a;->destroy()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->c:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->d()V

    .line 347
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->a:Lcn/domob/android/ads/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/e;->a(J)V

    .line 350
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->n:Lcn/domob/android/ads/DomobAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onReceivedFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->o:Lcn/domob/android/ads/DomobAdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    .line 357
    :cond_2
    return-void

    .line 304
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "AdView\'s layoutParams is null."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v2, v2, Lcn/domob/android/ads/DomobAdView;->i:I

    iget-object v3, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget v3, v3, Lcn/domob/android/ads/DomobAdView;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/D;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 316
    :cond_4
    invoke-static {}, Lcn/domob/android/ads/DomobAdView;->k()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Show ad without animation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/D;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 318
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0, v4}, Lcn/domob/android/ads/D;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 330
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$1;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v0, v0, Lcn/domob/android/ads/DomobAdView;->f:Lcn/domob/android/ads/D;

    invoke-virtual {v0}, Lcn/domob/android/ads/D;->showNext()V

    goto/16 :goto_2
.end method
