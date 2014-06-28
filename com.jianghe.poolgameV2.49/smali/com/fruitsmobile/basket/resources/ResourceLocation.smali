.class public Lcom/fruitsmobile/basket/resources/ResourceLocation;
.super Ljava/lang/Object;
.source "ResourceLocation.java"

# interfaces
.implements Lcom/fruitsmobile/basket/resources/Location;


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/fruitsmobile/basket/resources/ResourceLocation;->id:I

    .line 12
    return-void
.end method


# virtual methods
.method public content()[B
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/resources/ResourceLocation;->open()Ljava/io/InputStream;

    move-result-object v1

    .line 21
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->InputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 22
    .local v2, "ret":[B
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 26
    .end local v2    # "ret":[B
    :goto_0
    return-object v3

    .line 25
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 26
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public open()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/fruitsmobile/basket/util/Util;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/fruitsmobile/basket/resources/ResourceLocation;->id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/fruitsmobile/basket/util/Util;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/fruitsmobile/basket/resources/ResourceLocation;->id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
