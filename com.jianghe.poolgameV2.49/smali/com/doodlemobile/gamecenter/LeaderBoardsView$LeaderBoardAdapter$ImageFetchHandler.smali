.class Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;
.super Landroid/os/Handler;
.source "LeaderBoardsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFetchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)V

    return-void
.end method


# virtual methods
.method public clearImageFecthing()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->removeMessages(I)V

    .line 793
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 732
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 735
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 736
    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;

    .line 742
    if-eqz v1, :cond_0

    .line 746
    iget-object v2, v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 748
    if-eqz v2, :cond_0

    .line 754
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$300(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 757
    if-eqz v1, :cond_1

    .line 758
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 766
    :goto_1
    if-nez v3, :cond_2

    .line 770
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$300(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 760
    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_1

    .line 777
    :cond_2
    monitor-enter v0

    .line 778
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;

    .line 780
    iget-object v1, v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 781
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 782
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 783
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$500(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 785
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
