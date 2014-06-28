.class Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;
.super Landroid/os/AsyncTask;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacebookLogoutTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
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
    .line 429
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Lcom/doodlemobile/gamecenter/api/FacebookLogout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/api/FacebookLogout;-><init>(Landroid/content/Context;)V

    .line 441
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/ProfileView;->doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # getter for: Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 457
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.0"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->publishProgress([Ljava/lang/Object;)V

    .line 459
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Facebook Account Logout Success"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_2

    .line 463
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Facebook Account Logout Failed(Not Available Network)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Facebook Account Logout Failed."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    # invokes: Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->access$700(Lcom/doodlemobile/gamecenter/ProfileView;)V

    .line 449
    return-void
.end method
