.class Lcom/doodlemobile/gamecenter/UserInfoView$2;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/UserInfoView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/UserInfoView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$AddFriendTask;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/UserInfoView$AddFriendTask;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;Lcom/doodlemobile/gamecenter/UserInfoView$1;)V

    .line 173
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView$AddFriendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$2;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    const-string v1, "dm_add_friend_title"

    const-string v2, "dm_add_friend_msg"

    # invokes: Lcom/doodlemobile/gamecenter/UserInfoView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$100(Lcom/doodlemobile/gamecenter/UserInfoView;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method
