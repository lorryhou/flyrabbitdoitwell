.class Lcom/jianghe/blockgame/BlockPro$3;
.super Landroid/os/Handler;
.source "BlockPro.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jianghe/blockgame/BlockPro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jianghe/blockgame/BlockPro;


# direct methods
.method constructor <init>(Lcom/jianghe/blockgame/BlockPro;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jianghe/blockgame/BlockPro$3;->this$0:Lcom/jianghe/blockgame/BlockPro;

    .line 282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/jianghe/blockgame/BlockPro$3;->this$0:Lcom/jianghe/blockgame/BlockPro;

    invoke-virtual {v0}, Lcom/jianghe/blockgame/BlockPro;->AdViewHandler()V

    .line 287
    return-void
.end method
