.class Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;
.super Ljava/lang/Object;
.source "FriendsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDbFetcher"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field mPhotoUrl:Ljava/lang/String;

.field final synthetic this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    .line 513
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    .line 514
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 532
    if-eqz v0, :cond_3

    :try_start_1
    array-length v1, v0

    if-lez v1, :cond_3

    .line 533
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 539
    :goto_1
    if-eqz v0, :cond_2

    .line 545
    :cond_2
    if-eqz v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$500(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 559
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 560
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 561
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mHandler:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$600(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method
