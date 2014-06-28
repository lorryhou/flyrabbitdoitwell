.class public Lcom/forthblue/pool/engine/PoolHole;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "PoolHole.java"


# instance fields
.field public effect_type:I


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 12
    return-void
.end method
