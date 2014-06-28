.class Lcom/forthblue/pool/util/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/forthblue/pool/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/forthblue/pool/util/IabHelper$2;->this$0:Lcom/forthblue/pool/util/IabHelper;

    iput-boolean p2, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$listener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 523
    new-instance v3, Lcom/forthblue/pool/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 524
    .local v3, "result":Lcom/forthblue/pool/util/IabResult;
    const/4 v1, 0x0

    .line 526
    .local v1, "inv":Lcom/forthblue/pool/util/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/forthblue/pool/util/IabHelper$2;->this$0:Lcom/forthblue/pool/util/IabHelper;

    iget-boolean v6, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/util/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/forthblue/pool/util/Inventory;
    :try_end_0
    .catch Lcom/forthblue/pool/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 531
    :goto_0
    iget-object v5, p0, Lcom/forthblue/pool/util/IabHelper$2;->this$0:Lcom/forthblue/pool/util/IabHelper;

    invoke-virtual {v5}, Lcom/forthblue/pool/util/IabHelper;->flagEndAsync()V

    .line 533
    move-object v4, v3

    .line 534
    .local v4, "result_f":Lcom/forthblue/pool/util/IabResult;
    move-object v2, v1

    .line 535
    .local v2, "inv_f":Lcom/forthblue/pool/util/Inventory;
    iget-object v5, p0, Lcom/forthblue/pool/util/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/forthblue/pool/util/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/forthblue/pool/util/IabHelper$2$1;-><init>(Lcom/forthblue/pool/util/IabHelper$2;Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void

    .line 527
    .end local v2    # "inv_f":Lcom/forthblue/pool/util/Inventory;
    .end local v4    # "result_f":Lcom/forthblue/pool/util/IabResult;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 528
    .local v0, "ex":Lcom/forthblue/pool/util/IabException;
    invoke-virtual {v0}, Lcom/forthblue/pool/util/IabException;->getResult()Lcom/forthblue/pool/util/IabResult;

    move-result-object v3

    goto :goto_0
.end method
