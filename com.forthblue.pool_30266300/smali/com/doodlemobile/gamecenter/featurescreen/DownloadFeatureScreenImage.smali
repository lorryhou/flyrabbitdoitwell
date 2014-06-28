.class public Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;
.super Ljava/lang/Object;
.source "DownloadFeatureScreenImage.java"


# static fields
.field private static mImage:[B

.field public static pic:Landroid/graphics/Bitmap;


# instance fields
.field private URL:Ljava/lang/String;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    .line 42
    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private DecodeBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 149
    :try_start_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    const/4 v1, 0x0

    sget-object v2, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ImageNotExist(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "sdcard/.doodlemobile_featureviewnew/."

    const-string v3, "xuming"

    .line 161
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 162
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->hasSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->getFile(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    .line 164
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-eqz v1, :cond_0

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "xuming"

    const-string v1, "mImage should delete"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
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

    .line 168
    const-string v1, "xuming"

    const-string v2, "delete successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sput-object v5, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    .line 178
    :cond_0
    :goto_0
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-nez v1, :cond_1

    .line 179
    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;->getFile(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    .line 182
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-eqz v0, :cond_2

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    array-length v0, v0

    if-lez v0, :cond_2

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_1
    return v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    :try_start_1
    const-string v2, "xuming"

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    sput-object v5, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-object v5, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    throw v0

    .line 185
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public DownloadingOrJustDecoding()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "xuming"

    .line 78
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->URL:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v4

    .line 140
    :goto_0
    return v0

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->URL:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->ImageNotExist(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    :try_start_1
    const-string v1, "xuming"

    const-string v2, "FeatureScreen is Downloading!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_1
    :try_start_2
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-eqz v1, :cond_1

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    array-length v1, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    .line 97
    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 99
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->hasSDCard()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/.doodlemobile_featureviewnew/."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->saveFile(Ljava/lang/String;[B)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    :cond_1
    :goto_2
    :try_start_4
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-nez v1, :cond_4

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    move v0, v4

    .line 118
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 92
    const/4 v1, 0x0

    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    move v0, v4

    .line 140
    goto :goto_0

    .line 101
    :cond_2
    :try_start_5
    sget-object v2, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;->saveFile(Ljava/lang/String;[BLandroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 103
    :catch_2
    move-exception v1

    .line 104
    :try_start_6
    const-string v1, "xuming"

    const-string v2, " save image file fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 111
    :cond_3
    const-string v1, "xuming"

    const-string v2, "FeatureScreen is already in sdcard or files!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 120
    :cond_4
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    if-eqz v1, :cond_6

    .line 122
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->DecodeBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    .line 123
    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 126
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->DeleteFile(Ljava/lang/String;Landroid/content/Context;)V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mImage:[B

    move v0, v4

    .line 128
    goto/16 :goto_0

    .line 132
    :cond_5
    const-string v0, "xuming"

    const-string v1, "FeatureScreen is decoded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 137
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public SetURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->URL:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 55
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 57
    if-nez p0, :cond_1

    :cond_0
    move v0, v4

    .line 70
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    move v1, v4

    .line 61
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    move v0, v4

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->mContext:Landroid/content/Context;

    .line 191
    return-void
.end method
