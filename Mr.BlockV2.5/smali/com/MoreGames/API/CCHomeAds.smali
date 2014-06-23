.class public Lcom/MoreGames/API/CCHomeAds;
.super Ljava/lang/Object;
.source "CCHomeAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/MoreGames/API/CCHomeAds$CRect;
    }
.end annotation


# static fields
.field public static final ConnectTime:J = 0x1194L

.field public static final FolderName:Ljava/lang/String; = "temp"

.field public static PackageName:Ljava/lang/String; = null

.field public static final PictureBuffLen:I = 0x7800

.field public static final PreferencesFileName:Ljava/lang/String; = "homePre"

.field public static final ServerUrl:Ljava/lang/String; = "http://www.runnergameshk.com/w/BasCount/adAll?pd="

.field public static mActivity:Landroid/app/Activity;

.field public static mAdsDate:Ljava/lang/String;

.field public static mAdsShowRange:I

.field public static mAdsShowTime:I

.field public static mAdsShowValidRange:I

.field public static mClienVisible:Z

.field public static mCloseBtn:Lcom/MoreGames/API/CCHomeAds$CRect;

.field public static mFileFolderPath:Ljava/lang/String;

.field public static mFileName:Ljava/lang/String;

.field public static mFreeAdsBtn:Lcom/MoreGames/API/CCHomeAds$CRect;

.field public static mFreeAdsUrl:Ljava/lang/String;

.field public static mIsLandscape:Z

.field public static mIsVisible:Z

.field public static mPictureUrl:Ljava/lang/String;

.field public static mRandom:Ljava/util/Random;

.field public static mTargetPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/MoreGames/API/CCHomeAds;->mRandom:Ljava/util/Random;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/MoreGames/API/CCHomeAds;->mIsLandscape:Z

    .line 67
    new-instance v0, Lcom/MoreGames/API/CCHomeAds$CRect;

    const/16 v1, 0x112

    const/4 v2, 0x6

    const/16 v3, 0x139

    const/16 v4, 0x2b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/MoreGames/API/CCHomeAds$CRect;-><init>(IIII)V

    sput-object v0, Lcom/MoreGames/API/CCHomeAds;->mCloseBtn:Lcom/MoreGames/API/CCHomeAds$CRect;

    .line 68
    new-instance v0, Lcom/MoreGames/API/CCHomeAds$CRect;

    const/16 v1, 0xc

    const/16 v2, 0x1ac

    const/16 v3, 0x6a

    const/16 v4, 0x1d3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/MoreGames/API/CCHomeAds$CRect;-><init>(IIII)V

    sput-object v0, Lcom/MoreGames/API/CCHomeAds;->mFreeAdsBtn:Lcom/MoreGames/API/CCHomeAds$CRect;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final adInFlow()V
    .locals 3

    .prologue
    .line 433
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.runnergameshk.com/w/BasCount/adinflow?pd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/MoreGames/API/CCHomeAds;->PackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/MoreGames/API/CCWebConn;->connectServer(Landroid/app/Activity;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public static final adOutFlow()V
    .locals 3

    .prologue
    .line 424
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.runnergameshk.com/w/BasCount/adoutflow?pd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/MoreGames/API/CCHomeAds;->PackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/MoreGames/API/CCWebConn;->connectServer(Landroid/app/Activity;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method protected static final chkApkIsInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 339
    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 341
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 349
    :goto_1
    return v3

    .line 343
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 344
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    const/4 v3, 0x1

    goto :goto_1

    .line 341
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static final chkFileIsExist(Ljava/lang/String;)Z
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 368
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 372
    const/4 v1, 0x1

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 379
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    goto :goto_0
.end method

.method protected static final deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 389
    :cond_0
    return-void
.end method

.method protected static final downloadAds()V
    .locals 3

    .prologue
    .line 227
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mPictureUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/MoreGames/API/CCHomeAds;->downloadAds(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mPictureUrl:Ljava/lang/String;

    sget-object v1, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/MoreGames/API/CCHomeAds;->downloadAds(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final downloadAds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "urlAddr"    # Ljava/lang/String;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 443
    new-instance v0, Lcom/MoreGames/API/CCHomeAds$2;

    invoke-direct {v0, p0, p1}, Lcom/MoreGames/API/CCHomeAds$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v0, "t":Ljava/lang/Thread;
    const-string v1, "loadads"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    return-void
.end method

.method public static final getAdsInfo()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/MoreGames/API/CCHomeAds$1;

    invoke-direct {v0}, Lcom/MoreGames/API/CCHomeAds$1;-><init>()V

    .line 328
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 329
    return-void
.end method

.method protected static final getHomeAds()V
    .locals 5

    .prologue
    .line 113
    sget-boolean v3, Lcom/MoreGames/API/CCHomeAds;->mIsVisible:Z

    if-nez v3, :cond_1

    .line 215
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 123
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v3, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_3

    .line 136
    invoke-static {}, Lcom/MoreGames/API/CCHomeAds;->downloadAds()V

    goto :goto_0

    .line 126
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    const/4 v0, 0x0

    .line 145
    sget-object v3, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "file":Ljava/lang/String;
    invoke-static {v1}, Lcom/MoreGames/API/CCHomeAds;->chkFileIsExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    sget-object v3, Lcom/MoreGames/API/CCHomeAds;->mRandom:Ljava/util/Random;

    sget v4, Lcom/MoreGames/API/CCHomeAds;->mAdsShowRange:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget v4, Lcom/MoreGames/API/CCHomeAds;->mAdsShowRange:I

    rem-int v2, v3, v4

    .line 152
    .local v2, "rand":I
    sget v3, Lcom/MoreGames/API/CCHomeAds;->mAdsShowValidRange:I

    if-ge v2, v3, :cond_0

    .line 154
    sget-boolean v3, Lcom/MoreGames/API/CCHomeAds;->mClienVisible:Z

    if-eqz v3, :cond_0

    .line 155
    sget-object v3, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/MoreGames/API/CCHomeAds;->showAds(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v2    # "rand":I
    :cond_4
    invoke-static {}, Lcom/MoreGames/API/CCHomeAds;->downloadAds()V

    goto/16 :goto_0
.end method

.method protected static final init(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 72
    sput-object p0, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    .line 74
    sput-boolean v0, Lcom/MoreGames/API/CCHomeAds;->mClienVisible:Z

    .line 75
    sput v0, Lcom/MoreGames/API/CCHomeAds;->mAdsShowValidRange:I

    .line 76
    const/4 v0, 0x2

    sput v0, Lcom/MoreGames/API/CCHomeAds;->mAdsShowRange:I

    .line 77
    const/16 v0, 0x1388

    sput v0, Lcom/MoreGames/API/CCHomeAds;->mAdsShowTime:I

    .line 78
    sget-object v0, Lcom/MoreGames/API/CCHomeAds;->mRandom:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/MoreGames/API/CCHomeAds;->PackageName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static isNetWorkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 87
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 89
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final isStorageExit(Ljava/lang/String;)Z
    .locals 5
    .param p0, "folder"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 402
    .local v2, "sdcardDir":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "path":Ljava/lang/String;
    sput-object v0, Lcom/MoreGames/API/CCHomeAds;->mFileFolderPath:Ljava/lang/String;

    .line 406
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "path1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 414
    :cond_0
    const/4 v3, 0x1

    .line 416
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "path1":Ljava/io/File;
    .end local v2    # "sdcardDir":Ljava/io/File;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static final loadHomeAds(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/MoreGames/API/CCHomeAds;->init(Landroid/app/Activity;)V

    .line 97
    invoke-static {p0}, Lcom/MoreGames/API/CCHomeAds;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string v0, "TAG"

    const-string v1, "net error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v0, "temp"

    invoke-static {v0}, Lcom/MoreGames/API/CCHomeAds;->isStorageExit(Ljava/lang/String;)Z

    .line 107
    invoke-static {}, Lcom/MoreGames/API/CCHomeAds;->getAdsInfo()V

    goto :goto_0
.end method

.method public static final savePreferences()V
    .locals 4

    .prologue
    .line 362
    sget-object v1, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    const-string v2, "homePre"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 363
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "picname"

    sget-object v3, Lcom/MoreGames/API/CCHomeAds;->mFileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    return-void
.end method

.method public static final setHomeAdsVisible(Z)V
    .locals 0
    .param p0, "v"    # Z

    .prologue
    .line 219
    sput-boolean p0, Lcom/MoreGames/API/CCHomeAds;->mClienVisible:Z

    .line 220
    return-void
.end method

.method public static final showAds(Ljava/lang/String;)V
    .locals 3
    .param p0, "picName"    # Ljava/lang/String;

    .prologue
    .line 502
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/MoreGames/API/CCHomeAdsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/MoreGames/API/CCHomeAds;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 504
    return-void
.end method
