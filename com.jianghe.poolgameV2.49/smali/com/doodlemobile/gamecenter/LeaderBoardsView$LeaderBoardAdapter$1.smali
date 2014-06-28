.class Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;
.super Ljava/lang/Object;
.source "LeaderBoardsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

.field final synthetic val$item:Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->setUser(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    .line 571
    return-void
.end method
