.class public Lcom/doodlemobile/gamecenter/QueryIDTask;
.super Landroid/os/AsyncTask;
.source "QueryIDTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/QueryIDTask;->queryID(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/QueryIDTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/QueryIDTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/QueryIDTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public queryID(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 8

    .prologue
    const-string v7, "  duration: "

    .line 40
    new-instance v0, Lcom/doodlemobile/gamecenter/api/OnStartSession;

    invoke-direct {v0, p1}, Lcom/doodlemobile/gamecenter/api/OnStartSession;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on startSession network begin time: "

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

    .line 48
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    .line 50
    invoke-static {p1, v0}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    .line 52
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v0, v1, :cond_2

    .line 53
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v1, v0, :cond_1

    .line 56
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 58
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on startSession network done time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  duration: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 67
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/QueryIDTask;->mTime:Ljava/lang/Long;

    .line 68
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
