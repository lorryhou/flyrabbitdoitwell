.class public Lcom/fruitsmobile/basket/resources/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lcom/fruitsmobile/basket/resources/HWResource;


# static fields
.field public static texture_filter:I


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field protected height:I

.field protected imageHeight:I

.field protected imageWidth:I

.field protected isActived:Z

.field protected location:Lcom/fruitsmobile/basket/resources/Location;

.field protected texture:I

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x2600

    sput v0, Lcom/fruitsmobile/basket/resources/Texture;->texture_filter:I

    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Location;)V
    .locals 4
    .param p1, "location"    # Lcom/fruitsmobile/basket/resources/Location;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v2, 0x0

    iput v2, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    .line 30
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/Texture;->location:Lcom/fruitsmobile/basket/resources/Location;

    .line 32
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 36
    invoke-interface {p1}, Lcom/fruitsmobile/basket/resources/Location;->open()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 39
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v2, v3}, Lcom/fruitsmobile/basket/resources/Texture;->initTextureSize(II)V

    .line 45
    return-void

    .line 40
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x0

    .line 97
    if-nez p0, :cond_0

    move-object v6, v8

    .line 125
    :goto_0
    return-object v6

    .line 102
    :cond_0
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 103
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 105
    .local v5, "tBmp":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    move-object v6, v8

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v6, v8

    .line 110
    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 114
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 115
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 117
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 120
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 121
    goto :goto_0

    .line 122
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "tBmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v6, "Basket"

    const-string v7, "Texture.getBitmap() error, bad asset?"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 125
    goto :goto_0
.end method

.method private initTextureSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageWidth:I

    .line 185
    iput p2, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageHeight:I

    .line 186
    invoke-static {p1}, Lcom/fruitsmobile/basket/resources/Texture;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->width:I

    .line 187
    invoke-static {p2}, Lcom/fruitsmobile/basket/resources/Texture;->nextPowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->height:I

    .line 188
    return-void
.end method

.method public static isPowerOfTwo(I)Z
    .locals 2
    .param p0, "x"    # I

    .prologue
    const/4 v1, 0x1

    .line 196
    if-eqz p0, :cond_0

    sub-int v0, p0, v1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextPowerOfTwo(I)I
    .locals 3
    .param p0, "minimum"    # I

    .prologue
    const/4 v2, 0x1

    .line 207
    move v0, p0

    .line 208
    .local v0, "r":I
    :goto_0
    sub-int v1, v0, v2

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 209
    sub-int v1, v0, v2

    and-int/2addr v0, v1

    goto :goto_0

    .line 211
    :cond_0
    if-ge v0, p0, :cond_1

    .line 212
    shl-int/lit8 v0, v0, 0x1

    .line 213
    :cond_1
    return v0
.end method


# virtual methods
.method public active()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->isActived:Z

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->activeResource(Lcom/fruitsmobile/basket/resources/HWResource;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->isActived:Z

    .line 90
    :cond_0
    return-void
.end method

.method public bind()V
    .locals 3

    .prologue
    .line 130
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl:Lcom/fruitsmobile/basket/opengl/GLCommon;

    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/resources/Texture;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 133
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl:Lcom/fruitsmobile/basket/opengl/GLCommon;

    const/16 v1, 0xde1

    iget v2, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    invoke-interface {v0, v1, v2}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glBindTexture(II)V

    .line 134
    return-void
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageHeight:I

    return v0
.end method

.method public getImageHeightProportion()F
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageWidth:I

    return v0
.end method

.method public getImageWidthProportion()F
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->imageWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->height:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->width:I

    return v0
.end method

.method public isActived()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->isActived:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 6
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    const/4 v5, 0x0

    const v4, 0x46240400

    const/16 v3, 0xde1

    .line 139
    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glDeleteTexture(I)V

    .line 143
    invoke-interface {p1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glGenTexture()I

    move-result v1

    iput v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    .line 145
    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    invoke-interface {p1, v3, v1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glBindTexture(II)V

    .line 147
    const/16 v1, 0x2801

    sget v2, Lcom/fruitsmobile/basket/resources/Texture;->texture_filter:I

    int-to-float v2, v2

    invoke-interface {p1, v3, v1, v2}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glTexParameterf(IIF)V

    .line 148
    const/16 v1, 0x2800

    sget v2, Lcom/fruitsmobile/basket/resources/Texture;->texture_filter:I

    int-to-float v2, v2

    invoke-interface {p1, v3, v1, v2}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glTexParameterf(IIF)V

    .line 150
    const/16 v1, 0x2802

    invoke-interface {p1, v3, v1, v4}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glTexParameterf(IIF)V

    .line 151
    const/16 v1, 0x2803

    invoke-interface {p1, v3, v1, v4}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glTexParameterf(IIF)V

    .line 154
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->location:Lcom/fruitsmobile/basket/resources/Location;

    invoke-interface {v1}, Lcom/fruitsmobile/basket/resources/Location;->open()Ljava/io/InputStream;

    move-result-object v0

    .line 156
    .local v0, "is":Ljava/io/InputStream;
    iget v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->width:I

    iget v2, p0, Lcom/fruitsmobile/basket/resources/Texture;->height:I

    invoke-static {v0, v1, v2}, Lcom/fruitsmobile/basket/resources/Texture;->getBitmap(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    .line 157
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 158
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/resources/Texture;->unload(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 161
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v3, v5, v1, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 165
    iget-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->bmp:Landroid/graphics/Bitmap;

    .line 167
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 169
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->registerResource(Lcom/fruitsmobile/basket/resources/HWResource;)V

    goto :goto_0
.end method

.method public onDeactive()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->isActived:Z

    .line 94
    return-void
.end method

.method public setUnloaded()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    .line 77
    return-void
.end method

.method public unload(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    const/4 v1, 0x0

    .line 174
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->isActived:Z

    .line 175
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glDeleteTexture(I)V

    .line 177
    iput v1, p0, Lcom/fruitsmobile/basket/resources/Texture;->texture:I

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->unLoadActive(Lcom/fruitsmobile/basket/resources/HWResource;)V

    .line 180
    invoke-static {p0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->unLoadResource(Lcom/fruitsmobile/basket/resources/HWResource;)V

    .line 181
    return-void
.end method
