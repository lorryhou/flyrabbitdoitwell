.class Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

.field final synthetic val$item:Lcom/doodlemobile/gamecenter/Friends;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Lcom/doodlemobile/gamecenter/Friends;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/Friends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/Friends;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/Friends;->getFriendid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->setUser(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    .line 423
    return-void
.end method
