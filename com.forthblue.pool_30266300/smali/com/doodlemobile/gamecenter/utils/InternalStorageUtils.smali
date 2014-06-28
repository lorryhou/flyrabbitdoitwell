.class public Lcom/doodlemobile/gamecenter/utils/InternalStorageUtils;
.super Ljava/lang/Object;
.source "InternalStorageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFile(Ljava/lang/String;Landroid/content/Context;)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 21
    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 29
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 24
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 29
    goto :goto_0
.end method

.method public static saveFile(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "xuming"

    const-string v1, "in"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 40
    return-void
.end method
