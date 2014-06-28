.class public Lcom/doodlemobile/gamecenter/FriendsView;
.super Lcom/doodlemobile/gamecenter/Scene;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;,
        Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;,
        Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;
    }
.end annotation


# static fields
.field public static final HANDLER_RESET_ALLGAMES:I = 0x7531

.field private static sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

.field private mFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/Friends;",
            ">;"
        }
    .end annotation
.end field

.field mFriendsListView:Landroid/widget/ListView;

.field mFriendsTitleView:Landroid/widget/TextView;

.field mGetFriendsTask:Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

.field mHandler:Landroid/os/Handler;

.field mIsNeedRefresh:Z

.field private mScrollState:I

.field mView:Landroid/widget/RelativeLayout;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string v4, "id"

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    .line 46
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsListView:Landroid/widget/ListView;

    .line 47
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mGetFriendsTask:Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

    .line 48
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mIsNeedRefresh:Z

    .line 271
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/FriendsView$1;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mHandler:Landroid/os/Handler;

    .line 308
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    .line 626
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/FriendsView$2;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 60
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 62
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FriendsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_friends_view"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mView:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "friends_title"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "moregame_list"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsListView:Landroid/widget/ListView;

    .line 81
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FriendsView;->refresh()V

    .line 89
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_friendsIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView;->setTitle(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsListView:Landroid/widget/ListView;

    .line 47
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mGetFriendsTask:Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

    .line 48
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mIsNeedRefresh:Z

    .line 271
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/FriendsView$1;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mHandler:Landroid/os/Handler;

    .line 308
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    .line 626
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/FriendsView$2;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 55
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/FriendsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/FriendsView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mScrollState:I

    return v0
.end method

.method static synthetic access$302(Lcom/doodlemobile/gamecenter/FriendsView;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mScrollState:I

    return p1
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .prologue
    .line 43
    sput-object p0, Lcom/doodlemobile/gamecenter/FriendsView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/doodlemobile/gamecenter/FriendsView;)Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    return-object v0
.end method


# virtual methods
.method public isNeedRefresh()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mIsNeedRefresh:Z

    return v0
.end method

.method public onInflate()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friends  With "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FriendsView;->isNeedRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FriendsView;->refresh()V

    .line 120
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    const-string v1, "Friends"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSetScene()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_friendsIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView;->setTitle(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FriendsView;->resume()V

    .line 106
    return-void
.end method

.method parseFriends(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v0, "hasavatar"

    const-string v0, "friend-name"

    const-string v0, "friend-id"

    .line 210
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFriends query friends: start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 215
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 218
    const-string v1, "parseFriends query friends: friends-play-the-same-game"

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 221
    const-string v1, "friends-play-the-game"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONArray;

    .line 223
    const-string v2, "friends-not-play-the-game"

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFriends query friends: friends_play_the_game "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v4, v6

    .line 231
    :goto_0
    invoke-virtual {v1}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    .line 232
    new-instance v5, Lcom/doodlemobile/gamecenter/Friends;

    invoke-direct {v5}, Lcom/doodlemobile/gamecenter/Friends;-><init>()V

    .line 233
    invoke-virtual {v1, v4}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/simple/JSONObject;

    .line 234
    const-string v3, "friend-id"

    invoke-virtual {v2, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/doodlemobile/gamecenter/Friends;->setFriendid(Ljava/lang/String;)V

    .line 235
    const-string v3, "friend-name"

    invoke-virtual {v2, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/doodlemobile/gamecenter/Friends;->setFriendname(Ljava/lang/String;)V

    .line 236
    const-string v3, "hasavatar"

    invoke-virtual {v2, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/doodlemobile/gamecenter/Friends;->setHasavatar(Z)V

    .line 237
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lcom/doodlemobile/gamecenter/Friends;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/Friends;-><init>()V

    .line 241
    const-string v2, "---------------nofriendsplaythesamegame---------------"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/Friends;->setFriendid(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 247
    new-instance v1, Lcom/doodlemobile/gamecenter/Friends;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/Friends;-><init>()V

    .line 248
    const-string v2, "---------------fengexian---------------"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/Friends;->setFriendid(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFriends query friends: friends_not_play_the_game "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    move v3, v6

    .line 254
    :goto_1
    invoke-virtual {v0}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 255
    new-instance v4, Lcom/doodlemobile/gamecenter/Friends;

    invoke-direct {v4}, Lcom/doodlemobile/gamecenter/Friends;-><init>()V

    .line 256
    invoke-virtual {v0, v3}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONObject;

    .line 258
    const-string v2, "friend-id"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/doodlemobile/gamecenter/Friends;->setFriendid(Ljava/lang/String;)V

    .line 259
    const-string v2, "friend-name"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/doodlemobile/gamecenter/Friends;->setFriendname(Ljava/lang/String;)V

    .line 260
    const-string v2, "hasavatar"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/doodlemobile/gamecenter/Friends;->setHasavatar(Z)V

    .line 261
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    :cond_2
    return-void
.end method

.method public queryFriends()Ljava/lang/Integer;
    .locals 8

    .prologue
    const-string v7, "  duration: "

    .line 177
    new-instance v0, Lcom/doodlemobile/gamecenter/api/GetFriendsPlayedTheSameGame;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/api/GetFriendsPlayedTheSameGame;-><init>(Landroid/content/Context;)V

    .line 180
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Friends Activity network begin time: "

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

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2, v0}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v2

    .line 190
    sget v3, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v2, v3, :cond_2

    .line 191
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v2, :cond_1

    .line 192
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    .line 194
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, v0, Lcom/doodlemobile/gamecenter/api/GetFriendsPlayedTheSameGame;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FriendsView;->parseFriends(Ljava/lang/String;)V

    .line 199
    if-eqz v1, :cond_3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friends Activity network done time: "

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

    .line 205
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 206
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;Lcom/doodlemobile/gamecenter/FriendsView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mGetFriendsTask:Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

    .line 124
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mGetFriendsTask:Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 126
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/FriendsView;->setNeedRefresh(Z)V

    .line 127
    return-void
.end method

.method public resetScreen()V
    .locals 5

    .prologue
    .line 279
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v4, "dm_moregame_listitem"

    invoke-static {v2, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    .line 283
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mAdapter:Lcom/doodlemobile/gamecenter/FriendsView$FriendsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friends  With "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mFriendsTitleView:Landroid/widget/TextView;

    const-string v1, "Friends"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNeedRefresh(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/FriendsView;->mIsNeedRefresh:Z

    .line 136
    return-void
.end method
