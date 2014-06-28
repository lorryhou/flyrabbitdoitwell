.class public Lcom/doodlemobile/gamecenter/LeaderBoardsView;
.super Lcom/doodlemobile/gamecenter/Scene;
.source "LeaderBoardsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;,
        Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;,
        Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;
    }
.end annotation


# static fields
.field public static final HANDLER_QUERY_SCORE:I = 0x30d41


# instance fields
.field private m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

.field m24ListView:Landroid/widget/ListView;

.field m24Scores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;",
            ">;"
        }
    .end annotation
.end field

.field private m24ScrollState:Ljava/lang/Integer;

.field mAllgames:Lcom/doodlemobile/gamecenter/model/allgames/AllGames;

.field mGetScoreTask:Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

.field public mHandler:Landroid/os/Handler;

.field public mHasThisScore:Z

.field mHeadIcon:Landroid/widget/ImageView;

.field mHeadIconImage:Landroid/graphics/Bitmap;

.field mLeaderScores:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;",
            ">;"
        }
    .end annotation
.end field

.field mMeRankView:Landroid/widget/TextView;

.field mMeThisScoreView:Landroid/widget/TextView;

.field mMeTopScoreView:Landroid/widget/TextView;

.field private mMescrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field public mThisScore:I

.field private mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

.field mTopListView:Landroid/widget/ListView;

.field private mTopScrollState:Ljava/lang/Integer;

.field private mTopscrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mUserNameView:Landroid/widget/TextView;

.field mView:Landroid/widget/RelativeLayout;

.field private sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v9, "dm_top_tab_indicator"

    const-string v8, "layout"

    const-string v6, "id"

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    .line 47
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopListView:Landroid/widget/ListView;

    .line 48
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ListView:Landroid/widget/ListView;

    .line 50
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mAllgames:Lcom/doodlemobile/gamecenter/model/allgames/AllGames;

    .line 52
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 53
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ScrollState:Ljava/lang/Integer;

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopScrollState:Ljava/lang/Integer;

    .line 56
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 57
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    .line 58
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mUserNameView:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeRankView:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeTopScoreView:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    .line 70
    iput-boolean v7, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHasThisScore:Z

    .line 72
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mGetScoreTask:Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

    .line 450
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopscrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 819
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$3;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMescrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 82
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 84
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_leaderboards_view"

    invoke-static {v1, v8, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    .line 92
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "leaderboard_top"

    invoke-static {v2, v6, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopListView:Landroid/widget/ListView;

    .line 97
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopscrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "leaderboard_me"

    invoke-static {v2, v6, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ListView:Landroid/widget/ListView;

    .line 103
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMescrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "tabhost1"

    invoke-static {v2, v6, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/doodlemobile/gamecenter/DMTabHost;

    .line 111
    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->setup()V

    .line 113
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 116
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "layout"

    const-string v4, "dm_top_tab_indicator"

    invoke-static {v3, v8, v9}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->getTabWidget()Lcom/doodlemobile/gamecenter/DMTabWidget;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 126
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "id"

    const-string v4, "title"

    invoke-static {v2, v6, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    const-string v4, "Global"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const-string v2, "tab_1"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/DMTabHost;->newTabSpec(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v2

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v5, "id"

    const-string v5, "leaderboard_top"

    invoke-static {v4, v6, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->setContent(I)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->setIndicator(Landroid/view/View;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/DMTabHost;->addTab(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)V

    .line 139
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_top_tab_indicator"

    invoke-static {v2, v8, v9}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->getTabWidget()Lcom/doodlemobile/gamecenter/DMTabWidget;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 148
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "title"

    invoke-static {v0, v6, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    const-string v3, "24 Hours"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const-string v0, "tab_2"

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->newTabSpec(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v0

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "id"

    const-string v4, "leaderboard_me"

    invoke-static {v3, v6, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->setContent(I)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->setIndicator(Landroid/view/View;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->addTab(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)V

    .line 161
    invoke-virtual {v1, v7}, Lcom/doodlemobile/gamecenter/DMTabHost;->setCurrentTab(I)V

    .line 176
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->refresh()V

    .line 178
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_leaderboardIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->setTitle(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V

    .line 47
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopListView:Landroid/widget/ListView;

    .line 48
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ListView:Landroid/widget/ListView;

    .line 50
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mAllgames:Lcom/doodlemobile/gamecenter/model/allgames/AllGames;

    .line 52
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 53
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ScrollState:Ljava/lang/Integer;

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopScrollState:Ljava/lang/Integer;

    .line 56
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 57
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    .line 58
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mUserNameView:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeRankView:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeTopScoreView:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mView:Landroid/widget/RelativeLayout;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    .line 70
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHasThisScore:Z

    .line 72
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mGetScoreTask:Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

    .line 450
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHandler:Landroid/os/Handler;

    .line 797
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$2;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopscrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 819
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$3;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMescrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 77
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 78
    return-void
.end method

.method static synthetic access$1000(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopScrollState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ScrollState:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public onInflate()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onSetScene()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_leaderboardIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->setTitle(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->resume()V

    .line 195
    return-void
.end method

.method public parseScore(Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 371
    new-instance v2, Ljava/lang/String;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/simple/JSONObject;

    .line 382
    :try_start_0
    const-string v2, "global-rank"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "global-rank"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 385
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setGlobalRank(I)V

    .line 392
    :cond_0
    const-string v2, "me-top-score"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const-string v2, "me-top-score"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 395
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setMeTopScore(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_1
    :goto_0
    const-string v2, "top"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 407
    const-string v2, "top"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v11, v0

    .line 410
    invoke-virtual {v11}, Lorg/json/simple/JSONArray;->size()I

    move-result v12

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 413
    const/4 v2, 0x0

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_3

    .line 414
    invoke-virtual {v11, v13}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONObject;

    move-object v10, v0

    .line 415
    const/4 v2, 0x0

    .line 416
    const-string v3, "facebook-id"

    invoke-virtual {v10, v3}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 417
    const-string v2, "facebook-id"

    invoke-virtual {v10, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    .line 419
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    move-object v14, v0

    new-instance v2, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;

    const-string v3, "user-name"

    invoke-virtual {v10, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "user-id"

    invoke-virtual {v10, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "score"

    invoke-virtual {v10, v6}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "rank"

    invoke-virtual {v10, v8}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v15, "hasavatar"

    invoke-virtual {v10, v15}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1

    .line 402
    :catch_0
    move-exception v2

    .line 403
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 425
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 428
    :cond_3
    const-string v2, "friends"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    const-string v2, "friends"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/simple/JSONArray;

    .line 431
    invoke-virtual/range {p1 .. p1}, Lorg/json/simple/JSONArray;->size()I

    move-result v11

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 434
    const/4 v2, 0x0

    move v12, v2

    :goto_3
    if-ge v12, v11, :cond_5

    .line 435
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/simple/JSONObject;

    move-object v10, v0

    .line 436
    const/4 v2, 0x0

    .line 437
    const-string v3, "facebook-id"

    invoke-virtual {v10, v3}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 438
    const-string v2, "facebook-id"

    invoke-virtual {v10, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    .line 440
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    move-object v13, v0

    new-instance v2, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;

    const-string v3, "user-name"

    invoke-virtual {v10, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "user-id"

    invoke-virtual {v10, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "score"

    invoke-virtual {v10, v6}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "rank"

    invoke-virtual {v10, v8}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v14, "hasavatar"

    invoke-virtual {v10, v14}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_3

    .line 446
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 448
    :cond_5
    return-void

    :cond_6
    move-object v5, v2

    goto :goto_4

    :cond_7
    move-object v5, v2

    goto/16 :goto_2
.end method

.method public queryScore()Ljava/lang/Integer;
    .locals 8

    .prologue
    const-string v7, "  duration: "

    .line 339
    new-instance v0, Lcom/doodlemobile/gamecenter/api/QueryScore;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/api/QueryScore;-><init>(Landroid/content/Context;)V

    .line 341
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile Activity network begin time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  duration: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 350
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2, v0}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v2

    .line 351
    sget v3, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v2, v3, :cond_2

    .line 352
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v2, :cond_1

    .line 353
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 355
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/api/QueryScore;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->parseScore(Ljava/lang/String;)V

    .line 360
    if-eqz v1, :cond_3

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile Activity network done time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  duration: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 366
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mGetScoreTask:Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

    .line 297
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mGetScoreTask:Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    return-void
.end method

.method public resetLeaderBoard()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-string v9, "layout"

    const-string v8, "dm_leaderboard_listitem"

    const-string v6, "id"

    .line 203
    const-string v0, "\n\n\n resetLeaderBoard \n\n\n"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top result size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_leaderboard_listitem"

    invoke-static {v1, v9, v8}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mLeaderScores:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopScrollState:Ljava/lang/Integer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 223
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v3, "dm_leaderboard_listitem"

    invoke-static {v1, v9, v8}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Scores:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ScrollState:Ljava/lang/Integer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    .line 242
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mTopAdapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24ListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->m24Adapter:Lcom/doodlemobile/gamecenter/LeaderBoardsView$LeaderBoardAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "myscore_headimage"

    invoke-static {v0, v6, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "myscore_username"

    invoke-static {v0, v6, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mUserNameView:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "myscore_rank"

    invoke-static {v0, v6, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeRankView:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "myscore_topscore"

    invoke-static {v0, v6, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeTopScoreView:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "myscore_thisscore"

    invoke-static {v0, v6, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getMeThisScore()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getMeThisScore()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeThisScoreView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mUserNameView:Landroid/widget/TextView;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNikename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeRankView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rank: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGlobalRank()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mMeTopScoreView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top Score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getMeTopScore()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/DataCenter;->requestHeadIconImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 283
    array-length v1, v0

    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 284
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIconImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
