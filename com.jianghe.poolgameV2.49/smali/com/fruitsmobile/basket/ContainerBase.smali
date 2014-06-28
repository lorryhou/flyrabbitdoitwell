.class public Lcom/fruitsmobile/basket/ContainerBase;
.super Lcom/fruitsmobile/basket/DrawableObject;
.source "ContainerBase.java"


# instance fields
.field protected arrUsed:I

.field protected children:[Lcom/fruitsmobile/basket/DrawableObject;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    .line 12
    new-array v0, p1, [Lcom/fruitsmobile/basket/DrawableObject;

    iput-object v0, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    .line 14
    return-void
.end method


# virtual methods
.method public addChild(Lcom/fruitsmobile/basket/DrawableObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/fruitsmobile/basket/DrawableObject;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    aput-object p1, v0, v1

    .line 27
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ge v0, v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    .line 22
    return-void
.end method

.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 2
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->precommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->doCommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fruitsmobile/basket/ContainerBase;->postcommit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 69
    return-void
.end method

.method public getChild(I)Lcom/fruitsmobile/basket/DrawableObject;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    return v0
.end method

.method public removeChild(Lcom/fruitsmobile/basket/DrawableObject;)V
    .locals 4
    .param p1, "obj"    # Lcom/fruitsmobile/basket/DrawableObject;

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 36
    :cond_0
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ne v0, v1, :cond_3

    .line 38
    const-string v1, "Basket"

    const-string v2, "Try to remove child that not exist."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :cond_1
    return-void

    .line 32
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_3
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    .line 43
    :goto_1
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    iget-object v2, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public tick(J)V
    .locals 2
    .param p1, "timeSpan"    # J

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->tick(J)V

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->arrUsed:I

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/fruitsmobile/basket/ContainerBase;->children:[Lcom/fruitsmobile/basket/DrawableObject;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/fruitsmobile/basket/DrawableObject;->tick(J)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
