.class public Lcom/doodlemobile/gamecenter/utils/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/doodlemobile/gamecenter/utils/Debug;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/doodlemobile/gamecenter/utils/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 10
    const-string v0, "DoodleMobile"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/doodlemobile/gamecenter/utils/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "DoodleMobile"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/doodlemobile/gamecenter/utils/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "DoodleMobile"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 21
    sget-boolean v0, Lcom/doodlemobile/gamecenter/utils/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "DoodleMobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method
