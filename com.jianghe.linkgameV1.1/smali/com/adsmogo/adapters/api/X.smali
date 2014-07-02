.class final Lcom/adsmogo/adapters/api/X;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/W;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/W;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/W;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/W;->a(Lcom/adsmogo/adapters/api/W;)Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/W;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/W;->a(Lcom/adsmogo/adapters/api/W;)Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/X;->a:Lcom/adsmogo/adapters/api/W;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/W;->a(Lcom/adsmogo/adapters/api/W;)Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b()V

    return-void
.end method
