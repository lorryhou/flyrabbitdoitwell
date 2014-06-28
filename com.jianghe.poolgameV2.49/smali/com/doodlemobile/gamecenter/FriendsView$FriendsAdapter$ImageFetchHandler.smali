.class Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;
.super Landroid/os/Handler;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFetchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Lcom/doodlemobile/gamecenter/FriendsView$1;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)V

    return-void
.end method


# virtual methods
.method public clearImageFecthing()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->removeMessages(I)V

    .line 621
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 575
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 576
    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;

    .line 582
    if-eqz v1, :cond_0

    .line 586
    iget-object v3, v1, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 588
    if-eqz v3, :cond_0

    .line 592
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$500(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 593
    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 597
    if-nez v1, :cond_1

    .line 598
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$500(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 605
    :cond_1
    monitor-enter v0

    .line 606
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;

    .line 608
    iget-object v2, v2, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->access$700(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 613
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 572
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
