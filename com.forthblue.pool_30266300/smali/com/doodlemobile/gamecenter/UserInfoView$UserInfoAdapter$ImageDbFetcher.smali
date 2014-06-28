.class Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageDbFetcher"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field mPhotoUrl:Ljava/lang/String;

.field final synthetic this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    .line 872
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    .line 873
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "ImageDbFetcher"

    .line 877
    const-string v0, "sendFetchImageMessage"

    const-string v1, "run() ....................."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    const-string v0, "ImageDbFetcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    if-eqz v0, :cond_3

    :try_start_1
    array-length v1, v0

    if-lez v1, :cond_3

    .line 895
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 901
    :goto_1
    if-eqz v0, :cond_2

    .line 902
    const-string v2, "ImageDbFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "b length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_2
    if-eqz v1, :cond_0

    .line 911
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$900(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mPhotoUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    const-string v0, "ImageDbFetcher"

    const-string v0, "Message message"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 921
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 922
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->mImageView:Landroid/widget/ImageView;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 923
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mHandler:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$1000(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 897
    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_3
    move-object v1, v3

    goto :goto_1

    .line 904
    :cond_2
    const-string v0, "ImageDbFetcher"

    const-string v0, "b is null"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 897
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_1
.end method
