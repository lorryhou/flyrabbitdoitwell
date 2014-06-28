.class public Lcom/fruitsmobile/basket/resources/StringCodeLocation;
.super Ljava/lang/Object;
.source "StringCodeLocation.java"

# interfaces
.implements Lcom/fruitsmobile/basket/resources/Location;


# instance fields
.field private code:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/fruitsmobile/basket/resources/StringCodeLocation;->code:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    return-void

    .line 11
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 12
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/fruitsmobile/basket/resources/StringCodeLocation;->code:[B

    goto :goto_0
.end method


# virtual methods
.method public content()[B
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/resources/StringCodeLocation;->code:[B

    return-object v0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/StringCodeLocation;->code:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "inner"

    return-object v0
.end method
