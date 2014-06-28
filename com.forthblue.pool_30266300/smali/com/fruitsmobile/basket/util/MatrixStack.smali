.class public Lcom/fruitsmobile/basket/util/MatrixStack;
.super Ljava/lang/Object;
.source "MatrixStack.java"


# static fields
.field public static final MAX_STACK_SIZE:I = 0x20

.field private static instance:Lcom/fruitsmobile/basket/util/MatrixStack;


# instance fields
.field private stack:[Lcom/fruitsmobile/basket/math/Matrix;

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/fruitsmobile/basket/util/MatrixStack;->instance:Lcom/fruitsmobile/basket/util/MatrixStack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/fruitsmobile/basket/util/MatrixStack;-><init>(I)V

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    .line 25
    new-array v1, p1, [Lcom/fruitsmobile/basket/math/Matrix;

    iput-object v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    new-instance v2, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v2}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/util/MatrixStack;->reset()V

    .line 30
    return-void
.end method


# virtual methods
.method public getInstance()Lcom/fruitsmobile/basket/util/MatrixStack;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/fruitsmobile/basket/util/MatrixStack;->instance:Lcom/fruitsmobile/basket/util/MatrixStack;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/util/MatrixStack;->instance:Lcom/fruitsmobile/basket/util/MatrixStack;

    .line 13
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/util/MatrixStack;->instance:Lcom/fruitsmobile/basket/util/MatrixStack;

    return-object v0
.end method

.method public isOnScreen(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r"    # I

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public pop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    iget v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    if-nez v0, :cond_0

    .line 44
    iput v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    .line 45
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->loadIdentity()V

    .line 47
    :cond_0
    return-void
.end method

.method public push()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    iget v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    iget v2, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 39
    iget v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    .line 40
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    .line 34
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->loadIdentity()V

    .line 35
    return-void
.end method

.method public top()Lcom/fruitsmobile/basket/math/Matrix;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->stack:[Lcom/fruitsmobile/basket/math/Matrix;

    iget v1, p0, Lcom/fruitsmobile/basket/util/MatrixStack;->top:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public transform2D(FF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
