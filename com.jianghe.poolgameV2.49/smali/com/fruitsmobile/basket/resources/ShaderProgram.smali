.class public Lcom/fruitsmobile/basket/resources/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"

# interfaces
.implements Lcom/fruitsmobile/basket/resources/HWResource;


# instance fields
.field protected attributes:[Ljava/lang/String;

.field protected attributesIndex:[I

.field protected fShaderSrc:Lcom/fruitsmobile/basket/resources/Location;

.field isActived:Z

.field protected shaderId:I

.field protected vShaderSrc:Lcom/fruitsmobile/basket/resources/Location;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;)V
    .locals 1
    .param p1, "vShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p2, "fShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p3, "attributes"    # [Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    .line 15
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->vShaderSrc:Lcom/fruitsmobile/basket/resources/Location;

    .line 16
    iput-object p2, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->fShaderSrc:Lcom/fruitsmobile/basket/resources/Location;

    .line 17
    iput-object p3, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributes:[Ljava/lang/String;

    .line 18
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributesIndex:[I

    .line 19
    return-void
.end method


# virtual methods
.method public active()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->isActived:Z

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResource(Lcom/fruitsmobile/basket/resources/HWResource;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->isActived:Z

    .line 80
    :cond_0
    return-void
.end method

.method public getAttribLocation(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributesIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAttribLocation(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    invoke-interface {v0, v1, p1}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isActived()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->isActived:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 8
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 33
    iget v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    if-nez v5, :cond_2

    invoke-interface {p1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v5

    const/high16 v6, 0x20000

    if-lt v5, v6, :cond_2

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL20;

    move-object v2, v0

    .line 35
    .local v2, "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    const v5, 0x8b31

    iget-object v6, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->vShaderSrc:Lcom/fruitsmobile/basket/resources/Location;

    invoke-interface {v6}, Lcom/fruitsmobile/basket/resources/Location;->content()[B

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/fruitsmobile/basket/opengl/GL20;->bglCompileShader(I[B)I

    move-result v4

    .line 36
    .local v4, "vShader":I
    const v5, 0x8b30

    iget-object v6, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->fShaderSrc:Lcom/fruitsmobile/basket/resources/Location;

    invoke-interface {v6}, Lcom/fruitsmobile/basket/resources/Location;->content()[B

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/fruitsmobile/basket/opengl/GL20;->bglCompileShader(I[B)I

    move-result v1

    .line 37
    .local v1, "fShader":I
    invoke-interface {v2, v4, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->bglLinkProgram(II)I

    move-result v5

    iput v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    .line 38
    invoke-interface {v2, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glDeleteShader(I)V

    .line 39
    invoke-interface {v2, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glDeleteShader(I)V

    .line 41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 42
    iget v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    iget-object v6, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributes:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v2, v5, v3, v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 46
    iget-object v5, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributesIndex:[I

    iget v6, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    iget-object v7, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->attributes:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-interface {v2, v6, v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    aput v6, v5, v3

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->registerResource(Lcom/fruitsmobile/basket/resources/HWResource;)V

    .line 50
    .end local v1    # "fShader":I
    .end local v2    # "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    .end local v3    # "i":I
    .end local v4    # "vShader":I
    :cond_2
    return-void
.end method

.method public onDeactive()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->isActived:Z

    .line 85
    return-void
.end method

.method public setUnloaded()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    .line 29
    return-void
.end method

.method public unload(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 54
    iget v2, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL20;

    move-object v1, v0

    .line 56
    .local v1, "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    iget v2, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    invoke-interface {v1, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glDeleteProgram(I)V

    .line 58
    .end local v1    # "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    :cond_0
    return-void
.end method

.method public use(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/resources/ShaderProgram;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "must load before use!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/fruitsmobile/basket/resources/ShaderProgram;->shaderId:I

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glUseProgram(I)V

    .line 65
    return-void
.end method
