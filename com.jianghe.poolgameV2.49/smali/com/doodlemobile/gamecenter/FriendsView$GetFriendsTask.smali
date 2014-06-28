.class Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;
.super Landroid/os/AsyncTask;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetFriendsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/FriendsView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/FriendsView;Lcom/doodlemobile/gamecenter/FriendsView$1;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;-><init>(Lcom/doodlemobile/gamecenter/FriendsView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->queryFriends()Ljava/lang/Integer;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Friends Activity query friends: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    # getter for: Lcom/doodlemobile/gamecenter/FriendsView;->mFriends:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/FriendsView;->access$100(Lcom/doodlemobile/gamecenter/FriendsView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 151
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 168
    const/16 v1, 0x7531

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->this$0:Lcom/doodlemobile/gamecenter/FriendsView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FriendsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/FriendsView$GetFriendsTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 161
    return-void
.end method
