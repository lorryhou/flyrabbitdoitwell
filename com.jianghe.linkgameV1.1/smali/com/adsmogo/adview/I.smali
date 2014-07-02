.class final Lcom/adsmogo/adview/I;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/I;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adview/I;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v1}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/I;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/I;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->closeDialog()V

    :cond_1
    return-void
.end method
