.class public Lcom/fruitsmobile/basket/resources/TileAnimation;
.super Ljava/lang/Object;
.source "TileAnimation.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Animation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/resources/TileAnimation$1;,
        Lcom/fruitsmobile/basket/resources/TileAnimation$State;
    }
.end annotation


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private frameIndices:[I

.field private frameIntervals:[J

.field private texture:Lcom/fruitsmobile/basket/resources/Texture;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIII[J)V
    .locals 8
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "tilerows"    # I
    .param p5, "tilecolumns"    # I
    .param p6, "frameIntervals"    # [J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/fruitsmobile/basket/resources/TileAnimation;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIII[J[I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;IIII[J[I)V
    .locals 0
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "tilerows"    # I
    .param p5, "tilecolumns"    # I
    .param p6, "frameIntervals"    # [J
    .param p7, "frameIndices"    # [I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual/range {p0 .. p7}, Lcom/fruitsmobile/basket/resources/TileAnimation;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIII[J[I)V

    .line 38
    return-void
.end method

.method private initBuffer(IIII)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rows"    # I
    .param p4, "columns"    # I

    .prologue
    .line 57
    mul-int v6, p3, p4

    new-array v6, v6, [Ljava/nio/ByteBuffer;

    iput-object v6, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->buffers:[Ljava/nio/ByteBuffer;

    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "starty":F
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 60
    add-int/lit8 v6, v3, 0x1

    mul-int/2addr v6, p2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iget v7, v7, Lcom/fruitsmobile/basket/resources/Texture;->height:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 62
    .local v2, "endy":F
    const/4 v4, 0x0

    .line 63
    .local v4, "startx":F
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, p4, :cond_0

    .line 64
    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, p1

    int-to-float v6, v6

    iget-object v7, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iget v7, v7, Lcom/fruitsmobile/basket/resources/Texture;->width:I

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 65
    .local v1, "endx":F
    iget-object v6, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->buffers:[Ljava/nio/ByteBuffer;

    mul-int v7, v3, p4

    add-int/2addr v7, v0

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v4, v8, v9

    const/4 v9, 0x1

    aput v5, v8, v9

    const/4 v9, 0x2

    aput v4, v8, v9

    const/4 v9, 0x3

    aput v2, v8, v9

    const/4 v9, 0x4

    aput v1, v8, v9

    const/4 v9, 0x5

    aput v5, v8, v9

    const/4 v9, 0x6

    aput v1, v8, v9

    const/4 v9, 0x7

    aput v2, v8, v9

    invoke-static {v8}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 69
    move v4, v1

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "endx":F
    :cond_0
    move v5, v2

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "c":I
    .end local v2    # "endy":F
    .end local v4    # "startx":F
    :cond_1
    return-void
.end method


# virtual methods
.method public commitWith(Lcom/fruitsmobile/basket/interfaces/Engine;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "frame"    # I
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 129
    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIntervals:[J

    array-length v3, v3

    if-lt p2, v3, :cond_0

    move v3, v5

    .line 147
    :goto_0
    return v3

    .line 130
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v2, v0

    .line 132
    .local v2, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v3, :cond_1

    .line 133
    new-instance v3, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 135
    :cond_1
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 136
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget-object v4, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 137
    sget-object v3, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 138
    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIndices:[I

    if-nez v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, p2

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 143
    :goto_1
    const/4 v3, 0x5

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 144
    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 145
    iput v5, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 146
    const/4 v3, 0x4

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 147
    const/4 v3, 0x1

    goto :goto_0

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->buffers:[Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIndices:[I

    aget v4, v4, p2

    aget-object v3, v3, v4

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public commitWith(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    .line 122
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;

    move-object v1, v0

    .line 123
    .local v1, "s":Lcom/fruitsmobile/basket/resources/TileAnimation$State;
    iget v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    invoke-virtual {p0, p1, v2, p3}, Lcom/fruitsmobile/basket/resources/TileAnimation;->commitWith(Lcom/fruitsmobile/basket/interfaces/Engine;ILjava/lang/Object;)Z

    .line 124
    const/4 v2, 0x1

    return v2
.end method

.method public createState()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/resources/TileAnimation$State;-><init>(Lcom/fruitsmobile/basket/resources/TileAnimation$1;)V

    return-object v0
.end method

.method protected getBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "animation"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->buffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public restart(Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 115
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;

    move-object v1, v0

    .line 116
    .local v1, "s":Lcom/fruitsmobile/basket/resources/TileAnimation$State;
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    .line 117
    const/4 v2, 0x0

    iput v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    .line 118
    return-void
.end method

.method public setRepeat(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "repeat"    # Z

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;

    move-object v1, v0

    .line 93
    .local v1, "s":Lcom/fruitsmobile/basket/resources/TileAnimation$State;
    iput-boolean p2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->repeat:Z

    .line 94
    return-void
.end method

.method public setTexture(Lcom/fruitsmobile/basket/resources/Texture;IIII[J[I)V
    .locals 0
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "tilewidth"    # I
    .param p3, "tileheight"    # I
    .param p4, "tilerows"    # I
    .param p5, "tilecolumns"    # I
    .param p6, "frameIntervals"    # [J
    .param p7, "frameIndices"    # [I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 51
    iput-object p6, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIntervals:[J

    .line 52
    iput-object p7, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIndices:[I

    .line 53
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/fruitsmobile/basket/resources/TileAnimation;->initBuffer(IIII)V

    .line 54
    return-void
.end method

.method public tickState(Ljava/lang/Object;J)Z
    .locals 7
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "timeSpan"    # J

    .prologue
    const/4 v6, 0x0

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;

    move-object v1, v0

    .line 99
    .local v1, "s":Lcom/fruitsmobile/basket/resources/TileAnimation$State;
    iget-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    .line 100
    :cond_0
    :goto_0
    iget-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    iget-object v4, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIntervals:[J

    iget v5, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 101
    iget-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    iget-object v4, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIntervals:[J

    iget v5, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    .line 102
    iget v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/TileAnimation;->frameIntervals:[J

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 103
    iget-boolean v2, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->repeat:Z

    if-eqz v2, :cond_1

    .line 104
    iput v6, v1, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    goto :goto_0

    :cond_1
    move v2, v6

    .line 110
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
