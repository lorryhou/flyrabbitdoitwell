.class Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;
.super Landroid/os/AsyncTask;
.source "DoodleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/DoodleHelper;
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
.field final synthetic this$0:Lcom/forthblue/pool/DoodleHelper;


# direct methods
.method private constructor <init>(Lcom/forthblue/pool/DoodleHelper;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/forthblue/pool/DoodleHelper;Lcom/forthblue/pool/DoodleHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/forthblue/pool/DoodleHelper;
    .param p2, "x1"    # Lcom/forthblue/pool/DoodleHelper$1;

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-virtual {v1}, Lcom/forthblue/pool/DoodleHelper;->submitScoreIntenal()I

    move-result v0

    .line 327
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 321
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    .line 335
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-ne v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-boolean v0, v0, Lcom/forthblue/pool/DoodleHelper;->bShowLeaderboardsAfterSubmit:Z

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->openLeaderBoards()V

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # getter for: Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/forthblue/pool/DoodleHelper;->access$200(Lcom/forthblue/pool/DoodleHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # getter for: Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/forthblue/pool/DoodleHelper;->access$200(Lcom/forthblue/pool/DoodleHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # getter for: Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/forthblue/pool/DoodleHelper;->access$200(Lcom/forthblue/pool/DoodleHelper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    # setter for: Lcom/forthblue/pool/DoodleHelper;->isSubmitScore:Z
    invoke-static {v0, v2}, Lcom/forthblue/pool/DoodleHelper;->access$302(Lcom/forthblue/pool/DoodleHelper;Z)Z

    .line 353
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v0, v0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Submit Score Success."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v0, v1, :cond_3

    .line 343
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v0, v0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Submit Score Failed(Not Available Network)"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v0, v0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Submit Score Failed."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 321
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 321
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 332
    return-void
.end method
