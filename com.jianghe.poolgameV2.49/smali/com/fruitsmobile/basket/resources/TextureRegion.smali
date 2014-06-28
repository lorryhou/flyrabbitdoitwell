.class public Lcom/fruitsmobile/basket/resources/TextureRegion;
.super Ljava/lang/Object;
.source "TextureRegion.java"


# instance fields
.field protected _texture:Lcom/fruitsmobile/basket/resources/Texture;

.field protected src_height:I

.field protected src_width:I

.field protected src_x:I

.field protected src_y:I

.field protected u:F

.field protected u2:F

.field protected v:F

.field protected v2:F


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    const/4 v2, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    if-nez p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 13
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->setRegion(IIII)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIII)V
    .locals 0
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 18
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/fruitsmobile/basket/resources/TextureRegion;->setRegion(IIII)V

    .line 19
    return-void
.end method


# virtual methods
.method public getRegionSrcHeight()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_height:I

    return v0
.end method

.method public getRegionSrcWidth()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_width:I

    return v0
.end method

.method public getRegionSrcX()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_x:I

    return v0
.end method

.method public getRegionSrcY()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_y:I

    return v0
.end method

.method public getTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public getU()F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->u:F

    return v0
.end method

.method public getU2()F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->u2:F

    return v0
.end method

.method public getV()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->v:F

    return v0
.end method

.method public getV2()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->v2:F

    return v0
.end method

.method public setRegion(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/high16 v2, 0x3f800000

    .line 63
    iput p1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_x:I

    .line 64
    iput p2, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_y:I

    .line 65
    iput p3, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_width:I

    .line 66
    iput p4, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_height:I

    .line 68
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_x:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->u:F

    .line 69
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_x:I

    iget v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_width:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->u2:F

    .line 71
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_y:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->v:F

    .line 72
    iget v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_y:I

    iget v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_height:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->v2:F

    .line 73
    return-void
.end method

.method public setRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 4
    .param p1, "region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    .line 58
    iget-object v0, p1, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v0, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->_texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 59
    iget v0, p1, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_x:I

    iget v1, p1, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_y:I

    iget v2, p1, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_width:I

    iget v3, p0, Lcom/fruitsmobile/basket/resources/TextureRegion;->src_height:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/fruitsmobile/basket/resources/TextureRegion;->setRegion(IIII)V

    .line 60
    return-void
.end method
