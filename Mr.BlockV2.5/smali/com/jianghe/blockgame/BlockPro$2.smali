.class Lcom/jianghe/blockgame/BlockPro$2;
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
    iput-object p1, p0, Lcom/jianghe/blockgame/BlockPro$2;->this$0:Lcom/jianghe/blockgame/BlockPro;

    .line 259
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/jianghe/blockgame/BlockPro$2;->this$0:Lcom/jianghe/blockgame/BlockPro;

    # getter for: Lcom/jianghe/blockgame/BlockPro;->adViewStatus:Z
    invoke-static {v0}, Lcom/jianghe/blockgame/BlockPro;->access$1(Lcom/jianghe/blockgame/BlockPro;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/jianghe/blockgame/BlockPro;->adView:Lcom/google/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    sget-object v0, Lcom/jianghe/blockgame/BlockPro;->adView:Lcom/google/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method
