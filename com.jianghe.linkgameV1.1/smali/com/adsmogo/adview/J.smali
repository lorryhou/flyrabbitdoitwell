.class final Lcom/adsmogo/adview/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/ShowFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/J;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/J;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/J;->a:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-static {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->a(Lcom/adsmogo/adview/ShowFullScreenDialog;)Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f()V

    :cond_0
    return-void
.end method
