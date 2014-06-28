.class Lcom/doodlemobile/gamecenter/ProfileView$5;
.super Landroid/os/Handler;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$5;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 814
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-ne v0, v1, :cond_1

    .line 815
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$5;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$5;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    const-string v1, "dm_commit_facebookid_title"

    const-string v2, "dm_commit_facebookid_text"

    # invokes: Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ProfileView;->access$000(Lcom/doodlemobile/gamecenter/ProfileView;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$5;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # invokes: Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$700(Lcom/doodlemobile/gamecenter/ProfileView;)V

    goto :goto_0
.end method
