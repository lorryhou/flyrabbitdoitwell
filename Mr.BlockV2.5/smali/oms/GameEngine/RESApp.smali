.class public Loms/GameEngine/RESApp;
.super Ljava/lang/Object;
.source "RESApp.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRes:Ljava/io/InputStream;

.field public nFileLen:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Loms/GameEngine/RESApp;->mContext:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/RESApp;->nFileLen:I

    .line 19
    iput-object p1, p0, Loms/GameEngine/RESApp;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public CloseRes()V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    .line 59
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public OpenRes(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 28
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 30
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Loms/GameEngine/RESApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    .line 38
    :try_start_1
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iput v1, p0, Loms/GameEngine/RESApp;->nFileLen:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    :goto_1
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public ResRead([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 76
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public Reset()V
    .locals 2

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/RESApp;->mRes:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Loms/GameEngine/RESApp;->nFileLen:I

    return v0
.end method
