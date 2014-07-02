.class final Lcom/adsmogo/adapters/api/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/as;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    return-object v0
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can not play video"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0, v2, v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/adview/A;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/as;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0, v4}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/adview/A;)V

    :cond_1
    new-instance v0, Lcom/adsmogo/adapters/api/at;

    invoke-direct {v0, p0}, Lcom/adsmogo/adapters/api/at;-><init>(Lcom/adsmogo/adapters/api/as;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/at;->start()V

    const/4 v0, 0x1

    return v0
.end method
