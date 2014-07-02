.class final Lcom/adsmogo/splash/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/AdsMogoSplash;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/AdsMogoSplash;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/b;->a:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/splash/b;->a:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    return-void
.end method
