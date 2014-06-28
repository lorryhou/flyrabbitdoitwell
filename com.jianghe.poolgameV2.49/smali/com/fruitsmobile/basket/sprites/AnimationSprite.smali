.class public Lcom/fruitsmobile/basket/sprites/AnimationSprite;
.super Lcom/fruitsmobile/basket/SpriteBase;
.source "AnimationSprite.java"


# instance fields
.field public alpha:F

.field public angle:F

.field protected animation:Lcom/fruitsmobile/basket/interfaces/Animation;

.field public blue:F

.field public color:I

.field public green:F

.field public height:F

.field protected paused:Z

.field public red:F

.field protected state:Ljava/lang/Object;

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 13
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 9
    iput-object v3, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    .line 10
    iput-object v3, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    .line 11
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->color:I

    .line 32
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->paused:Z

    .line 64
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->x:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->y:F

    .line 66
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->angle:F

    .line 68
    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->red:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->green:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->blue:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->alpha:F

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/interfaces/Animation;)V
    .locals 4
    .param p1, "animation"    # Lcom/fruitsmobile/basket/interfaces/Animation;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 16
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 9
    iput-object v3, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    .line 10
    iput-object v3, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    .line 11
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->color:I

    .line 32
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->paused:Z

    .line 64
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->x:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->y:F

    .line 66
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->angle:F

    .line 68
    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->red:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->green:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->blue:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->alpha:F

    .line 17
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->setAnimation(Lcom/fruitsmobile/basket/interfaces/Animation;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 46
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    iget-object v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->isOnScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->alpha:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 47
    :cond_0
    const/4 v4, 0x0

    .line 61
    :goto_0
    return v4

    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 50
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->x:F

    iget v6, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->y:F

    invoke-virtual {v4, v5, v6}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 51
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->angle:F

    invoke-virtual {v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 52
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v4

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->width:F

    iget v6, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->height:F

    invoke-virtual {v4, v5, v6}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 53
    iget-object v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    iget-object v5, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    invoke-interface {v4, p1, v5, p2}, Lcom/fruitsmobile/basket/interfaces/Animation;->commitWith(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 54
    .local v2, "ret":Z
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 56
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v3, v0

    .line 57
    .local v3, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->red:F

    iput v4, v3, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 58
    iget v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->green:F

    iput v4, v3, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 59
    iget v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->blue:F

    iput v4, v3, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 60
    iget v4, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->alpha:F

    iput v4, v3, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    move v4, v2

    .line 61
    goto :goto_0
.end method

.method public setAnimation(Lcom/fruitsmobile/basket/interfaces/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/fruitsmobile/basket/interfaces/Animation;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    .line 24
    if-eqz p1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 26
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Animation;->createState()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/interfaces/Animation;->restart(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->paused:Z

    .line 36
    return-void
.end method

.method public tick(J)V
    .locals 2
    .param p1, "timeSpan"    # J

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->paused:Z

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->animation:Lcom/fruitsmobile/basket/interfaces/Animation;

    iget-object v1, p0, Lcom/fruitsmobile/basket/sprites/AnimationSprite;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lcom/fruitsmobile/basket/interfaces/Animation;->tickState(Ljava/lang/Object;J)Z

    .line 41
    :cond_0
    return-void
.end method
