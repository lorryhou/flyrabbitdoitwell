.class Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;
.super Landroid/os/AsyncTask;
.source "LeaderBoardsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetScoreTask"
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
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;Lcom/doodlemobile/gamecenter/LeaderBoardsView$1;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;-><init>(Lcom/doodlemobile/gamecenter/LeaderBoardsView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->queryScore()Ljava/lang/Integer;

    move-result-object v0

    .line 312
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_0

    .line 323
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 324
    const v1, 0x30d41

    iput v1, v0, Landroid/os/Message;->what:I

    .line 325
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Get LeaderBoard Failed(Not Available Network)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->this$0:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Get LeaderBoard Failed."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView$GetScoreTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 318
    return-void
.end method
