.class public Lcom/fruitsmobile/basket/RenderQueueManager;
.super Ljava/lang/Object;
.source "RenderQueueManager.java"


# static fields
.field private static final MAX_QUEUE_COUNT:I = 0x800


# instance fields
.field private bDirty:Z

.field private backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

.field private backupCount:I

.field private backupData:[Ljava/lang/Object;

.field private lock:[B

.field public paused:Z

.field private rendering:[Lcom/fruitsmobile/basket/interfaces/Drawable;

.field private renderingCount:I

.field private renderingData:[Ljava/lang/Object;

.field private unLoadTexture:[Lcom/fruitsmobile/basket/resources/Texture;

.field private unloadCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x800

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->bDirty:Z

    .line 11
    new-array v0, v2, [Lcom/fruitsmobile/basket/interfaces/Drawable;

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 12
    new-array v0, v2, [Lcom/fruitsmobile/basket/interfaces/Drawable;

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->rendering:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 13
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    .line 14
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingData:[Ljava/lang/Object;

    .line 15
    iput v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    .line 16
    iput v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingCount:I

    .line 17
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    .line 25
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 26
    iput v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    .line 27
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->lock:[B

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 46
    iput-boolean v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->bDirty:Z

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/fruitsmobile/basket/interfaces/Drawable;->releaseData(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    aput-object v4, v1, v0

    .line 51
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    aput-object v4, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iput v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    .line 54
    return-void
.end method

.method public Swap()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    monitor-enter p0

    .line 61
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->bDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v4, :cond_1

    .line 63
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_0
    :try_start_2
    iget-boolean v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    if-eqz v3, :cond_0

    .line 68
    const/4 v3, 0x0

    monitor-exit p0

    .line 82
    :goto_1
    return v3

    .line 71
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->bDirty:Z

    .line 72
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 73
    .local v0, "tmp":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    iget-object v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->rendering:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    iput-object v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 74
    iput-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->rendering:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    .line 75
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    .line 76
    .local v1, "tmp1":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingData:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    .line 77
    iput-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingData:[Ljava/lang/Object;

    .line 78
    iget v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    .line 79
    .local v2, "tmp2":I
    iget v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingCount:I

    iput v3, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    .line 80
    iput v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingCount:I

    .line 81
    monitor-exit p0

    move v3, v4

    .line 82
    goto :goto_1

    .line 81
    .end local v0    # "tmp":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    .end local v1    # "tmp1":[Ljava/lang/Object;
    .end local v2    # "tmp2":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 64
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "drawable"    # Lcom/fruitsmobile/basket/interfaces/Drawable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backup:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    iget v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    aput-object p1, v0, v1

    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupData:[Ljava/lang/Object;

    iget v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    aput-object p2, v0, v1

    .line 22
    iget v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->backupCount:I

    .line 23
    return-void
.end method

.method public getRenderingCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingCount:I

    return v0
.end method

.method public getRenderingData()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->renderingData:[Ljava/lang/Object;

    return-object v0
.end method

.method public getRenderingList()[Lcom/fruitsmobile/basket/interfaces/Drawable;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->rendering:[Lcom/fruitsmobile/basket/interfaces/Drawable;

    return-object v0
.end method

.method public unLoadTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->lock:[B

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    iget v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    aput-object p1, v1, v2

    .line 32
    iget v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unLoadTextureInRender()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->lock:[B

    monitor-enter v1

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    if-ge v0, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v2, v2, v0

    sget-object v3, Lcom/fruitsmobile/basket/util/GLHelper;->gl:Lcom/fruitsmobile/basket/opengl/GLCommon;

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/resources/Texture;->unload(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/fruitsmobile/basket/RenderQueueManager;->unloadCount:I

    .line 42
    monitor-exit v1

    .line 43
    return-void

    .line 42
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
