.class final Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UserInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;,
        Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/doodlemobile/gamecenter/UserInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final FETCH_IMAGE_MSG:I = 0x1


# instance fields
.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

.field private mImageFetcher:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemsMissingImages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field private resource:I

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/UserInfoView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "layout_inflater"

    .line 608
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    .line 609
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 593
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 595
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 610
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 613
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 616
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    invoke-direct {v0, p0, v2}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Lcom/doodlemobile/gamecenter/UserInfoView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mHandler:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 619
    return-void
.end method

.method static synthetic access$1000(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mHandler:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V

    return-void
.end method

.method static synthetic access$900(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private processMissingImageItems(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 826
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 828
    :cond_0
    return-void
.end method

.method private sendFetchImageMessage(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    const-string v2, "sendFetchImageMessage"

    .line 831
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;

    .line 832
    if-nez v0, :cond_1

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 836
    if-eqz v0, :cond_0

    .line 839
    const-string v1, "sendFetchImageMessage"

    const-string v1, "sendFetchImageMessage"

    invoke-static {v2, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;

    .line 841
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    monitor-enter v0

    .line 843
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$800()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 847
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    # setter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$802(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 849
    :cond_2
    const-string v1, "sendFetchImageMessage"

    const-string v2, "Running..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$800()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageDbFetcher;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 851
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearImageFetching()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    monitor-enter v0

    .line 856
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$800()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$800()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 858
    const/4 v1, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$802(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 860
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mHandler:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->clearImageFecthing()V

    .line 863
    return-void

    .line 860
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const-string v4, "layout"

    const-string v7, "id"

    .line 624
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/UserInfo;

    .line 626
    const-string v1, "UserInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind view... :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 631
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_darkblue_title"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 635
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "title"

    invoke-static {v0, v7, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 640
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "dm_games_played"

    invoke-static {v2, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v1

    .line 821
    :goto_0
    return-object v0

    .line 644
    :cond_0
    iget v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    if-ne v1, v9, :cond_1

    .line 646
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_darkblue_title"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 650
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "title"

    invoke-static {v0, v7, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 655
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "dm_friends"

    invoke-static {v2, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v1

    .line 659
    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 660
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_friends_listitem"

    invoke-static {v2, v4, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 665
    const-string v1, "ORDERADAPTER"

    const-string v2, "view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "friend_item"

    invoke-static {v1, v7, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 672
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "friend_image"

    invoke-static {v2, v7, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 678
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v5, "id"

    const-string v5, "friend_name"

    invoke-static {v3, v7, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 684
    iget-object v5, v0, Lcom/doodlemobile/gamecenter/UserInfo;->friendname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v5, "color"

    const-string v6, "dm_frame2"

    invoke-static {v3, v5, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 700
    iget-boolean v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->friendhavavatar:Z

    if-eqz v1, :cond_3

    .line 701
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfo;->friendid:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/DMUtils;->getHeadIconImageUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 703
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;

    invoke-direct {v0, p1, v1}, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;-><init>(ILjava/lang/String;)V

    .line 704
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 706
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 711
    if-eqz v0, :cond_b

    .line 712
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 713
    if-nez v0, :cond_2

    .line 714
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 719
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 720
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mScrollState:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$700(Lcom/doodlemobile/gamecenter/UserInfoView;)I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 725
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    :cond_3
    :goto_2
    move-object v0, v4

    .line 731
    goto/16 :goto_0

    .line 728
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 731
    :cond_5
    iget v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    if-nez v1, :cond_a

    .line 732
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_moregame_listitem"

    invoke-static {v2, v4, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 736
    const-string v1, "ORDERADAPTER"

    const-string v2, "view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "more_game_item"

    invoke-static {v1, v7, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 743
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "moregame_image"

    invoke-static {v2, v7, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 748
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "id"

    const-string v4, "moregame_companyname"

    invoke-static {v3, v7, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 753
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v6, "id"

    const-string v6, "moregame_gamename"

    invoke-static {v4, v7, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 759
    iget-object v6, v0, Lcom/doodlemobile/gamecenter/UserInfo;->gamename:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v4, v0, Lcom/doodlemobile/gamecenter/UserInfo;->companyname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "color"

    const-string v6, "dm_frame1"

    invoke-static {v3, v4, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 767
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Lcom/doodlemobile/gamecenter/UserInfo;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    iget-object v1, v0, Lcom/doodlemobile/gamecenter/UserInfo;->imageuri:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 791
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;

    iget-object v3, v0, Lcom/doodlemobile/gamecenter/UserInfo;->imageuri:Ljava/lang/String;

    invoke-direct {v1, p1, v3}, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;-><init>(ILjava/lang/String;)V

    .line 792
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 794
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/doodlemobile/gamecenter/UserInfo;->imageuri:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 799
    if-eqz v1, :cond_9

    .line 800
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 801
    if-nez v1, :cond_6

    .line 802
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mBitmapCache:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfo;->imageuri:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v0, v1

    .line 806
    :goto_3
    if-nez v0, :cond_7

    .line 807
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 808
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mScrollState:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$700(Lcom/doodlemobile/gamecenter/UserInfoView;)I

    move-result v0

    if-eq v0, v9, :cond_8

    .line 813
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    move-object v0, v5

    goto/16 :goto_0

    .line 816
    :cond_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    move-object v0, v5

    goto/16 :goto_0

    :cond_9
    move-object v0, v8

    goto :goto_3

    :cond_a
    move-object v0, p2

    goto/16 :goto_0

    :cond_b
    move-object v0, v8

    goto/16 :goto_1
.end method
