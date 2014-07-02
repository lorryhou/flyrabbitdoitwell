.class final Lcom/adsmogo/adapters/api/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/B;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/B;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/B;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->setCloseButtonVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
