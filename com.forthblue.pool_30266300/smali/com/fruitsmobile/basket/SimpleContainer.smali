.class public Lcom/fruitsmobile/basket/SimpleContainer;
.super Lcom/fruitsmobile/basket/ContainerBase;
.source "SimpleContainer.java"


# instance fields
.field public centerx:F

.field public centery:F

.field isVisible:Z

.field public rotation:F

.field public scalex:F

.field public scaley:F


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/ContainerBase;-><init>(I)V

    .line 9
    iput v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->centerx:F

    iput v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->centery:F

    .line 10
    iput v1, p0, Lcom/fruitsmobile/basket/SimpleContainer;->scalex:F

    iput v1, p0, Lcom/fruitsmobile/basket/SimpleContainer;->scaley:F

    .line 11
    iput v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->rotation:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible:Z

    .line 15
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 22
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible:Z

    return v0
.end method

.method public postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 35
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 36
    return-void
.end method

.method public precommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 4
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v0

    .line 27
    .local v0, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 28
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/SimpleContainer;->centerx:F

    iget v3, p0, Lcom/fruitsmobile/basket/SimpleContainer;->centery:F

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 29
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/SimpleContainer;->rotation:F

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 30
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/SimpleContainer;->scalex:F

    iget v3, p0, Lcom/fruitsmobile/basket/SimpleContainer;->scaley:F

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 31
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "bVisible"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible:Z

    .line 46
    return-void
.end method
