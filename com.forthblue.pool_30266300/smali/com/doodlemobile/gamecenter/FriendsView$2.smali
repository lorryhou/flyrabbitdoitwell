.class Lcom/doodlemobile/gamecenter/FriendsView$2;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 626
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # setter for: Lcom/doodlemobile/gamecenter/FriendsView;->mScrollState:I
    invoke-static {v0, p2}, Lcom/doodlemobile/gamecenter/FriendsView;->access$302(Lcom/doodlemobile/gamecenter/FriendsView;I)I

    .line 634
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->access$800(Lcom/doodlemobile/gamecenter/FriendsView;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->access$800(Lcom/doodlemobile/gamecenter/FriendsView;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->clearImageFetching()V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->access$800(Lcom/doodlemobile/gamecenter/FriendsView;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$2;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->access$800(Lcom/doodlemobile/gamecenter/FriendsView;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    move-result-object v0

    # invokes: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$900(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
