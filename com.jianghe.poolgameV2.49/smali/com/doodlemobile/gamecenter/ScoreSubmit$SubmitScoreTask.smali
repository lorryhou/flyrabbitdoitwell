.class Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;
.super Landroid/os/AsyncTask;
.source "ScoreSubmit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ScoreSubmit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitScoreTask"
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
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ScoreSubmit;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ScoreSubmit;Lcom/doodlemobile/gamecenter/ScoreSubmit$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;-><init>(Lcom/doodlemobile/gamecenter/ScoreSubmit;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # invokes: Lcom/doodlemobile/gamecenter/ScoreSubmit;->submitScoreIntenal()I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$100(Lcom/doodlemobile/gamecenter/ScoreSubmit;)I

    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;->onSuccess()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 70
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$300(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 72
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mFacebook:Lcom/facebook/android/Facebook;

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

    const-string v6, "I set a new score record: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mScore:I
    invoke-static {v6}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$400(Lcom/doodlemobile/gamecenter/ScoreSubmit;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "! Join with me!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getMarketuri()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/doodlemobile/gamecenter/PostMessageOnWall;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->post()V

    .line 102
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # setter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->isSubmitScore:Z
    invoke-static {v0, v7}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$502(Lcom/doodlemobile/gamecenter/ScoreSubmit;Z)Z

    .line 103
    return-void

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_4

    .line 86
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-interface {v0, v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;->onFailed(I)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$300(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Submit Score Failed(Not Available Network)"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    move-result-object v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-interface {v0, v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;->onFailed(I)V

    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->this$0:Lcom/doodlemobile/gamecenter/ScoreSubmit;

    # getter for: Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->access$300(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Submit Score Failed."

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 58
    return-void
.end method
