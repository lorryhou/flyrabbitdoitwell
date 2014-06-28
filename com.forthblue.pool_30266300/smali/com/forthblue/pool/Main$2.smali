.class Lcom/forthblue/pool/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/Main;->createBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/Main;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/Main;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/forthblue/pool/Main$2;->this$0:Lcom/forthblue/pool/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V
    .locals 3
    .param p1, "result"    # Lcom/forthblue/pool/util/IabResult;
    .param p2, "purchase"    # Lcom/forthblue/pool/util/Purchase;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/forthblue/pool/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/forthblue/pool/Main$2;->this$0:Lcom/forthblue/pool/Main;

    const-string v1, "Purchase interrupted. If money charged, reopen the game."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/Main$2;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;
    invoke-static {v0}, Lcom/forthblue/pool/Main;->access$100(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/Main$2;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;
    invoke-static {v1}, Lcom/forthblue/pool/Main;->access$200(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/forthblue/pool/util/IabHelper;->consumeAsync(Lcom/forthblue/pool/util/Purchase;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
