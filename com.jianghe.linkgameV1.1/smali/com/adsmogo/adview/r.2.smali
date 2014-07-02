.class final Lcom/adsmogo/adview/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/r;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;

    iget-object v0, p0, Lcom/adsmogo/adview/r;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v1, v0}, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;->a()V

    iget-object v0, p0, Lcom/adsmogo/adview/r;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method
