.class public Lcom/fruitsmobile/basket/resources/HWResourceManager;
.super Ljava/lang/Object;
.source "HWResourceManager.java"


# static fields
.field public static final MAX_ACTIVE_RESOURCE_COUNT:I = 0x200

.field public static final MAX_RESOURCE_COUNT:I = 0x400

.field protected static activeResources:Lcom/fruitsmobile/basket/util/FastList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fruitsmobile/basket/util/FastList",
            "<",
            "Lcom/fruitsmobile/basket/resources/HWResource;",
            ">;"
        }
    .end annotation
.end field

.field private static fraction:F

.field private static loadingResource:I

.field private static resourceLoaded:I

.field protected static resources:Lcom/fruitsmobile/basket/util/FastList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fruitsmobile/basket/util/FastList",
            "<",
            "Lcom/fruitsmobile/basket/resources/HWResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/fruitsmobile/basket/util/FastList;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/util/FastList;-><init>(I)V

    sput-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    .line 14
    new-instance v0, Lcom/fruitsmobile/basket/util/FastList;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/util/FastList;-><init>(I)V

    sput-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->fraction:F

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static activeResource(Lcom/fruitsmobile/basket/resources/HWResource;)V
    .locals 1
    .param p0, "resource"    # Lcom/fruitsmobile/basket/resources/HWResource;

    .prologue
    .line 21
    sget-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/util/FastList;->push(Ljava/lang/Object;)I

    .line 22
    return-void
.end method

.method public static clearActive()V
    .locals 2

    .prologue
    .line 111
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/FastList;->first()I

    move-result v0

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 112
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fruitsmobile/basket/resources/HWResource;

    invoke-interface {v1}, Lcom/fruitsmobile/basket/resources/HWResource;->onDeactive()V

    .line 111
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v0

    goto :goto_0

    .line 114
    :cond_0
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/FastList;->clear()V

    .line 115
    return-void
.end method

.method public static getLoadingFraction()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->fraction:F

    return v0
.end method

.method public static loadResourceTick(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z
    .locals 4
    .param p0, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;
    .param p1, "loading"    # Lcom/fruitsmobile/basket/interfaces/Loading;

    .prologue
    .line 86
    sget v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    if-gez v2, :cond_0

    .line 87
    const/4 v2, 0x0

    .line 107
    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :goto_0
    return v2

    .line 89
    .restart local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_0
    if-eqz p1, :cond_1

    .line 90
    invoke-interface {p0}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_3

    .line 91
    move-object v0, p0

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL20;

    move-object v2, v0

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/interfaces/Loading;->render(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 97
    :cond_1
    :goto_1
    sget-object v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fruitsmobile/basket/resources/HWResource;

    .line 98
    .local v1, "resource":Lcom/fruitsmobile/basket/resources/HWResource;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/fruitsmobile/basket/resources/HWResource;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    sget-object v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fruitsmobile/basket/resources/HWResource;

    invoke-interface {v2, p0}, Lcom/fruitsmobile/basket/resources/HWResource;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 101
    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_2
    :goto_2
    sget v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    if-ltz v2, :cond_4

    sget-object v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fruitsmobile/basket/resources/HWResource;

    invoke-interface {p0}, Lcom/fruitsmobile/basket/resources/HWResource;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    sget v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    .line 103
    sget-object v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v2

    sput v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    goto :goto_2

    .line 93
    .end local v1    # "resource":Lcom/fruitsmobile/basket/resources/HWResource;
    .restart local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL10;

    move-object v2, v0

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/interfaces/Loading;->render(Lcom/fruitsmobile/basket/opengl/GL10;)V

    goto :goto_1

    .line 105
    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    .restart local v1    # "resource":Lcom/fruitsmobile/basket/resources/HWResource;
    :cond_4
    sget v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    int-to-float v2, v2

    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/util/FastList;->getCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sput v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->fraction:F

    .line 107
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static onDeviceLost()V
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/FastList;->first()I

    move-result v0

    .line 48
    .local v0, "i":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 49
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fruitsmobile/basket/resources/HWResource;

    invoke-interface {v1}, Lcom/fruitsmobile/basket/resources/HWResource;->setUnloaded()V

    .line 48
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/FastList;->clear()V

    .line 52
    return-void
.end method

.method protected static registerResource(Lcom/fruitsmobile/basket/resources/HWResource;)V
    .locals 1
    .param p0, "resource"    # Lcom/fruitsmobile/basket/resources/HWResource;

    .prologue
    .line 17
    sget-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/util/FastList;->push(Ljava/lang/Object;)I

    .line 18
    return-void
.end method

.method public static startLoadResource(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z
    .locals 3
    .param p0, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;
    .param p1, "loading"    # Lcom/fruitsmobile/basket/interfaces/Loading;

    .prologue
    const/4 v2, 0x0

    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_1

    .line 67
    check-cast p0, Lcom/fruitsmobile/basket/opengl/GL20;

    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-interface {p1, p0}, Lcom/fruitsmobile/basket/interfaces/Loading;->load(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 72
    :cond_0
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    .line 73
    sput v2, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->fraction:F

    .line 76
    sget-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/FastList;->first()I

    move-result v0

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    .line 77
    :goto_1
    sget v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    if-ltz v0, :cond_2

    sget-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fruitsmobile/basket/resources/HWResource;

    invoke-interface {p0}, Lcom/fruitsmobile/basket/resources/HWResource;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resourceLoaded:I

    .line 79
    sget-object v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    sget v1, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v0

    sput v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    goto :goto_1

    .line 69
    .restart local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_1
    check-cast p0, Lcom/fruitsmobile/basket/opengl/GL10;

    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-interface {p1, p0}, Lcom/fruitsmobile/basket/interfaces/Loading;->load(Lcom/fruitsmobile/basket/opengl/GL10;)V

    goto :goto_0

    .line 82
    :cond_2
    sget v0, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadingResource:I

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected static unLoadActive(Lcom/fruitsmobile/basket/resources/HWResource;)V
    .locals 4
    .param p0, "resource"    # Lcom/fruitsmobile/basket/resources/HWResource;

    .prologue
    .line 25
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/util/FastList;->first()I

    move-result v1

    .local v1, "i":I
    const/4 v2, -0x1

    .line 26
    .local v2, "pre":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 27
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v1}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fruitsmobile/basket/resources/HWResource;

    .line 28
    .local v0, "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    if-ne v0, p0, :cond_1

    .line 29
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v2, v1}, Lcom/fruitsmobile/basket/util/FastList;->release(II)V

    .line 33
    .end local v0    # "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    :cond_0
    return-void

    .line 26
    .restart local v0    # "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    :cond_1
    move v2, v1

    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v1}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v1

    goto :goto_0
.end method

.method protected static unLoadResource(Lcom/fruitsmobile/basket/resources/HWResource;)V
    .locals 4
    .param p0, "resource"    # Lcom/fruitsmobile/basket/resources/HWResource;

    .prologue
    .line 36
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/util/FastList;->first()I

    move-result v1

    .local v1, "i":I
    const/4 v2, -0x1

    .line 37
    .local v2, "pre":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 38
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v1}, Lcom/fruitsmobile/basket/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fruitsmobile/basket/resources/HWResource;

    .line 39
    .local v0, "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    if-ne v0, p0, :cond_1

    .line 40
    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v2, v1}, Lcom/fruitsmobile/basket/util/FastList;->release(II)V

    .line 44
    .end local v0    # "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    :cond_0
    return-void

    .line 37
    .restart local v0    # "hw":Lcom/fruitsmobile/basket/resources/HWResource;
    :cond_1
    move v2, v1

    sget-object v3, Lcom/fruitsmobile/basket/resources/HWResourceManager;->resources:Lcom/fruitsmobile/basket/util/FastList;

    invoke-virtual {v3, v1}, Lcom/fruitsmobile/basket/util/FastList;->next(I)I

    move-result v1

    goto :goto_0
.end method
