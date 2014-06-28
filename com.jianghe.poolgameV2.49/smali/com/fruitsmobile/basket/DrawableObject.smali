.class public Lcom/fruitsmobile/basket/DrawableObject;
.super Ljava/lang/Object;
.source "DrawableObject.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Drawable;


# instance fields
.field private snapshot0:Ljava/lang/Object;

.field private snapshot1:Ljava/lang/Object;

.field private snapshotRest:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/DrawableObject;->createSnapshotData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot0:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/DrawableObject;->createSnapshotData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot1:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    .line 18
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 0
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->precommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->doCommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 33
    return-void
.end method

.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method protected createSnapshotData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doCommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 3
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    const/4 v2, 0x0

    .line 42
    iget v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0, p1, v2}, Lcom/fruitsmobile/basket/DrawableObject;->commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2, p0, v2}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot0:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/fruitsmobile/basket/DrawableObject;->commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot0:Ljava/lang/Object;

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 51
    iget v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    .line 52
    iget-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot0:Ljava/lang/Object;

    .line 53
    iput-object v2, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot1:Ljava/lang/Object;

    goto :goto_0
.end method

.method public postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 0
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 104
    return-void
.end method

.method public precommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 0
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 101
    return-void
.end method

.method public releaseData(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 64
    :cond_0
    iget v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 65
    const-string v0, "Basket"

    const-string v1, "too many snapshot released??"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    iget v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    if-nez v0, :cond_2

    .line 69
    iput-object p1, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot0:Ljava/lang/Object;

    .line 72
    :goto_1
    iget v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshotRest:I

    goto :goto_0

    .line 71
    :cond_2
    iput-object p1, p0, Lcom/fruitsmobile/basket/DrawableObject;->snapshot1:Ljava/lang/Object;

    goto :goto_1
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 86
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 89
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 21
    return-void
.end method
