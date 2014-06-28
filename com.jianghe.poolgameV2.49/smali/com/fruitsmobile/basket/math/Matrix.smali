.class public Lcom/fruitsmobile/basket/math/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field public static final IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;


# instance fields
.field protected buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "basket"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/fruitsmobile/basket/math/Matrix;->nativeClassInit()V

    .line 106
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 108
    sget-object v0, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->loadIdentity()V

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    .line 13
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCopy(Ljava/nio/Buffer;Ljava/nio/Buffer;)V
.end method

.method private static native nativeLoadIdentity(Ljava/nio/Buffer;)V
.end method

.method private static native nativeLoadOrtho2D(Ljava/nio/Buffer;FFFF)V
.end method

.method private static native nativeMultiWith(Ljava/nio/Buffer;Ljava/nio/Buffer;)V
.end method

.method private static native nativePushRotation2D(Ljava/nio/Buffer;F)V
.end method

.method private static native nativePushScale2D(Ljava/nio/Buffer;FF)V
.end method

.method private static native nativePushTranslate2D(Ljava/nio/Buffer;FF)V
.end method


# virtual methods
.method public copy()Lcom/fruitsmobile/basket/math/Matrix;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    .line 27
    .local v0, "ret":Lcom/fruitsmobile/basket/math/Matrix;
    iget-object v1, v0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->nativeCopy(Ljava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 28
    return-object v0
.end method

.method public copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 2
    .param p1, "other"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/Matrix;->nativeCopy(Ljava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 33
    return-void
.end method

.method public getArray([F)V
    .locals 2
    .param p1, "arr"    # [F

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 37
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    return-void
.end method

.method public getBuffer()Ljava/nio/Buffer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getTransposeTo(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 0
    .param p1, "target"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 69
    return-void
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/fruitsmobile/basket/math/Matrix;->nativeLoadIdentity(Ljava/nio/Buffer;)V

    .line 61
    return-void
.end method

.method public loadOrtho2D(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/fruitsmobile/basket/math/Matrix;->nativeLoadOrtho2D(Ljava/nio/Buffer;FFFF)V

    .line 65
    return-void
.end method

.method public multiWith(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 2
    .param p1, "other"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/Matrix;->nativeMultiWith(Ljava/nio/Buffer;Ljava/nio/Buffer;)V

    .line 23
    return-void
.end method

.method native nativeWriteMatrixFromQuaternion(Ljava/nio/Buffer;FFFF)V
.end method

.method public pushRotation2D(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lcom/fruitsmobile/basket/math/Matrix;->nativePushRotation2D(Ljava/nio/Buffer;F)V

    .line 50
    return-void
.end method

.method public pushScale2D(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2}, Lcom/fruitsmobile/basket/math/Matrix;->nativePushScale2D(Ljava/nio/Buffer;FF)V

    .line 54
    return-void
.end method

.method public pushTranslate2D(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2}, Lcom/fruitsmobile/basket/math/Matrix;->nativePushTranslate2D(Ljava/nio/Buffer;FF)V

    .line 46
    return-void
.end method

.method public setArray([F)V
    .locals 1
    .param p1, "array"    # [F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fruitsmobile/basket/math/Matrix;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/util/Util;->copyFloatBuffer([FLjava/nio/ByteBuffer;)V

    .line 42
    return-void
.end method
