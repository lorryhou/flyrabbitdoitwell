.class final Lcom/adsmogo/adview/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/b;)Lcom/adsmogo/adview/AdsMogoInterstitialActivity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    return-object v0
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can not play video"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/interstitial/k;->a()Lcom/adsmogo/interstitial/k;

    invoke-static {}, Lcom/adsmogo/interstitial/k;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onInterstitialVideoSendResult(Z)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onInterstitialVideoSendCloseed()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0, v4}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Lcom/adsmogo/adview/A;)V

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/b;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->finish()V

    new-instance v0, Lcom/adsmogo/adview/c;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/c;-><init>(Lcom/adsmogo/adview/b;)V

    invoke-virtual {v0}, Lcom/adsmogo/adview/c;->start()V

    const/4 v0, 0x1

    return v0
.end method
