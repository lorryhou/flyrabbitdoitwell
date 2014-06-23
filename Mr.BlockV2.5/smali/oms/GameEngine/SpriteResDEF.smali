.class public Loms/GameEngine/SpriteResDEF;
.super Ljava/lang/Object;
.source "SpriteResDEF.java"


# instance fields
.field public Sprite:Landroid/graphics/Bitmap;

.field public SpriteCenterX:I

.field public SpriteCenterY:I

.field public SpriteResID:I

.field public SpriteXHitL:I

.field public SpriteXHitR:I

.field public SpriteYHitD:I

.field public SpriteYHitU:I

.field public SpriteZHitB:I

.field public SpriteZHitF:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 38
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    .line 39
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    .line 40
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitL:I

    .line 41
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitR:I

    .line 42
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitU:I

    .line 43
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitD:I

    .line 44
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitF:I

    .line 45
    iput v1, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitB:I

    .line 46
    return-void
.end method


# virtual methods
.method public getSprite()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSpriteCenterX()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    return v0
.end method

.method public getSpriteCenterY()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    return v0
.end method

.method public getSpriteResID()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    return v0
.end method

.method public getSpriteXHitL()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitL:I

    return v0
.end method

.method public getSpriteXHitR()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitR:I

    return v0
.end method

.method public getSpriteYHitD()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitD:I

    return v0
.end method

.method public getSpriteYHitU()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitU:I

    return v0
.end method

.method public getSpriteZHitB()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitB:I

    return v0
.end method

.method public getSpriteZHitF()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitF:I

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 53
    :cond_0
    return-void
.end method

.method public setSprite(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "sprite"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method public setSpriteCenterX(I)V
    .locals 0
    .param p1, "spriteCenterX"    # I

    .prologue
    .line 94
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    .line 95
    return-void
.end method

.method public setSpriteCenterY(I)V
    .locals 0
    .param p1, "spriteCenterY"    # I

    .prologue
    .line 108
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    .line 109
    return-void
.end method

.method public setSpriteResID(I)V
    .locals 0
    .param p1, "spriteResID"    # I

    .prologue
    .line 80
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 81
    return-void
.end method

.method public setSpriteXHitL(I)V
    .locals 0
    .param p1, "spriteXHitL"    # I

    .prologue
    .line 122
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitL:I

    .line 123
    return-void
.end method

.method public setSpriteXHitR(I)V
    .locals 0
    .param p1, "spriteXHitR"    # I

    .prologue
    .line 136
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteXHitR:I

    .line 137
    return-void
.end method

.method public setSpriteYHitD(I)V
    .locals 0
    .param p1, "spriteYHitD"    # I

    .prologue
    .line 164
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitD:I

    .line 165
    return-void
.end method

.method public setSpriteYHitU(I)V
    .locals 0
    .param p1, "spriteYHitU"    # I

    .prologue
    .line 150
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteYHitU:I

    .line 151
    return-void
.end method

.method public setSpriteZHitB(I)V
    .locals 0
    .param p1, "spriteZHitB"    # I

    .prologue
    .line 192
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitB:I

    .line 193
    return-void
.end method

.method public setSpriteZHitF(I)V
    .locals 0
    .param p1, "spriteZHitF"    # I

    .prologue
    .line 178
    iput p1, p0, Loms/GameEngine/SpriteResDEF;->SpriteZHitF:I

    .line 179
    return-void
.end method
