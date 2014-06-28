.class Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;
.super Landroid/os/AsyncTask;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportFriendsTask"
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
    .line 589
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 599
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 600
    new-instance v1, Lcom/doodlemobile/gamecenter/api/ImportFacebookFriends;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/doodlemobile/gamecenter/api/ImportFacebookFriends;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 602
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 589
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 616
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 617
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 618
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 619
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 630
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_2

    .line 623
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Change User Name Failed(Not Available Network)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Change User Name Failed."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 589
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 589
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 608
    return-void
.end method
