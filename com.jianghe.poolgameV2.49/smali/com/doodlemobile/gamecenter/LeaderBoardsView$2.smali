.class Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;
.super Ljava/lang/Object;
.source "LeaderBoardsView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 800
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # setter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopScrollState:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$602(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 805
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$700(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$700(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    move-result-object v0

    # invokes: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$800(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
