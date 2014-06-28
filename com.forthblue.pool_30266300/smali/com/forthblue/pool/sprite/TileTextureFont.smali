.class public Lcom/forthblue/pool/sprite/TileTextureFont;
.super Ljava/lang/Object;
.source "TileTextureFont.java"


# static fields
.field public static vertexBuffer:Ljava/nio/ByteBuffer;


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private fontList:Ljava/lang/String;

.field private texture:Lcom/fruitsmobile/basket/resources/Texture;

.field private tileHeight:F

.field private tileWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/forthblue/pool/sprite/TileTextureFont;->vertexBuffer:Ljava/nio/ByteBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V
    .locals 0
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "lineheight"    # I
    .param p5, "rowwidth"    # I
    .param p6, "tilerows"    # I
    .param p7, "tilecolumns"    # I
    .param p8, "fontList"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual/range {p0 .. p8}, Lcom/forthblue/pool/sprite/TileTextureFont;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIIILjava/lang/String;)V
    .locals 9
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "tilerows"    # I
    .param p5, "tilecolumns"    # I
    .param p6, "fontList"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p3

    move v5, p2

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 23
    invoke-virtual/range {v0 .. v8}, Lcom/forthblue/pool/sprite/TileTextureFont;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V

    .line 24
    return-void
.end method

.method private initBuffer(IIIIII)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "lineheight"    # I
    .param p4, "rowwidth"    # I
    .param p5, "rows"    # I
    .param p6, "columns"    # I

    .prologue
    .line 46
    mul-int v8, p5, p6

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-array v8, v8, [Ljava/nio/ByteBuffer;

    iput-object v8, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->buffers:[Ljava/nio/ByteBuffer;

    .line 47
    sub-int v8, p3, p2

    int-to-float v8, v8

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 48
    .local v7, "starty":F
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_0
    move v0, v5

    move/from16 v1, p5

    if-ge v0, v1, :cond_1

    mul-int v8, v5, p6

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 49
    int-to-float v8, p2

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float v4, v7, v8

    .line 51
    .local v4, "endy":F
    sub-int v8, p4, p1

    int-to-float v8, v8

    const/high16 v9, 0x3f000000

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 52
    .local v6, "startx":F
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_1
    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    mul-int v8, v5, p6

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 53
    int-to-float v8, p1

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float v3, v6, v8

    .line 54
    .local v3, "endx":F
    iget-object v8, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->buffers:[Ljava/nio/ByteBuffer;

    mul-int v9, v5, p6

    add-int/2addr v9, v2

    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v6, v10, v11

    const/4 v11, 0x1

    aput v7, v10, v11

    const/4 v11, 0x2

    aput v6, v10, v11

    const/4 v11, 0x3

    aput v4, v10, v11

    const/4 v11, 0x4

    aput v3, v10, v11

    const/4 v11, 0x5

    aput v7, v10, v11

    const/4 v11, 0x6

    aput v3, v10, v11

    const/4 v11, 0x7

    aput v4, v10, v11

    invoke-static {v10}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 55
    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v3    # "endx":F
    :cond_0
    int-to-float v8, p3

    iget-object v9, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v9}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 59
    .end local v2    # "c":I
    .end local v4    # "endy":F
    .end local v6    # "startx":F
    :cond_1
    return-void
.end method


# virtual methods
.method public commitWith(Lcom/fruitsmobile/basket/GameEngine;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "engine"    # Lcom/fruitsmobile/basket/GameEngine;
    .param p2, "index"    # I
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 86
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->buffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v3, v5

    .line 101
    :goto_0
    return v3

    .line 88
    :cond_1
    move-object v0, p3

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v2, v0

    .line 90
    .local v2, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v3, :cond_2

    .line 91
    new-instance v3, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/GameEngine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 94
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget-object v4, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 95
    sget-object v3, Lcom/forthblue/pool/sprite/TileTextureFont;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 96
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, p2

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 97
    const/4 v3, 0x5

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 98
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 99
    iput v5, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 100
    const/4 v3, 0x4

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 101
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCharList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->tileHeight:F

    return v0
.end method

.method public getIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 62
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public getTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public getWidth(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->tileWidth:F

    return v0
.end method

.method public setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V
    .locals 7
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "lineheight"    # I
    .param p5, "rowwidth"    # I
    .param p6, "tilerows"    # I
    .param p7, "tilecolumns"    # I
    .param p8, "fontList"    # Ljava/lang/String;

    .prologue
    .line 33
    int-to-float v0, p2

    iput v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->tileWidth:F

    .line 34
    int-to-float v0, p3

    iput v0, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->tileHeight:F

    .line 36
    iput-object p1, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 37
    iput-object p8, p0, Lcom/forthblue/pool/sprite/TileTextureFont;->fontList:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 38
    invoke-direct/range {v0 .. v6}, Lcom/forthblue/pool/sprite/TileTextureFont;->initBuffer(IIIIII)V

    .line 39
    return-void
.end method
