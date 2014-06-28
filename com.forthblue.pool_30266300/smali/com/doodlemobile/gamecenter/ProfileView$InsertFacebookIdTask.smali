.class Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;
.super Landroid/os/AsyncTask;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertFacebookIdTask"
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
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 644
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 645
    new-instance v1, Lcom/doodlemobile/gamecenter/api/InsertFacebookId;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v1, v2, v0}, Lcom/doodlemobile/gamecenter/api/InsertFacebookId;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "2.0"

    .line 676
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 680
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 682
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Insert FacebookId Success!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 685
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1.0"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->publishProgress([Ljava/lang/Object;)V

    .line 698
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_2

    .line 688
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "2.0"

    aput-object v4, v0, v2

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->publishProgress([Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Insert FacebookId Failed(Not Available Network)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 694
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "2.0"

    aput-object v4, v0, v2

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->publishProgress([Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Insert FacebookId Failed."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 633
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 633
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 651
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 653
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "me/friends"

    new-instance v2, Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {v2, v3}, Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 657
    new-instance v0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getImageuri()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Free Download From Android Market)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I am playing a new game: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getGameName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getMarketuri()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/doodlemobile/gamecenter/PostMessageOnWall;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->post()V

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # invokes: Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$700(Lcom/doodlemobile/gamecenter/ProfileView;)V

    .line 672
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    goto :goto_0
.end method
