.class final Lcom/adsmogo/controller/adsmogoconfigsource/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/adsmogoconfigsource/d;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/d;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->a:Lcom/adsmogo/controller/adsmogoconfigsource/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/adsmogo/util/f;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/e;->a:Lcom/adsmogo/controller/adsmogoconfigsource/d;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v0, v1}, Lcom/adsmogo/util/f;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    invoke-virtual {v0}, Lcom/adsmogo/util/f;->a()V

    return-void
.end method
