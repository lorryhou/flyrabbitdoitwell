.class final Lcom/adsmogo/interstitial/h;
.super Ljava/util/TimerTask;


# instance fields
.field private a:I

.field private synthetic b:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;I)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/interstitial/h;->b:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/interstitial/h;->a:I

    iput p2, p0, Lcom/adsmogo/interstitial/h;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/h;->b:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    iget v1, p0, Lcom/adsmogo/interstitial/h;->a:I

    invoke-static {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "full or video Core RotateTimerTask err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
