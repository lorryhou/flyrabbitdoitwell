.class Lcom/Wuzla/game/Block_AD/BlockPro$1;
.super Landroid/os/Handler;
.source "BlockPro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Wuzla/game/Block_AD/BlockPro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Wuzla/game/Block_AD/BlockPro;


# direct methods
.method constructor <init>(Lcom/Wuzla/game/Block_AD/BlockPro;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Wuzla/game/Block_AD/BlockPro$1;->this$0:Lcom/Wuzla/game/Block_AD/BlockPro;

    .line 128
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/BlockPro$1;->this$0:Lcom/Wuzla/game/Block_AD/BlockPro;

    # invokes: Lcom/Wuzla/game/Block_AD/BlockPro;->moreGames()V
    invoke-static {v0}, Lcom/Wuzla/game/Block_AD/BlockPro;->access$0(Lcom/Wuzla/game/Block_AD/BlockPro;)V

    .line 133
    return-void
.end method
