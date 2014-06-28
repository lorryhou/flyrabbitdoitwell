.class public Lcom/fruitsmobile/basket/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"


# instance fields
.field public c:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 8
    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 9
    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 10
    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 11
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/fruitsmobile/basket/math/Quaternion;)V
    .locals 1
    .param p1, "other"    # Lcom/fruitsmobile/basket/math/Quaternion;

    .prologue
    .line 22
    iget v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    iput v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 23
    iget v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    iput v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 24
    iget v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    iput v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 25
    iget v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    iput v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 26
    return-void
.end method

.method public getConjugate(Lcom/fruitsmobile/basket/math/Quaternion;)V
    .locals 1
    .param p1, "other"    # Lcom/fruitsmobile/basket/math/Quaternion;

    .prologue
    .line 60
    iget v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    iput v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 61
    iget v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 62
    iget v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 63
    iget v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p1, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 64
    return-void
.end method

.method public getMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 6
    .param p1, "matrix"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    iget v3, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    iget v4, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    iget v5, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fruitsmobile/basket/math/Matrix;->nativeWriteMatrixFromQuaternion(Ljava/nio/Buffer;FFFF)V

    .line 43
    return-void
.end method

.method public loadWith(FFFF)V
    .locals 5
    .param p1, "a"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 47
    const/high16 v2, 0x3f000000

    mul-float v3, p2, p2

    mul-float v4, p3, p3

    add-float/2addr v3, v4

    mul-float v4, p4, p4

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v3

    div-float v0, v2, v3

    .line 48
    .local v0, "q":F
    mul-float/2addr p2, v0

    .line 49
    mul-float/2addr p3, v0

    .line 50
    mul-float/2addr p4, v0

    .line 52
    invoke-static {p1}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v2

    iput v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 53
    invoke-static {p1}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v1

    .line 54
    .local v1, "s":F
    mul-float v2, p2, v1

    iput v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 55
    mul-float v2, p3, v1

    iput v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 56
    mul-float v2, p4, v1

    iput v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 57
    return-void
.end method

.method public mulWith(Lcom/fruitsmobile/basket/math/Quaternion;)V
    .locals 10
    .param p1, "other"    # Lcom/fruitsmobile/basket/math/Quaternion;

    .prologue
    .line 30
    iget v0, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .local v0, "c1":F
    iget v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .local v2, "x1":F
    iget v4, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .local v4, "y1":F
    iget v6, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 31
    .local v6, "z1":F
    iget v1, p1, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .local v1, "c2":F
    iget v3, p1, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .local v3, "x2":F
    iget v5, p1, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .local v5, "y2":F
    iget v7, p1, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 35
    .local v7, "z2":F
    mul-float v8, v0, v1

    mul-float v9, v2, v3

    sub-float/2addr v8, v9

    mul-float v9, v4, v5

    sub-float/2addr v8, v9

    mul-float v9, v6, v7

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 36
    mul-float v8, v4, v7

    mul-float v9, v5, v6

    sub-float/2addr v8, v9

    mul-float v9, v0, v3

    add-float/2addr v8, v9

    mul-float v9, v1, v2

    add-float/2addr v8, v9

    iput v8, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 37
    mul-float v8, v6, v3

    mul-float v9, v7, v2

    sub-float/2addr v8, v9

    mul-float v9, v0, v5

    add-float/2addr v8, v9

    mul-float v9, v1, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 38
    mul-float v8, v2, v5

    mul-float v9, v3, v4

    sub-float/2addr v8, v9

    mul-float v9, v0, v7

    add-float/2addr v8, v9

    mul-float v9, v1, v6

    add-float/2addr v8, v9

    iput v8, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 39
    return-void
.end method

.method public normalize()V
    .locals 5

    .prologue
    .line 14
    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    iget v3, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    iget v4, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    iget v4, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    iget v4, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v2

    div-float v0, v1, v2

    .line 15
    .local v0, "q":F
    iget v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 16
    iget v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 17
    iget v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 18
    iget v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 19
    return-void
.end method
