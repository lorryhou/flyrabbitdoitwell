.class public Lcom/forthblue/pool/sprite/BitmapFontSprite;
.super Lcom/forthblue/pool/sprite/TextSprite;
.source "BitmapFontSprite.java"


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field protected font:[Lcom/fruitsmobile/basket/resources/TextureRegion;

.field protected font_mapping:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V
    .locals 0
    .param p1, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 12
    return-void
.end method


# virtual methods
.method public setRegion([Lcom/fruitsmobile/basket/resources/TextureRegion;Ljava/lang/String;)V
    .locals 10
    .param p1, "font"    # [Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p2, "font_mapping"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 20
    iput-object p1, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->font:[Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 21
    iput-object p2, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->font_mapping:Ljava/lang/String;

    .line 22
    if-nez p1, :cond_1

    .line 36
    :cond_0
    return-void

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    aget-object v6, p1, v9

    if-eqz v6, :cond_2

    .line 25
    aget-object v6, p1, v9

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    iput-object v6, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 27
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 28
    .local v3, "length":I
    new-array v6, v3, [Ljava/nio/ByteBuffer;

    iput-object v6, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->buffers:[Ljava/nio/ByteBuffer;

    .line 29
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 30
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU()F

    move-result v4

    .line 31
    .local v4, "startx":F
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV()F

    move-result v5

    .line 32
    .local v5, "starty":F
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU2()F

    move-result v0

    .line 33
    .local v0, "endx":F
    aget-object v6, p1, v2

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV2()F

    move-result v1

    .line 34
    .local v1, "endy":F
    iget-object v6, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->buffers:[Ljava/nio/ByteBuffer;

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v4, v7, v9

    const/4 v8, 0x1

    aput v5, v7, v8

    const/4 v8, 0x2

    aput v4, v7, v8

    const/4 v8, 0x3

    aput v1, v7, v8

    const/4 v8, 0x4

    aput v0, v7, v8

    const/4 v8, 0x5

    aput v5, v7, v8

    const/4 v8, 0x6

    aput v0, v7, v8

    const/4 v8, 0x7

    aput v1, v7, v8

    invoke-static {v7}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->count:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->count:I

    .line 45
    iput v2, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->height:F

    .line 46
    const/4 v11, 0x0

    .line 47
    .local v11, "x":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->count:I

    if-ge v9, v0, :cond_5

    .line 48
    if-lez v9, :cond_2

    .line 49
    iget v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->distance:F

    add-float/2addr v11, v0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->font_mapping:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 52
    .local v10, "index":I
    if-gez v10, :cond_4

    .line 53
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 54
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 47
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->font:[Lcom/fruitsmobile/basket/resources/TextureRegion;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v0

    int-to-float v7, v0

    .line 57
    .local v7, "width":F
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->font:[Lcom/fruitsmobile/basket/resources/TextureRegion;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v0

    int-to-float v8, v0

    .line 59
    .local v8, "height":F
    iget-object v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v10

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v1, v3, v4, v5}, Lcom/fruitsmobile/basket/util/Util;->copyFloatBuffer(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 60
    iget-object v3, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v9, 0x4

    mul-int/lit8 v4, v0, 0x2

    move v5, v11

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 62
    add-float/2addr v11, v7

    .line 63
    iget v0, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->height:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    .line 64
    iput v8, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->height:F

    goto :goto_1

    .line 68
    .end local v7    # "width":F
    .end local v8    # "height":F
    .end local v10    # "index":I
    :cond_5
    iput v11, p0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->width:F

    .line 69
    return-void
.end method
