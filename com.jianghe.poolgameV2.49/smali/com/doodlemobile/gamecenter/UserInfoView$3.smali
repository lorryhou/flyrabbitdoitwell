.class Lcom/doodlemobile/gamecenter/UserInfoView$3;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView;
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
    .line 1005
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1008
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # setter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$702(Lcom/doodlemobile/gamecenter/UserInfoView;I)I

    .line 1013
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$1200(Lcom/doodlemobile/gamecenter/UserInfoView;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$1200(Lcom/doodlemobile/gamecenter/UserInfoView;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->clearImageFetching()V

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$1200(Lcom/doodlemobile/gamecenter/UserInfoView;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$3;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$1200(Lcom/doodlemobile/gamecenter/UserInfoView;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    move-result-object v0

    # invokes: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$1300(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
