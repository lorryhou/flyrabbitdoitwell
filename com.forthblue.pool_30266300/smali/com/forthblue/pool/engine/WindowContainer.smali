.class public Lcom/forthblue/pool/engine/WindowContainer;
.super Lcom/fruitsmobile/basket/SimpleContainer;
.source "WindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/engine/WindowContainer$Snapshot;
    }
.end annotation


# instance fields
.field public parentLayer:Lcom/fruitsmobile/basket/Layer;

.field public windowh:F

.field public windoww:F

.field public windowx:F

.field public windowy:F


# direct methods
.method public constructor <init>(ILcom/fruitsmobile/basket/Layer;)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "parentLayer"    # Lcom/fruitsmobile/basket/Layer;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    .line 18
    iput-object p2, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    .line 19
    return-void
.end method


# virtual methods
.method public commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/high16 v8, 0x40000000

    .line 32
    iget-object v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    if-nez v6, :cond_0

    .line 33
    const/4 v6, 0x0

    .line 55
    :goto_0
    return v6

    .line 35
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;

    move-object v1, v0

    .line 36
    .local v1, "ss":Lcom/forthblue/pool/engine/WindowContainer$Snapshot;
    sget v6, Lcom/forthblue/pool/Main;->width:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v7, v7, Lcom/fruitsmobile/basket/Layer;->width:F

    div-float v3, v6, v7

    .line 37
    .local v3, "xScale":F
    sget v6, Lcom/forthblue/pool/Main;->height:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v7, v7, Lcom/fruitsmobile/basket/Layer;->height:F

    div-float v5, v6, v7

    .line 38
    .local v5, "yScale":F
    iget-object v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v6, v6, Lcom/fruitsmobile/basket/Layer;->centerx:F

    iget-object v7, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v7, v7, Lcom/fruitsmobile/basket/Layer;->width:F

    div-float/2addr v7, v8

    sub-float v2, v6, v7

    .line 39
    .local v2, "xBase":F
    iget-object v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v6, v6, Lcom/fruitsmobile/basket/Layer;->centery:F

    iget-object v7, p0, Lcom/forthblue/pool/engine/WindowContainer;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    iget v7, v7, Lcom/fruitsmobile/basket/Layer;->height:F

    div-float/2addr v7, v8

    add-float v4, v6, v7

    .line 40
    .local v4, "yBase":F
    iget v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowx:F

    sub-float/2addr v6, v2

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->x:I

    .line 41
    iget v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowy:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->y:I

    .line 42
    iget v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->windoww:F

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    .line 43
    iget v6, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowh:F

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    .line 45
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    if-gez v6, :cond_1

    .line 46
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->x:I

    iget v7, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->x:I

    .line 47
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    neg-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    .line 49
    :cond_1
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    if-gez v6, :cond_2

    .line 50
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->y:I

    iget v7, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->y:I

    .line 51
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    neg-int v6, v6

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    .line 53
    :cond_2
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    .line 54
    iget v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    .line 55
    const/4 v6, 0x1

    goto :goto_0
.end method

.method protected createSnapshotData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;

    invoke-direct {v0}, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;-><init>()V

    return-object v0
.end method

.method public isInside(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 88
    iget v0, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowx:F

    sub-float/2addr p1, v0

    .line 89
    iget v0, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowy:F

    sub-float/2addr p2, v0

    .line 91
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/engine/WindowContainer;->windoww:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/engine/WindowContainer;->windowh:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/SimpleContainer;->postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 7
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0xc11

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-interface {p1, v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;

    move-object v1, v0

    .line 70
    .local v1, "ss":Lcom/forthblue/pool/engine/WindowContainer$Snapshot;
    iget v2, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->x:I

    iget v3, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->y:I

    iget v4, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    iget v5, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/fruitsmobile/basket/opengl/GL10;->glScissor(IIII)V

    .line 71
    invoke-interface {p1, v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    goto :goto_0
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 7
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0xc11

    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-interface {p1, v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glDisable(I)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;

    move-object v1, v0

    .line 81
    .local v1, "ss":Lcom/forthblue/pool/engine/WindowContainer$Snapshot;
    iget v2, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->x:I

    iget v3, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->y:I

    iget v4, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->w:I

    iget v5, v1, Lcom/forthblue/pool/engine/WindowContainer$Snapshot;->h:I

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/fruitsmobile/basket/opengl/GL20;->glScissor(IIII)V

    .line 82
    invoke-interface {p1, v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnable(I)V

    goto :goto_0
.end method
