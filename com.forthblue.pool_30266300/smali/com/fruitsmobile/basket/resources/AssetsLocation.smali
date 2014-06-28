.class public Lcom/fruitsmobile/basket/resources/AssetsLocation;
.super Ljava/lang/Object;
.source "AssetsLocation.java"

# interfaces
.implements Lcom/fruitsmobile/basket/resources/Location;


# instance fields
.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/AssetsLocation;->path:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public content()[B
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/resources/AssetsLocation;->open()Ljava/io/InputStream;

    move-result-object v1

    .line 32
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->InputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 33
    .local v2, "ret":[B
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 38
    .end local v2    # "ret":[B
    :goto_0
    return-object v3

    .line 37
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 38
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public open()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 19
    :try_start_0
    sget-object v1, Lcom/fruitsmobile/basket/util/Util;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fruitsmobile/basket/resources/AssetsLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 22
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Basket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fruitsmobile/basket/resources/AssetsLocation;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Asset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/AssetsLocation;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
