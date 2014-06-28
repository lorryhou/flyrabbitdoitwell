.class Lcom/forthblue/pool/Main$4;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 110
    iput-object p1, p0, Lcom/forthblue/pool/Main$4;->this$0:Lcom/forthblue/pool/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Inventory;)V
    .locals 4
    .param p1, "result"    # Lcom/forthblue/pool/util/IabResult;
    .param p2, "inventory"    # Lcom/forthblue/pool/util/Inventory;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/forthblue/pool/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 115
    sget-object v1, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/forthblue/pool/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/forthblue/pool/Main$4;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;
    invoke-static {v1}, Lcom/forthblue/pool/Main;->access$100(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper;

    move-result-object v1

    sget-object v2, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Lcom/forthblue/pool/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/forthblue/pool/util/Purchase;

    move-result-object v2

    iget-object v3, p0, Lcom/forthblue/pool/Main$4;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mConsumeFinishedListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;
    invoke-static {v3}, Lcom/forthblue/pool/Main;->access$200(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/util/IabHelper;->consumeAsync(Lcom/forthblue/pool/util/Purchase;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
