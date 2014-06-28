.class public Lcom/fruitsmobile/basket/util/FastList;
.super Ljava/lang/Object;
.source "FastList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_FASTLIST_SIZE:I = 0x100


# instance fields
.field count:I

.field first:I

.field protected list:[Ljava/lang/Object;

.field protected next:[I

.field recycle:I

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/fruitsmobile/basket/util/FastList;-><init>(I)V

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    .line 8
    iput v0, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .line 9
    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->top:I

    .line 10
    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    .line 17
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/fruitsmobile/basket/util/FastList;->list:[Ljava/lang/Object;

    .line 18
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 26
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .local v0, "i":I
    :goto_0
    if-eq v0, v3, :cond_0

    .line 27
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->list:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 26
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    aget v0, v1, v0

    goto :goto_0

    .line 29
    :cond_0
    iput v3, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .line 30
    iput v3, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    .line 31
    iput v4, p0, Lcom/fruitsmobile/basket/util/FastList;->top:I

    .line 32
    iput v4, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    .line 33
    return-void
.end method

.method public first()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TType;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/FastList;->list:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    return v0
.end method

.method public next(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    iget-object v0, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    aget v0, v0, p1

    return v0
.end method

.method public push(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)I"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    .local p1, "t":Ljava/lang/Object;, "TType;"
    iget v1, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    if-ltz v1, :cond_0

    .line 38
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    .line 39
    .local v0, "id":I
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    iget v2, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    aget v1, v1, v2

    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->list:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 43
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    iget v2, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    aput v2, v1, v0

    .line 44
    iput v0, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .line 45
    iget v1, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    .line 46
    return v0

    .line 41
    .end local v0    # "id":I
    :cond_0
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->top:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->top:I

    .restart local v0    # "id":I
    goto :goto_0
.end method

.method public release(II)V
    .locals 3
    .param p1, "pre"    # I
    .param p2, "now"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/fruitsmobile/basket/util/FastList;, "Lcom/fruitsmobile/basket/util/FastList<TType;>;"
    iget v1, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    if-ne p2, v1, :cond_0

    .line 61
    iget v0, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .line 62
    .local v0, "id":I
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    iget v2, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    aget v1, v1, v2

    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->first:I

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    iget v2, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    aput v2, v1, v0

    .line 70
    iput v0, p0, Lcom/fruitsmobile/basket/util/FastList;->recycle:I

    .line 71
    iget v1, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/fruitsmobile/basket/util/FastList;->count:I

    .line 72
    return-void

    .line 64
    .end local v0    # "id":I
    :cond_0
    move v0, p2

    .line 65
    .restart local v0    # "id":I
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->list:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 66
    iget-object v1, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    iget-object v2, p0, Lcom/fruitsmobile/basket/util/FastList;->next:[I

    aget v2, v2, p2

    aput v2, v1, p1

    goto :goto_0
.end method
