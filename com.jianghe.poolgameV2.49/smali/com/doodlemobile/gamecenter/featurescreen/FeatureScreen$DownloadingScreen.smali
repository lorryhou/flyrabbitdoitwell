.class Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;
.super Landroid/os/AsyncTask;
.source "FeatureScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadingScreen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static o:Ljava/lang/Object;


# instance fields
.field private fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->o:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    .line 106
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const-string v0, "xuming"

    .line 111
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    const-string v1, "xuming"

    const-string v2, "FeatureScreen is go !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$000()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const/4 v1, 0x1

    # setter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$002(Z)Z

    .line 118
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->CheckOrientation()V

    .line 120
    new-instance v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenInfoAPI;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isLandscape:Z
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$100(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenInfoAPI;-><init>(Landroid/content/Context;Z)V

    .line 123
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2, v1}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v1

    .line 124
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v1, v2, :cond_1

    .line 126
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v2, v1, :cond_0

    .line 127
    const-string v1, "xuming"

    const-string v2, "NETWORK_UNREACHABLE while download image message !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 189
    :goto_0
    return-object v0

    .line 131
    :cond_0
    :try_start_3
    const-string v1, "xuming"

    const-string v2, "ERROR while download image message !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 137
    :cond_1
    :try_start_5
    const-string v1, "xuming"

    const-string v2, "FeatureScreen process info !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->getFeatureScreenGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    move-result-object v2

    iput-object v2, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    .line 141
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    if-nez v1, :cond_2

    .line 143
    const/4 v1, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$002(Z)Z

    .line 144
    const-string v1, "xuming"

    const-string v2, "msg error!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 151
    :cond_2
    :try_start_7
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$200(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    const-string v1, "xuming"

    const-string v2, "game is already Downloading!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 160
    :cond_3
    :try_start_9
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->isNeedDownloadPic()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    .line 163
    :cond_4
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->SetURL(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->fs:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->DownloadingOrJustDecoding()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->setNeedDownloadPic(Z)V

    .line 169
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    .line 172
    :cond_5
    :try_start_b
    const-string v1, "xuming"

    const-string v2, "FeatureScreen image is fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    .line 177
    :cond_6
    :try_start_d
    const-string v1, "xuming"

    const-string v2, "FeatureScreen no network !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v1

    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    .line 182
    :cond_7
    :try_start_f
    const-string v1, "xuming"

    const-string v2, "FeatureScreen is ready !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v1

    :try_start_10
    monitor-exit v0

    move-object v0, v1

    goto/16 :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto/16 :goto_0

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->doInBackground([Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    const-string v2, "xuming"

    .line 198
    const-string v0, "xuming"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureScrenn show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isDelayForReady:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$500(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "xuming"

    const-string v0, "Ready to Show FeatureScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    # invokes: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreenForDelay()V
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$600()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "xuming"

    const-string v0, "Show FeatureScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->waittime:F
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$700()F

    move-result v0

    # invokes: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreen(F)V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$800(F)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 98
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
