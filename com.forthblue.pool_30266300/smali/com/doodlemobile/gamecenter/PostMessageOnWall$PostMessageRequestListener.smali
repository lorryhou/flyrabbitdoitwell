.class Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;
.super Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;
.source "PostMessageOnWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/PostMessageOnWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostMessageRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/PostMessageOnWall;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/PostMessageOnWall;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;->this$0:Lcom/doodlemobile/gamecenter/PostMessageOnWall;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/PostMessageOnWall;Lcom/doodlemobile/gamecenter/PostMessageOnWall$1;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;-><init>(Lcom/doodlemobile/gamecenter/PostMessageOnWall;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const-string v3, "Facebook-Example"

    .line 68
    :try_start_0
    const-string v0, "Facebook-Example"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "Facebook-Example"

    const-string v1, "Response has error"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
