.class public Lcom/forthblue/pool/LevelManager;
.super Ljava/lang/Object;
.source "LevelManager.java"


# static fields
.field public static _singleInstance:Lcom/forthblue/pool/LevelManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/forthblue/pool/LevelManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/forthblue/pool/LevelManager;->_singleInstance:Lcom/forthblue/pool/LevelManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/forthblue/pool/LevelManager;

    invoke-direct {v0}, Lcom/forthblue/pool/LevelManager;-><init>()V

    sput-object v0, Lcom/forthblue/pool/LevelManager;->_singleInstance:Lcom/forthblue/pool/LevelManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/forthblue/pool/LevelManager;->_singleInstance:Lcom/forthblue/pool/LevelManager;

    return-object v0
.end method


# virtual methods
.method public loadData(Landroid/app/Activity;II)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "stage"    # I

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data/level_stage_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 29
    .local v3, "input":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v1, "dataInput":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .line 33
    .local v4, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 35
    .local v0, "cnt":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 36
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_0

    move-object v5, v4

    .line 45
    .end local v0    # "cnt":I
    .end local v1    # "dataInput":Ljava/io/DataInputStream;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 40
    .restart local v0    # "cnt":I
    .restart local v1    # "dataInput":Ljava/io/DataInputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "cnt":I
    .end local v1    # "dataInput":Ljava/io/DataInputStream;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 42
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
