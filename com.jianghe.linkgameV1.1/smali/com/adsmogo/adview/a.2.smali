.class final Lcom/adsmogo/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    invoke-static {}, Lcom/adsmogo/interstitial/k;->a()Lcom/adsmogo/interstitial/k;

    invoke-static {}, Lcom/adsmogo/interstitial/k;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v3}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/adview/A;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/adsmogo/model/obj/Ration;->videoend:I

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onInterstitialVideoEndSendResult()V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onInterstitialVideoSendCloseed()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->finish()V

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/adsmogo/adview/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/a;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Lcom/adsmogo/adview/A;)V

    return-void
.end method
