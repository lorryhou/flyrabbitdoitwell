.class final Lcom/adsmogo/adapters/api/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adsmogo/adview/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/adview/A;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/av;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f()V

    return-void
.end method
