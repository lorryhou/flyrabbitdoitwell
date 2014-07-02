.class final Lcom/adsmogo/adview/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->h(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a()V

    invoke-static {}, Lcom/adsmogo/interstitial/k;->a()Lcom/adsmogo/interstitial/k;

    invoke-static {}, Lcom/adsmogo/interstitial/k;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onInterstitialVideoSendResult(Z)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/d;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V

    :cond_1
    return-void
.end method
