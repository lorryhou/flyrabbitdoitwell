.class public Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# static fields
.field public static final SDCARD_DIR:Ljava/lang/String; = "sdcard/.doodlemobile_featureviewnew/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileExits(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    return-void
.end method

.method public static getFile(Ljava/lang/String;)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 36
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 45
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 43
    goto :goto_0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveFile(Ljava/lang/String;[B)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "sdcard/.doodlemobile_featureviewnew/"

    .line 50
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v1, "sdcard/.doodlemobile_featureviewnew/"

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/featuregames/SDCardUtils;->checkFileExits(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Ljava/io/File;

    const-string v2, "sdcard/.doodlemobile_featureviewnew/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 67
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 77
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v0

    move v0, v3

    .line 60
    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    .line 71
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 73
    :catch_2
    move-exception v0

    move v0, v3

    .line 74
    goto :goto_0

    .line 79
    :catch_3
    move-exception v0

    move v0, v3

    .line 81
    goto :goto_0
.end method
