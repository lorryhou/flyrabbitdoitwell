.class Lcom/forthblue/pool/DoodleHelper$8;
.super Ljava/lang/Object;
.source "DoodleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/DoodleHelper;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/DoodleHelper;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/DoodleHelper;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$8;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$8;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # getter for: Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;
    invoke-static {v0}, Lcom/forthblue/pool/DoodleHelper;->access$000(Lcom/forthblue/pool/DoodleHelper;)Lcom/doodlemobile/gamecenter/PromoteDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$8;->this$0:Lcom/forthblue/pool/DoodleHelper;

    new-instance v1, Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v2, p0, Lcom/forthblue/pool/DoodleHelper$8;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v2, v2, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f090002

    invoke-direct {v1, v2, v3}, Lcom/doodlemobile/gamecenter/PromoteDialog;-><init>(Landroid/content/Context;I)V

    # setter for: Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;
    invoke-static {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->access$002(Lcom/forthblue/pool/DoodleHelper;Lcom/doodlemobile/gamecenter/PromoteDialog;)Lcom/doodlemobile/gamecenter/PromoteDialog;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$8;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # getter for: Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;
    invoke-static {v0}, Lcom/forthblue/pool/DoodleHelper;->access$000(Lcom/forthblue/pool/DoodleHelper;)Lcom/doodlemobile/gamecenter/PromoteDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->show()V

    .line 238
    return-void
.end method
