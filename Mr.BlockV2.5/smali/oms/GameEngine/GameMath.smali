.class public Loms/GameEngine/GameMath;
.super Ljava/lang/Object;
.source "GameMath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CHKTouch(IIIIII)Z
    .locals 3
    .param p0, "SB"    # I
    .param p1, "SC"    # I
    .param p2, "SE"    # I
    .param p3, "TB"    # I
    .param p4, "TC"    # I
    .param p5, "TE"    # I

    .prologue
    const/4 v0, 0x0

    .line 24
    add-int v1, p1, p2

    sub-int v2, p4, p3

    if-ge v1, v2, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 26
    :cond_1
    add-int v1, p4, p5

    sub-int v2, p1, p0

    if-lt v1, v2, :cond_0

    .line 28
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertToRealX(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 118
    int-to-float v0, p0

    sget v1, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertToRealY(I)I
    .locals 2
    .param p0, "y"    # I

    .prologue
    .line 123
    int-to-float v0, p0

    sget v1, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertToUIX(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 108
    sget v0, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static convertToUIY(I)I
    .locals 2
    .param p0, "y"    # I

    .prologue
    .line 113
    sget v0, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static isCollapse([I[III)Z
    .locals 4
    .param p0, "P1"    # [I
    .param p1, "P2"    # [I
    .param p2, "P1Num"    # I
    .param p3, "P2Num"    # I

    .prologue
    const/4 v1, 0x1

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v2, p2, -0x1

    if-lt v0, v2, :cond_1

    .line 98
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, p3, -0x1

    if-lt v0, v2, :cond_2

    .line 103
    const/4 v1, 0x0

    :cond_0
    return v1

    .line 94
    :cond_1
    shl-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, p0, v3

    invoke-static {v2, v3, p1, p3}, Loms/GameEngine/GameMath;->isPointInPolygon(II[II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    shl-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    invoke-static {v2, v3, p0, p2}, Loms/GameEngine/GameMath;->isPointInPolygon(II[II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isPointInLine(IIIIII)Z
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "Result":Z
    if-lt p3, p5, :cond_1

    move v1, p3

    .line 48
    .local v1, "maxY":I
    :goto_0
    if-gt p3, p5, :cond_2

    move v2, p3

    .line 49
    .local v2, "minY":I
    :goto_1
    if-ge p1, v1, :cond_0

    if-lt p1, v2, :cond_0

    .line 51
    sub-int v3, p4, p2

    sub-int v4, p1, p3

    mul-int/2addr v3, v4

    sub-int v4, p5, p3

    div-int/2addr v3, v4

    add-int/2addr v3, p2

    if-gt p0, v3, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0

    .end local v1    # "maxY":I
    .end local v2    # "minY":I
    :cond_1
    move v1, p5

    .line 47
    goto :goto_0

    .restart local v1    # "maxY":I
    :cond_2
    move v2, p5

    .line 48
    goto :goto_1
.end method

.method public static isPointInPolygon(II[II)Z
    .locals 9
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "Polygon"    # [I
    .param p3, "PolygonPointNum"    # I

    .prologue
    .line 67
    const/4 v7, 0x0

    .line 69
    .local v7, "crossNum":I
    const/4 v6, 0x1

    .line 70
    .local v6, "Result":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lt v8, v0, :cond_1

    .line 75
    and-int/lit8 v0, v7, 0x1

    if-nez v0, :cond_0

    .line 76
    const/4 v6, 0x0

    .line 77
    :cond_0
    return v6

    .line 72
    :cond_1
    shl-int/lit8 v0, v8, 0x1

    aget v2, p2, v0

    shl-int/lit8 v0, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v3, p2, v0

    shl-int/lit8 v0, v8, 0x1

    add-int/lit8 v0, v0, 0x2

    aget v4, p2, v0

    shl-int/lit8 v0, v8, 0x1

    add-int/lit8 v0, v0, 0x3

    aget v5, p2, v0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Loms/GameEngine/GameMath;->isPointInLine(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 70
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
