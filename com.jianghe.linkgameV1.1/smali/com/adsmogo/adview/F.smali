.class final Lcom/adsmogo/adview/F;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final synthetic a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/ShowFullDialog;Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 0

    iput-object p2, p0, Lcom/adsmogo/adview/F;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/F;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/F;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c()V

    :cond_0
    return-void
.end method
