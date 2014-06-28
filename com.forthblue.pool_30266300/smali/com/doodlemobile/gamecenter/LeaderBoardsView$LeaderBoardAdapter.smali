.class final Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LeaderBoardsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LeaderBoardAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;,
        Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;",
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
            "[B>;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;

.field private mImageFetcher:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;

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

.field scrollState:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "layout_inflater"

    .line 495
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    .line 496
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 481
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 497
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 500
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 503
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;

    invoke-direct {v0, p0, v2}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mHandler:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;

    .line 506
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 507
    iput-object p5, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->scrollState:Ljava/lang/Integer;

    .line 508
    return-void
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mHandler:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageFetchHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->processMissingImageItems(Landroid/widget/AbsListView;)V

    return-void
.end method

.method private processMissingImageItems(Landroid/widget/AbsListView;)V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 624
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method private sendFetchImageMessage(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 629
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;

    .line 630
    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 634
    if-eqz v0, :cond_0

    .line 638
    new-instance v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;

    invoke-direct {v1, p0, v0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;

    .line 639
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    monitor-enter v0

    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$200(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    # setter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$202(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    # getter for: Lcom/doodlemobile/gamecenter/LeaderBoardsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->access$200(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mImageFetcher:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$ImageDbFetcher;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 650
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
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v11, "color"

    const-string v7, "id"

    .line 517
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_leaderboard_listitem"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 523
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;

    .line 525
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "leaderboarder_item"

    invoke-static {v1, v7, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 531
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "myscore_headimage"

    invoke-static {v2, v7, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 536
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "id"

    const-string v4, "leaderboarder_nickname"

    invoke-static {v3, v7, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 541
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v6, "id"

    const-string v6, "leaderboarder_score"

    invoke-static {v4, v7, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mRank:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mNickName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-wide v6, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mScore:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v3, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mUserID:Ljava/lang/String;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mUserID:Ljava/lang/String;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mFacebookID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mFacebookID:Ljava/lang/String;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "color"

    const-string v4, "dm_me"

    invoke-static {v3, v11, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 575
    :goto_0
    iget-boolean v1, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->hasAvatar:Z

    if-eqz v1, :cond_6

    .line 576
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mUserID:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/DMUtils;->getLeaderBoardUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;

    invoke-direct {v0, p1, v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;-><init>(ILjava/lang/String;)V

    .line 578
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 580
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 588
    if-eqz v0, :cond_4

    .line 589
    array-length v3, v0

    invoke-static {v0, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    :goto_1
    if-nez v0, :cond_1

    .line 599
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_1
    if-nez v0, :cond_5

    .line 604
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 605
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->scrollState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 610
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    .line 619
    :cond_2
    :goto_2
    return-object v5

    .line 561
    :cond_3
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "color"

    const-string v4, "dm_frame2"

    invoke-static {v3, v11, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 566
    new-instance v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter$1;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    move-object v0, v9

    .line 591
    goto :goto_1

    .line 613
    :cond_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 616
    :cond_6
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
