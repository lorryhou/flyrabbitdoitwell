.class final Lcom/adsmogo/interstitial/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Lcom/adsmogo/model/obj/Ration;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/f;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/adsmogo/interstitial/f;->b:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/interstitial/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/interstitial/f;->b:Lcom/adsmogo/model/obj/Ration;

    invoke-static {v0, v1}, Lcom/adsmogo/controller/count/a;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    goto :goto_0
.end method
