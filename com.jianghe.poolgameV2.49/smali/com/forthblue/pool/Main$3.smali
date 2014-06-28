.class Lcom/forthblue/pool/Main$3;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;


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
    .line 88
    iput-object p1, p0, Lcom/forthblue/pool/Main$3;->this$0:Lcom/forthblue/pool/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/forthblue/pool/util/Purchase;Lcom/forthblue/pool/util/IabResult;)V
    .locals 7
    .param p1, "purchase"    # Lcom/forthblue/pool/util/Purchase;
    .param p2, "result"    # Lcom/forthblue/pool/util/IabResult;

    .prologue
    const/4 v6, 0x1

    .line 90
    invoke-virtual {p2}, Lcom/forthblue/pool/util/IabResult;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    iget-object v4, p0, Lcom/forthblue/pool/Main$3;->this$0:Lcom/forthblue/pool/Main;

    const-string v5, "Purchase successful."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 92
    invoke-virtual {p1}, Lcom/forthblue/pool/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "purchaseSku":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 95
    sget-object v4, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/forthblue/pool/Main$3;->this$0:Lcom/forthblue/pool/Main;

    invoke-virtual {v4}, Lcom/forthblue/pool/Main;->loadCount()J

    move-result-wide v2

    .line 97
    .local v2, "total":J
    sget-object v4, Lcom/forthblue/pool/Main;->COUNT:[I

    aget v4, v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 98
    iget-object v4, p0, Lcom/forthblue/pool/Main$3;->this$0:Lcom/forthblue/pool/Main;

    invoke-virtual {v4, v2, v3}, Lcom/forthblue/pool/Main;->saveCount(J)V

    .line 106
    .end local v0    # "i":I
    .end local v1    # "purchaseSku":Ljava/lang/String;
    .end local v2    # "total":J
    :cond_0
    :goto_1
    return-void

    .line 94
    .restart local v0    # "i":I
    .restart local v1    # "purchaseSku":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    .end local v1    # "purchaseSku":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/forthblue/pool/Main$3;->this$0:Lcom/forthblue/pool/Main;

    const-string v5, "Error Purchasing. If money charged, reopen the game."

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
