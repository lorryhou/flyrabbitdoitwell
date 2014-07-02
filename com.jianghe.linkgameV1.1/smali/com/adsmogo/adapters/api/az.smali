.class final Lcom/adsmogo/adapters/api/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/az;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/az;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    const-string v1, "/1?"

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/az;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/az;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/az;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->setCloseButtonVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
