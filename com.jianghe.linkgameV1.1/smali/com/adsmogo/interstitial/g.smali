.class final Lcom/adsmogo/interstitial/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/interstitial/i;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/interstitial/i;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/interstitial/g;->a:Lcom/adsmogo/interstitial/i;

    iput-object p3, p0, Lcom/adsmogo/interstitial/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/adsmogo/interstitial/j;

    invoke-direct {v0}, Lcom/adsmogo/interstitial/j;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/interstitial/g;->a:Lcom/adsmogo/interstitial/i;

    iget-object v2, p0, Lcom/adsmogo/interstitial/g;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/interstitial/j;->a(Lcom/adsmogo/interstitial/i;Landroid/content/Context;)V

    return-void
.end method
