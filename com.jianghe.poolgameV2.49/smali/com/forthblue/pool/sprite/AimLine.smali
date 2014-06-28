.class public Lcom/forthblue/pool/sprite/AimLine;
.super Lcom/fruitsmobile/basket/sprites/LineSprite;
.source "AimLine.java"


# instance fields
.field t:F

.field protected texture:Lcom/fruitsmobile/basket/resources/Texture;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fruitsmobile/basket/sprites/LineSprite;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    .line 16
    iput-object p1, p0, Lcom/forthblue/pool/sprite/AimLine;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 17
    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x3f000000

    .line 31
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/LineSprite;->commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v9, v0

    .line 34
    .local v9, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v1, p0, Lcom/forthblue/pool/sprite/AimLine;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 35
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 38
    :cond_0
    iget v1, p0, Lcom/forthblue/pool/sprite/AimLine;->x1:F

    iget v3, p0, Lcom/forthblue/pool/sprite/AimLine;->x0:F

    sub-float v7, v1, v3

    .line 39
    .local v7, "dx":F
    iget v1, p0, Lcom/forthblue/pool/sprite/AimLine;->y1:F

    iget v3, p0, Lcom/forthblue/pool/sprite/AimLine;->y0:F

    sub-float v8, v1, v3

    .line 40
    .local v8, "dy":F
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    neg-float v3, v3

    mul-float v5, v7, v7

    mul-float v6, v8, v8

    add-float/2addr v5, v6

    invoke-static {v5}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v5

    const/high16 v6, 0x3e000000

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    sub-float/2addr v5, v6

    move v6, v4

    invoke-static/range {v1 .. v6}, Lcom/fruitsmobile/basket/util/Util;->writeLine2D(Ljava/nio/Buffer;IFFFF)V

    .line 42
    const/4 v1, 0x1

    .line 44
    .end local v7    # "dx":F
    .end local v8    # "dy":F
    .end local v9    # "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 49
    const/high16 v0, 0x3fc00000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLineWidth(F)V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/LineSprite;->render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V

    .line 51
    const/high16 v0, 0x3f800000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLineWidth(F)V

    .line 52
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/high16 v0, 0x3fc00000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glLineWidth(F)V

    .line 57
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/LineSprite;->render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V

    .line 58
    const/high16 v0, 0x3f800000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glLineWidth(F)V

    .line 59
    return-void
.end method

.method public tick(J)V
    .locals 4
    .param p1, "timeSpan"    # J

    .prologue
    const/high16 v3, 0x3f800000

    .line 23
    iget v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    long-to-float v1, p1

    const v2, 0x3a83126f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    .line 24
    iget v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 25
    iget v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/forthblue/pool/sprite/AimLine;->t:F

    .line 26
    :cond_0
    return-void
.end method
