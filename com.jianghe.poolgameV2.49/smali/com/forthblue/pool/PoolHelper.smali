.class public Lcom/forthblue/pool/PoolHelper;
.super Ljava/lang/Object;
.source "PoolHelper.java"


# static fields
.field private static _texture_atlas_manager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fruitsmobile/basket/resources/TextureAtlas;",
            ">;"
        }
    .end annotation
.end field

.field private static textures_asset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fruitsmobile/basket/resources/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static textures_resource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/fruitsmobile/basket/resources/Texture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/forthblue/pool/PoolHelper;->_texture_atlas_manager:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 3
    .param p0, "resourceid"    # I

    .prologue
    .line 18
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "resourceid":I
    check-cast p0, Lcom/fruitsmobile/basket/resources/Texture;

    move-object v1, p0

    .line 28
    :goto_0
    return-object v1

    .line 24
    .restart local p0    # "resourceid":I
    :cond_0
    new-instance v0, Lcom/fruitsmobile/basket/resources/Texture;

    new-instance v1, Lcom/fruitsmobile/basket/resources/ResourceLocation;

    invoke-direct {v1, p0}, Lcom/fruitsmobile/basket/resources/ResourceLocation;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/resources/Texture;-><init>(Lcom/fruitsmobile/basket/resources/Location;)V

    .line 25
    .local v0, "ret":Lcom/fruitsmobile/basket/resources/Texture;
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->active()V

    .line 27
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 28
    goto :goto_0
.end method

.method public static loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->_texture_atlas_manager:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->_texture_atlas_manager:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-object v1, p0

    .line 62
    :goto_0
    return-object v1

    .line 60
    .restart local p0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/fruitsmobile/basket/resources/TextureAtlas;

    new-instance v1, Lcom/fruitsmobile/basket/resources/AssetsLocation;

    invoke-direct {v1, p0}, Lcom/fruitsmobile/basket/resources/AssetsLocation;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;-><init>(Lcom/fruitsmobile/basket/resources/Location;)V

    .line 61
    .local v0, "result":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->_texture_atlas_manager:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 62
    goto :goto_0
.end method

.method public static loadTextureFromAsset(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 2
    .param p0, "asset_name"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "asset_name":Ljava/lang/String;
    check-cast p0, Lcom/fruitsmobile/basket/resources/Texture;

    move-object v1, p0

    .line 39
    :goto_0
    return-object v1

    .line 35
    .restart local p0    # "asset_name":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/fruitsmobile/basket/resources/Texture;

    new-instance v1, Lcom/fruitsmobile/basket/resources/AssetsLocation;

    invoke-direct {v1, p0}, Lcom/fruitsmobile/basket/resources/AssetsLocation;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/resources/Texture;-><init>(Lcom/fruitsmobile/basket/resources/Location;)V

    .line 36
    .local v0, "result":Lcom/fruitsmobile/basket/resources/Texture;
    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->active()V

    .line 38
    sget-object v1, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 39
    goto :goto_0
.end method

.method public static onDestory()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->_texture_atlas_manager:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 68
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 69
    return-void
.end method

.method public static unLoadTexture(I)V
    .locals 2
    .param p0, "resourceid"    # I

    .prologue
    .line 43
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_resource:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    return-void
.end method

.method public static unLoadTextureAsset(I)V
    .locals 2
    .param p0, "asset_name"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/forthblue/pool/PoolHelper;->textures_asset:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    return-void
.end method
