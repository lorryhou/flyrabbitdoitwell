.class public Lcom/fruitsmobile/basket/Layer;
.super Lcom/fruitsmobile/basket/ContainerBase;
.source "Layer.java"


# instance fields
.field public centerx:F

.field public centery:F

.field public height:F

.field private visible:Z

.field public width:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/ContainerBase;-><init>(I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    .line 12
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 1
    .param p1, "capability"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/ContainerBase;-><init>(I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/fruitsmobile/basket/Layer;->setSize(FF)V

    .line 31
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 61
    :cond_0
    return-void
.end method

.method public isOnScreen()Z
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/Layer;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    return v0
.end method

.method public postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 53
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 54
    return-void
.end method

.method public precommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 6
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v0

    .line 47
    .local v0, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 48
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/Layer;->centerx:F

    iget v3, p0, Lcom/fruitsmobile/basket/Layer;->centery:F

    iget v4, p0, Lcom/fruitsmobile/basket/Layer;->width:F

    iget v5, p0, Lcom/fruitsmobile/basket/Layer;->height:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->loadOrtho2D(FFFF)V

    .line 49
    return-void
.end method

.method public setSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v1, 0x40000000

    .line 38
    iput p1, p0, Lcom/fruitsmobile/basket/Layer;->width:F

    .line 39
    iput p2, p0, Lcom/fruitsmobile/basket/Layer;->height:F

    .line 40
    div-float v0, p1, v1

    iput v0, p0, Lcom/fruitsmobile/basket/Layer;->centerx:F

    .line 41
    div-float v0, p2, v1

    iput v0, p0, Lcom/fruitsmobile/basket/Layer;->centery:F

    .line 42
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    .line 22
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "timeSpan"    # J

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/Layer;->visible:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->tick(J)V

    .line 68
    :cond_0
    return-void
.end method
