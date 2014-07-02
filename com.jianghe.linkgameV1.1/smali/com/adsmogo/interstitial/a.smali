.class final Lcom/adsmogo/interstitial/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/interstitial/AdsMogoInterstitial;


# direct methods
.method constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/a;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/interstitial/a;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    return-void
.end method
