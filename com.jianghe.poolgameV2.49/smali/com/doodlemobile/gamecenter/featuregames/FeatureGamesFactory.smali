.class public Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;
.super Ljava/lang/Object;
.source "FeatureGamesFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;
    }
.end annotation


# static fields
.field public static HAVEREQUEST:Z = false

.field public static NOFIRST:Z = false

.field private static final TAG:Ljava/lang/String; = "FeatureGamesFactory"

.field public static bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

.field private static mAppid:Ljava/lang/String;

.field private static mCount:I

.field private static mDensity:F

.field private static mDevice:Ljava/lang/String;

.field private static mFeatureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/FeatureView;",
            ">;"
        }
    .end annotation
.end field

.field private static mGameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;",
            ">;"
        }
    .end annotation
.end field

.field private static mHeight:I

.field private static mHttpUrl:Ljava/lang/String;

.field private static mImage:[B

.field private static mLanguage:Ljava/lang/String;

.field private static mLocale:Ljava/lang/String;

.field private static mPackageInstalledNames:Ljava/lang/String;

.field private static mPackageName:Ljava/lang/String;

.field private static mResult:Ljava/lang/String;

.field private static mScreensize:Ljava/lang/String;

.field private static mSharedUserID:Ljava/lang/String;

.field private static mVersion:Ljava/lang/String;

.field private static mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 528
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->bitmapList:Ljava/util/List;

    .line 574
    sput-boolean v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->HAVEREQUEST:Z

    .line 575
    sput-boolean v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->NOFIRST:Z

    .line 576
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mAppid:Ljava/lang/String;

    .line 577
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDevice:Ljava/lang/String;

    .line 578
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    .line 579
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageName:Ljava/lang/String;

    .line 580
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mResult:Ljava/lang/String;

    .line 581
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    .line 582
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLanguage:Ljava/lang/String;

    .line 583
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLocale:Ljava/lang/String;

    .line 584
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mVersion:Ljava/lang/String;

    .line 585
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDensity:F

    .line 586
    sput v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mWidth:I

    .line 587
    sput v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mHeight:I

    .line 589
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    .line 590
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 596
    const-string v0, "http://127.0.0.1"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mHttpUrl:Ljava/lang/String;

    .line 600
    sput v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    .line 602
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method

.method public static DeleteFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 557
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 558
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->hasSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;->deleteFile(Ljava/lang/String;Landroid/content/Context;)V

    .line 570
    return-void

    .line 562
    :catch_0
    move-exception v1

    .line 564
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ImageNotExist(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v0, "sdcard/.doodlemobile_featureviewnew/."

    const-string v0, "FeatureGamesFactory"

    .line 415
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    .line 416
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 417
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->hasSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->getFile(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    .line 420
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-eqz v1, :cond_0

    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 421
    const-string v1, "FeatureGamesFactory"

    const-string v2, "mImage should delete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->delete(Ljava/lang/String;)V

    .line 425
    const-string v1, "FeatureGamesFactory"

    const-string v2, "delete successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    .line 435
    :cond_0
    :goto_0
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-nez v1, :cond_1

    .line 436
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;->getFile(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    .line 438
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-eqz v0, :cond_2

    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v0, :cond_2

    .line 439
    const/4 v0, 0x0

    .line 445
    :goto_1
    return v0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    :try_start_3
    const-string v2, "FeatureGamesFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete not work"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 442
    :catch_1
    move-exception v0

    .line 444
    const-string v0, "xuming"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 445
    goto :goto_1

    .line 429
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move v0, v5

    .line 441
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static addGame(Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;)V
    .locals 1

    .prologue
    .line 450
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public static bitmapClear()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    move v1, v4

    .line 540
    :goto_0
    :try_start_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 541
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->bitmapList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->bitmapList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 540
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 546
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->bitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    const/4 v0, 0x1

    .line 550
    :goto_1
    return v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v1, "FeatureGamesFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmapClear \t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 550
    goto :goto_1
.end method

.method public static build(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getQuery(Landroid/content/Context;)V

    .line 316
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->sendRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mResult:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->parse(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 320
    goto :goto_0

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0

    :cond_2
    move v0, v1

    .line 325
    goto :goto_0
.end method

.method public static clearFeatureGameCount()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    .line 96
    return-void
.end method

.method public static getGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    .line 84
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    .line 88
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    sget v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 90
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGameList(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 469
    sget-boolean v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->HAVEREQUEST:Z

    if-nez v0, :cond_1

    .line 470
    sput-boolean v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->HAVEREQUEST:Z

    .line 472
    :try_start_0
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;-><init>()V

    .line 473
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getmGameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static getOneGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 50
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 53
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    if-nez v0, :cond_2

    .line 54
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 71
    :goto_0
    return-object v0

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 57
    :goto_1
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mMarketUri:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 68
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getQuery(Landroid/content/Context;)V
    .locals 9

    .prologue
    const-string v8, "com.doodlemobile"

    const-string v0, "="

    const-string v0, ""

    .line 100
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 102
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 104
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDensity:F

    .line 105
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mHeight:I

    .line 106
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mWidth:I

    .line 116
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mVersion:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 120
    const-string v2, "screenLayout"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 122
    const-string v3, "SCREENLAYOUT_SIZE_SMALL"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 124
    const-string v4, "SCREENLAYOUT_SIZE_NORMAL"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 126
    const-string v5, "SCREENLAYOUT_SIZE_LARGE"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 128
    new-instance v6, Ljava/lang/Integer;

    sget-object v7, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mVersion:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_0

    .line 130
    const-string v6, "SCREENLAYOUT_SIZE_XLARGE"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 132
    and-int v7, v2, v6

    if-ne v7, v6, :cond_0

    .line 133
    const-string v6, "xlar"

    sput-object v6, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    .line 136
    :cond_0
    const-string v6, "SCREENLAYOUT_SIZE_UNDEFINED"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 138
    and-int v1, v2, v3

    if-ne v1, v3, :cond_6

    .line 139
    const-string v0, "small"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLocale:Ljava/lang/String;

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLanguage:Ljava/lang/String;

    .line 162
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDevice:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageName:Ljava/lang/String;

    .line 167
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 170
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "doodle_mobile_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mAppid:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 176
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :goto_2
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 185
    const-string v0, "com.doodlemobile"

    sput-object v8, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    .line 189
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 191
    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    sget-object v3, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 195
    const-string v2, ""

    sput-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 197
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 225
    :catch_0
    move-exception v0

    .line 227
    const/4 v1, 0x0

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    :cond_5
    return-void

    .line 140
    :cond_6
    and-int v1, v2, v4

    if-ne v1, v4, :cond_7

    .line 141
    :try_start_4
    const-string v0, "normal"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 142
    :cond_7
    and-int v1, v2, v5

    if-ne v1, v5, :cond_8

    .line 143
    const-string v0, "large"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    goto/16 :goto_0

    .line 144
    :cond_8
    and-int v1, v2, v0

    if-ne v1, v0, :cond_9

    .line 145
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    const-string v1, "xlar"

    if-eq v0, v1, :cond_1

    .line 146
    const-string v0, "un"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_9
    const-string v0, "no"

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 178
    :catch_2
    move-exception v0

    .line 180
    const-string v1, "com.doodlemobile"

    sput-object v8, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mSharedUserID:Ljava/lang/String;

    .line 181
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 200
    :cond_a
    if-eqz v0, :cond_3

    :try_start_5
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isInstalledTheseGames(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 203
    const-string v2, ""

    sput-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 205
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    goto/16 :goto_3

    .line 213
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    .line 214
    if-eqz p0, :cond_d

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "doodle_mobile_appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 215
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 216
    const-string v1, ""

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 219
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 171
    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method public static getmGameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static haveFeatureView(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getOneGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInstalledTheseGames(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 234
    const-string v0, "com.tapglider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x.JewelsDeluxe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.threed.bowling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.wordsmobile.RollerBall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.a1.game.vszombies"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sniper.activity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.shootbubble.bubbledexlue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.forthblue.pool"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.candydroid.breakblock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.junerking.ninjia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 333
    if-nez p0, :cond_1

    :cond_0
    move v0, v4

    .line 346
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    move v1, v4

    .line 337
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 338
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    move v0, v4

    .line 346
    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    .line 460
    :catch_0
    move-exception v0

    .line 463
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 355
    if-nez p0, :cond_0

    move v0, v9

    .line 409
    :goto_0
    return v0

    .line 360
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONObject;

    .line 361
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 362
    invoke-static {p0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONArray;

    .line 363
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v6, v9

    .line 364
    :goto_1
    invoke-virtual {p0}, Lorg/json/simple/JSONArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 365
    invoke-virtual {p0, v6}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 366
    const-string v1, "gamename"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    const-string v1, "companyname"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 368
    const-string v3, "marketuri"

    invoke-virtual {v0, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 369
    const-string v4, "featureuri"

    invoke-virtual {v0, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 370
    invoke-static {v4, p1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->ImageNotExist(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :try_start_1
    invoke-static {v4}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :goto_2
    :try_start_2
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-eqz v0, :cond_1

    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_1

    .line 380
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 382
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->hasSDCard()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    invoke-static {v5, v7}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->saveFile(Ljava/lang/String;[B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    if-eqz v5, :cond_4

    .line 398
    :cond_1
    :goto_3
    :try_start_4
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-nez v0, :cond_2

    .line 400
    :cond_2
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    if-eqz v0, :cond_3

    .line 401
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    sget-object v5, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    invoke-direct/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 403
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->addGame(Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;)V

    .line 364
    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    const-string v5, "FeatureGamesFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IamgeNotExist error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 407
    :catch_1
    move-exception v0

    move v0, v9

    .line 409
    goto/16 :goto_0

    .line 388
    :cond_4
    :try_start_5
    sget-object v5, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mImage:[B

    invoke-static {v0, v5, p1}, Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 391
    :catch_2
    move-exception v0

    .line 392
    :try_start_6
    const-string v0, "xuming"

    const-string v5, " save image file fail !"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 406
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static registerFeatureView(Lcom/doodlemobile/gamecenter/FeatureView;)V
    .locals 3

    .prologue
    .line 514
    :try_start_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 515
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 516
    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 525
    :goto_1
    return-void

    .line 515
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static sendRequest()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v8, "ssc"

    const-string v7, ""

    .line 247
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mHttpUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pn"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "de"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDevice:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "a"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mAppid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "la"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLanguage:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lo"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mLocale:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "v"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mVersion:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Ljava/lang/Integer;

    sget-object v3, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mVersion:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 256
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "dy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mDensity:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    sget-object v2, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 271
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pi"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mPackageInstalledNames:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :goto_1
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 288
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 289
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    .line 294
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mResult:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    const/4 v0, 0x1

    :goto_2
    return v0

    .line 261
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "s"

    sget-object v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mScreensize:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_1
    const-string v2, "xuming"

    const-string v3, "no mPackageInstalledNames !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v6

    .line 296
    goto :goto_2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    const-string v1, "ssc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client 137"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 300
    goto :goto_2

    .line 301
    :catch_1
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    const-string v1, "ssc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO 137"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 304
    goto :goto_2

    .line 305
    :catch_2
    move-exception v0

    .line 306
    const-string v1, "ssc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E 137"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 307
    goto :goto_2
.end method

.method public static setmGameList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    sput-object p0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mGameList:Ljava/util/ArrayList;

    .line 536
    return-void
.end method
