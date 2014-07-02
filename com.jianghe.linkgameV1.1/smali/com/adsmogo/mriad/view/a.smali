.class final Lcom/adsmogo/mriad/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/mriad/util/AdsMogoPlayerListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/view/AdsMogoActionHandler;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/a;->a:Lcom/adsmogo/mriad/view/AdsMogoActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/a;->a:Lcom/adsmogo/mriad/view/AdsMogoActionHandler;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->finish()V

    return-void
.end method

.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/a;->a:Lcom/adsmogo/mriad/view/AdsMogoActionHandler;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->finish()V

    return-void
.end method

.method public final onPrepared()V
    .locals 0

    return-void
.end method
