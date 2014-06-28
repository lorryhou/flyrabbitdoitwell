.class Lcom/forthblue/pool/util/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/util/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/forthblue/pool/util/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/util/IabHelper$3;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/forthblue/pool/util/IabHelper$3$1;->this$1:Lcom/forthblue/pool/util/IabHelper$3;

    iput-object p2, p0, Lcom/forthblue/pool/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 848
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper$3$1;->this$1:Lcom/forthblue/pool/util/IabHelper$3;

    iget-object v1, v0, Lcom/forthblue/pool/util/IabHelper$3;->val$singleListener:Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper$3$1;->this$1:Lcom/forthblue/pool/util/IabHelper$3;

    iget-object v0, v0, Lcom/forthblue/pool/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/forthblue/pool/util/Purchase;

    iget-object v2, p0, Lcom/forthblue/pool/util/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/forthblue/pool/util/IabHelper$3$1;
    check-cast p0, Lcom/forthblue/pool/util/IabResult;

    invoke-interface {v1, v0, p0}, Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/forthblue/pool/util/Purchase;Lcom/forthblue/pool/util/IabResult;)V

    .line 849
    return-void
.end method
