.class Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;
.super Ljava/lang/Object;
.source "LeaderBoardsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDbFetcher"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field mPhotoUrl:Ljava/lang/String;

.field final synthetic this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    .line 668
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    .line 669
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 690
    if-eqz v0, :cond_3

    :try_start_1
    array-length v1, v0

    if-lez v1, :cond_3

    .line 691
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 697
    :goto_1
    if-eqz v0, :cond_2

    .line 703
    :cond_2
    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$300(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 719
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 720
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 721
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mHandler:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->access$400(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 694
    :goto_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v0, v1

    move-object v1, v3

    goto :goto_1

    .line 693
    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method
