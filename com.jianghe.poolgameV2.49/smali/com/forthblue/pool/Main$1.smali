.class Lcom/forthblue/pool/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;


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
    .line 67
    iput-object p1, p0, Lcom/forthblue/pool/Main$1;->this$0:Lcom/forthblue/pool/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/forthblue/pool/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/forthblue/pool/util/IabResult;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/forthblue/pool/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/Main$1;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mHelper:Lcom/forthblue/pool/util/IabHelper;
    invoke-static {v0}, Lcom/forthblue/pool/Main;->access$100(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/Main$1;->this$0:Lcom/forthblue/pool/Main;

    # getter for: Lcom/forthblue/pool/Main;->mGotInventoryListener:Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;
    invoke-static {v1}, Lcom/forthblue/pool/Main;->access$000(Lcom/forthblue/pool/Main;)Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->queryInventoryAsync(Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
