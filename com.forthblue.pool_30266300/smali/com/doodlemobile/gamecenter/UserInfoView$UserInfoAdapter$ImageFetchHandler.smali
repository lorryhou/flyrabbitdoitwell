.class Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;
.super Landroid/os/Handler;
.source "UserInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFetchHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Lcom/doodlemobile/gamecenter/UserInfoView$1;)V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)V

    return-void
.end method


# virtual methods
.method public clearImageFecthing()V
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->removeMessages(I)V

    .line 1000
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const-string v0, " "

    const-string v4, "ImageFetchHandler"

    .line 931
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 936
    :pswitch_0
    const-string v0, "ImageFetchHandler"

    const-string v0, "handler1"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    .line 938
    if-eqz v0, :cond_0

    .line 942
    const-string v1, "ImageFetchHandler"

    const-string v1, "handler2"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;

    .line 944
    if-eqz v1, :cond_0

    .line 948
    iget-object v3, v1, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 949
    const-string v1, "ImageFetchHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photoUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    if-eqz v3, :cond_0

    .line 954
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$900(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 955
    if-nez v1, :cond_2

    .line 956
    const-string v0, "ImageFetchHandler"

    const-string v0, "photoRef is null "

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    :cond_2
    const-string v2, "ImageFetchHandler"

    const-string v2, "photoRef is not null"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 962
    if-nez v1, :cond_3

    .line 963
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$900(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 970
    :cond_3
    monitor-enter v0

    .line 971
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;

    .line 973
    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 975
    const-string v4, "ImageFetchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentPhotoUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v4, "ImageFetchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photoUrl "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 981
    const-string v2, "ImageFetchHandler"

    const-string v3, "set image"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    new-instance v3, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 990
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->access$1100(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 992
    :cond_4
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
