.class public Lcom/doodlemobile/gamecenter/PostMessageOnWall;
.super Ljava/lang/Object;
.source "PostMessageOnWall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/PostMessageOnWall$1;,
        Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;
    }
.end annotation


# instance fields
.field mAccessToken:Ljava/lang/String;

.field mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field mCaptionName:Ljava/lang/String;

.field mLink:Ljava/lang/String;

.field mLinkName:Ljava/lang/String;

.field mMessage:Ljava/lang/String;

.field mPicture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAccessToken:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mMessage:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mPicture:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLink:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mCaptionName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 22
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 23
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAccessToken:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAccessToken:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mMessage:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mPicture:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLink:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mCaptionName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 29
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 30
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAccessToken:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mPicture:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mCaptionName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLink:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public post()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v0, "access_token"

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 40
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "message"

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 59
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "/me/feed"

    const-string v3, "POST"

    new-instance v4, Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;

    invoke-direct {v4, p0, v5}, Lcom/doodlemobile/gamecenter/PostMessageOnWall$PostMessageRequestListener;-><init>(Lcom/doodlemobile/gamecenter/PostMessageOnWall;Lcom/doodlemobile/gamecenter/PostMessageOnWall$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 61
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mPicture:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 44
    const-string v0, "picture"

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mPicture:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    const-string v0, "name"

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLinkName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 50
    const-string v0, "caption"

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mCaptionName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_4
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PostMessageOnWall;->mLink:Ljava/lang/String;

    const-string v1, "market://"

    const-string v3, "https://market.android.com/"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "Facebook-Example"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v1, "link"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
