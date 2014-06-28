.class Lcom/doodlemobile/gamecenter/FriendsView$1;
.super Landroid/os/Handler;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/FriendsView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$1;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$1;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->resetScreen()V

    .line 274
    return-void
.end method
