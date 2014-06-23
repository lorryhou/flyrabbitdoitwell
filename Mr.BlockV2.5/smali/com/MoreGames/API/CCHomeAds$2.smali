.class Lcom/MoreGames/API/CCHomeAds$2;
.super Ljava/lang/Thread;
.source "CCHomeAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MoreGames/API/CCHomeAds;->downloadAds(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$picName:Ljava/lang/String;

.field private final synthetic val$urlAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MoreGames/API/CCHomeAds$2;->val$urlAddr:Ljava/lang/String;

    iput-object p2, p0, Lcom/MoreGames/API/CCHomeAds$2;->val$picName:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x7800

    .line 448
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/MoreGames/API/CCHomeAds$2;->val$urlAddr:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 449
    .local v8, "url":Ljava/net/URL;
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/MoreGames/API/CCHomeAds$2;->val$picName:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v4, "outFile":Ljava/io/File;
    sget-object v9, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 453
    sget-object v9, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/MoreGames/API/CCHomeAds$2;->val$picName:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 457
    .local v3, "os":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 458
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 460
    .local v2, "is":Ljava/io/InputStream;
    const/16 v9, 0x7800

    new-array v0, v9, [B

    .line 462
    .local v0, "buff":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 463
    .local v6, "readed":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 475
    const/4 v0, 0x0

    check-cast v0, [B

    .line 476
    const-string v9, "TAG"

    const-string v10, " c "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 478
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 479
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 481
    sget-object v9, Lcom/MoreGames/API/CCHomeAds;->mRandom:Ljava/util/Random;

    sget v10, Lcom/MoreGames/API/CCHomeAds;->mAdsShowRange:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    sget v10, Lcom/MoreGames/API/CCHomeAds;->mAdsShowRange:I

    rem-int v5, v9, v10

    .line 482
    .local v5, "rand":I
    sget v9, Lcom/MoreGames/API/CCHomeAds;->mAdsShowValidRange:I

    if-ge v5, v9, :cond_0

    .line 484
    sget-boolean v9, Lcom/MoreGames/API/CCHomeAds;->mClienVisible:Z

    if-eqz v9, :cond_0

    .line 485
    sget-object v9, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-static {v9}, Lcom/MoreGames/API/CCHomeAds;->showAds(Ljava/lang/String;)V

    .line 494
    .end local v0    # "buff":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "rand":I
    .end local v6    # "readed":I
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    :goto_2
    return-void

    .line 455
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3    # "os":Ljava/io/OutputStream;
    goto :goto_0

    .line 466
    .restart local v0    # "buff":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v6    # "readed":I
    :cond_2
    if-ge v6, v12, :cond_3

    .line 468
    new-array v7, v6, [B

    .line 469
    .local v7, "temp":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v9, v7, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 488
    .end local v0    # "buff":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v6    # "readed":I
    .end local v7    # "temp":[B
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 491
    const-string v9, ""

    sput-object v9, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/MoreGames/API/CCHomeAds;->savePreferences()V

    goto :goto_2

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buff":[B
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v6    # "readed":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
