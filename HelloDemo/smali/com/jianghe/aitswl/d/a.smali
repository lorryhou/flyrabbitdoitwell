.class public Lcom/jianghe/aitswl/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/Map;

.field private static d:I

.field private static e:Ljava/util/Map;

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/jianghe/aitswl/d/a;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/aitswl/d/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/aitswl/d/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/aitswl/d/a;->e:Ljava/util/Map;

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jianghe/aitswl/d/a;->f:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb5f
        0xf5f
        0x1374
        0x16a8
        0x1b2b
        0x2faa
        0x4489
        0x522a
        0x7087
        0xa28a
        0xa438
        0xb0d0
        0xbc33
        0xd3f5
        0xec43
    .end array-data
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/jianghe/aitswl/d/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jianghe/aitswl/d/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/jianghe/aitswl/d/a;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jianghe/aitswl/d/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Lcom/jianghe/aitswl/d/a;->d:I

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/jianghe/aitswl/d/a;->d:I

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/jianghe/aitswl/d/a;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    sget v0, Lcom/jianghe/aitswl/d/a;->d:I

    int-to-float v0, v0

    sget v1, Lcom/jianghe/aitswl/d/a;->d:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    mul-float/2addr v1, v2

    const/high16 v2, 0x43700000

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jianghe/aitswl/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jianghe/aitswl/h;->ce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jianghe/aitswl/h;->B:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, Lcom/jianghe/aitswl/d/a;->f:[I

    add-int/lit8 v5, p1, -0x1

    aget v3, v3, v5

    int-to-long v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    :goto_0
    :try_start_3
    sget-object v0, Lcom/jianghe/aitswl/d/a;->f:[I

    aget v0, v0, p1

    sget-object v5, Lcom/jianghe/aitswl/d/a;->f:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    sub-int/2addr v0, v5

    new-array v0, v0, [B

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    sget v5, Lcom/jianghe/aitswl/d/a;->a:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    sget-object v0, Lcom/jianghe/aitswl/h;->cf:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jianghe/aitswl/ay;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/jianghe/aitswl/d/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/jianghe/aitswl/d/a;->a:I

    invoke-static {p0, p1}, Lcom/jianghe/aitswl/d/a;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v4, 0x0

    :try_start_5
    sput v4, Lcom/jianghe/aitswl/d/a;->a:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_2
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_2
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_3
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_4
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :cond_5
    move-object v3, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    sget-object v0, Lcom/jianghe/aitswl/d/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jianghe/aitswl/d/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/jianghe/aitswl/d/a;->b(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, v0}, Lcom/jianghe/aitswl/d/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/d/a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;I)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/jianghe/aitswl/d/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3}, Lcom/jianghe/aitswl/d/d;->a([B)Lcom/jianghe/aitswl/d/d;

    move-result-object v5

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v5, v5, Lcom/jianghe/aitswl/d/d;->a:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v3, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    sget v0, Lcom/jianghe/aitswl/d/a;->d:I

    if-nez v0, :cond_1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/jianghe/aitswl/d/a;->d:I

    :cond_1
    sget v0, Lcom/jianghe/aitswl/d/a;->d:I

    int-to-float v0, v0

    sget v3, Lcom/jianghe/aitswl/d/a;->d:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    const/high16 v4, 0x43700000

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTargetDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
