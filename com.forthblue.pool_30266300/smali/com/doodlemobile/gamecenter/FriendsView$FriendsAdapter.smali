.class final Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FriendsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;,
        Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/doodlemobile/gamecenter/Friends;",
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

.field private mHandler:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

.field private mImageFetcher:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;

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

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/FriendsView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/Friends;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "layout_inflater"

    .line 333
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    .line 334
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 318
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 320
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 335
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 338
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 341
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

    invoke-direct {v0, p0, v2}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Lcom/doodlemobile/gamecenter/FriendsView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mHandler:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 344
    return-void
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mHandler:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private processMissingImageItems(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 465
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method private sendFetchImageMessage(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;

    .line 471
    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 475
    if-eqz v0, :cond_0

    .line 479
    new-instance v1, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;-><init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;

    .line 481
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    monitor-enter v0

    .line 483
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/FriendsView;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 487
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    # setter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FriendsView;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 490
    :cond_2
    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/FriendsView;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageDbFetcher;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 491
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
    .line 496
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    monitor-enter v0

    .line 497
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/FriendsView;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 498
    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/doodlemobile/gamecenter/FriendsView;->access$400()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 499
    const/4 v1, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FriendsView;->access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 501
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mHandler:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$ImageFetchHandler;->clearImageFecthing()V

    .line 504
    return-void

    .line 501
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v4, "layout"

    const-string v6, "id"

    .line 351
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/Friends;

    .line 353
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getFriendid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "---------------fengexian---------------"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_friends_not_play_the_same_game_title"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getFriendid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "---------------nofriendsplaythesamegame---------------"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_friends_listitem_title"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "title"

    invoke-static {v1, v6, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 374
    const-string v1, "No Friends Play The Same Game"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_friends_listitem"

    invoke-static {v2, v4, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 382
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "friend_item"

    invoke-static {v1, v6, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 387
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "friend_image"

    invoke-static {v2, v6, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 393
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v5, "id"

    const-string v5, "friend_name"

    invoke-static {v3, v6, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 399
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getFriendname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v5, "color"

    const-string v6, "dm_frame2"

    invoke-static {v3, v5, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 415
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getFriendid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    new-instance v1, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter$1;-><init>(Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;Lcom/doodlemobile/gamecenter/Friends;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    :cond_2
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getHasavatar()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 428
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/Friends;->getFriendid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/DMUtils;->getHeadIconImageUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;

    invoke-direct {v0, p1, v1}, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;-><init>(ILjava/lang/String;)V

    .line 431
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 433
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 438
    if-eqz v0, :cond_6

    .line 439
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 440
    if-nez v0, :cond_3

    .line 441
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 446
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mScrollState:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->access$300(Lcom/doodlemobile/gamecenter/FriendsView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 452
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 455
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_5
    move-object v0, v4

    goto/16 :goto_0

    :cond_6
    move-object v0, v7

    goto :goto_1
.end method
