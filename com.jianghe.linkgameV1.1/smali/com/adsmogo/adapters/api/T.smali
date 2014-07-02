.class final Lcom/adsmogo/adapters/api/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/adview/ShowFullDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdviewurl1()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Ftad;->getAdviewparam2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adsmogo/adapters/api/T;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adsmogo/adview/ShowFullDialog;->showFullAdDialog(Ljava/lang/String;Ljava/lang/String;Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    :cond_0
    return-void
.end method
