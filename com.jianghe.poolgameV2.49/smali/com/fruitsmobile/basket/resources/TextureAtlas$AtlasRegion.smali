.class public Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;
.super Lcom/fruitsmobile/basket/resources/TextureRegion;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/resources/TextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtlasRegion"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public offset_x:I

.field public offset_y:I

.field public original_height:I

.field public original_width:I

.field public rotate:Z


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIII)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 141
    invoke-direct/range {p0 .. p5}, Lcom/fruitsmobile/basket/resources/TextureRegion;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIII)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->rotate:Z

    .line 142
    iput p4, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->original_width:I

    .line 143
    iput p5, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->original_height:I

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;ZIIIIIIII)V
    .locals 8
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "rotate"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "offset_x"    # I
    .param p8, "offset_y"    # I
    .param p9, "src_width"    # I
    .param p10, "src_height"    # I

    .prologue
    .line 148
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/fruitsmobile/basket/resources/TextureRegion;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIII)V

    .line 136
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->rotate:Z

    .line 149
    iput-boolean p2, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->rotate:Z

    .line 150
    move/from16 v0, p9

    move-object v1, p0

    iput v0, v1, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->original_width:I

    .line 151
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;->original_height:I

    .line 152
    return-void
.end method
