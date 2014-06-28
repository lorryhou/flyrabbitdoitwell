.class Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;
.super Landroid/os/AsyncTask;
.source "UserInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFriendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/UserInfoView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V
    .locals 1

    .prologue
    .line 356
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView;Lcom/doodlemobile/gamecenter/UserInfoView$1;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 368
    new-instance v1, Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v1, v2, v0}, Lcom/doodlemobile/gamecenter/api/RemoveFriend;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    .line 370
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 386
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$500(Lcom/doodlemobile/gamecenter/UserInfoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$500(Lcom/doodlemobile/gamecenter/UserInfoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # getter for: Lcom/doodlemobile/gamecenter/UserInfoView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$500(Lcom/doodlemobile/gamecenter/UserInfoView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 390
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 391
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/api/RemoveFriend;->result:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 393
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    new-instance v2, Lcom/doodlemobile/gamecenter/model/User;

    invoke-direct {v2}, Lcom/doodlemobile/gamecenter/model/User;-><init>()V

    iput-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    .line 394
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v1, "query-user-id"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/doodlemobile/gamecenter/model/User;->setUserid(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v1, "query-user-name"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/doodlemobile/gamecenter/model/User;->setUsername(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v1, "query-user-level"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/doodlemobile/gamecenter/model/User;->setLevel(J)V

    .line 397
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v1, "query-user-xp"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/doodlemobile/gamecenter/model/User;->setXp(J)V

    .line 398
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v2, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v1, "query-user-nextxp"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/doodlemobile/gamecenter/model/User;->setNextXP(J)V

    .line 399
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    const-string v2, "query-user-totalxp"

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/doodlemobile/gamecenter/model/User;->setTotalXP(J)V

    .line 402
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->getFeedsAPI:Lcom/doodlemobile/gamecenter/api/RemoveFriend;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/api/RemoveFriend;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView;->parseUserInfo(Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.0"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->publishProgress([Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Remove Friend Success!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 418
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Change User Profile Picture Failed(Not Available Network)"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Change User Profile Picture Failed"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 356
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 356
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    # invokes: Lcom/doodlemobile/gamecenter/UserInfoView;->resetScreen()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->access$400(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    .line 379
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->refresh()V

    .line 382
    :cond_0
    return-void
.end method
