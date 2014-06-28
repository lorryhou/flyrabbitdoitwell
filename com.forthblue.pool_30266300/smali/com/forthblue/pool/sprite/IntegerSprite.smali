.class public Lcom/forthblue/pool/sprite/IntegerSprite;
.super Lcom/forthblue/pool/sprite/TextSprite;
.source "IntegerSprite.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private buf:[C

.field private fillZero:Z

.field private lastCS:Ljava/lang/CharSequence;

.field private lastValue:I

.field private len:I

.field private prefix:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;
    .param p3, "len"    # I

    .prologue
    .line 6
    invoke-direct {p0, p2}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->fillZero:Z

    .line 8
    iput-object p1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->prefix:Ljava/lang/CharSequence;

    .line 9
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->buf:[C

    .line 10
    iput p3, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->buf:[C

    iget-object v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->prefix:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setFillZero(Z)V
    .locals 2
    .param p1, "bV"    # Z

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->fillZero:Z

    if-eq v0, p1, :cond_0

    .line 56
    iput-boolean p1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->fillZero:Z

    .line 58
    iget v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    .line 59
    iget v0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    .line 18
    iget v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    if-ne p1, v1, :cond_1

    .line 19
    iget-object v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastCS:Ljava/lang/CharSequence;

    if-eq v1, p0, :cond_0

    .line 20
    iput-object p0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastCS:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {p0, p0}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iput p1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastValue:I

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    if-ge v0, v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->buf:[C

    iget v2, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    rem-int/lit8 v3, p1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 30
    div-int/lit8 p1, p1, 0xa

    .line 31
    iget-boolean v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->fillZero:Z

    if-nez v1, :cond_3

    .line 32
    if-nez p1, :cond_3

    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    if-ge v0, v1, :cond_4

    .line 38
    iget-object v1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->buf:[C

    iget v2, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->len:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    const/16 v3, 0x20

    aput-char v3, v1, v2

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 28
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_4
    iput-object p0, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastCS:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0, p0}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/forthblue/pool/sprite/IntegerSprite;->lastCS:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
