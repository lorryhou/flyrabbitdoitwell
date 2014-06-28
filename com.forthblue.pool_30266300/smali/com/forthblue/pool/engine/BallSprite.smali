.class public Lcom/forthblue/pool/engine/BallSprite;
.super Lcom/fruitsmobile/basket/SpriteBase;
.source "BallSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/engine/BallSprite$1;,
        Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;,
        Lcom/forthblue/pool/engine/BallSprite$Snapshot;
    }
.end annotation


# static fields
.field public static final BALL_LEVELNUM:I = 0x6

.field public static final BALL_LEVELS:I = 0x6

.field private static final fShaderSrc:Ljava/lang/String; = "precision mediump float;uniform sampler2D u_texture;uniform mat4 u_ballMatrix;uniform vec4 u_Color;varying vec2 v_ballPosition;void main(){\tfloat r = dot(v_ballPosition.xy, v_ballPosition.xy);\tif (r > 0.9){\t\tdiscard;\t} else {\t\tvec4 realP = vec4(v_ballPosition.x, v_ballPosition.y, sqrt(1.0 - r), 1.0);\t\tfloat lightv = dot(realP.xyz, vec3(0.0, 0.0, 1.0)) * 0.7 + 0.3;\t\trealP = u_ballMatrix * realP;\t\tvec2 texcoord = vec2(acos(clamp(realP.z/ sqrt(max(1.0 - realP.y * realP.y, 0.0)), -1.0, 1.0)) / 6.283185307179586476925286766559\t\t\t\t\t,acos(-realP.y) / 3.1415926535897932384626433832795);\t\ttexcoord.x = texcoord.x * (1.0 - step(realP.x, 0.0)*2.0) + 0.5;\t\tvec4 retColor = texture2D(u_texture, texcoord);\t\tgl_FragColor = u_Color * vec4(lightv * retColor.xyz, retColor.w); \t}}"

.field protected static indexBuffer:Ljava/nio/ByteBuffer; = null

.field protected static indexCount:I = 0x0

.field protected static pointCount:I = 0x0

.field protected static program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram; = null

.field public static texcoordBuffer:Ljava/nio/ByteBuffer; = null

.field private static final vShaderSrc:Ljava/lang/String; = "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;varying vec2 v_ballPosition;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_ballPosition = a_Position.xy;}"

.field public static vertexBuffer:Ljava/nio/ByteBuffer;

.field protected static vertexBufferForGL2:Ljava/nio/ByteBuffer;


# instance fields
.field public alpha:F

.field public blue:F

.field public green:F

.field quat:Lcom/fruitsmobile/basket/math/Quaternion;

.field public red:F

.field public scale:F

.field protected texture:Lcom/fruitsmobile/basket/resources/Texture;

.field tmp:Lcom/fruitsmobile/basket/math/Matrix;

.field tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/forthblue/pool/engine/BallSprite;->vertexBufferForGL2:Ljava/nio/ByteBuffer;

    .line 46
    invoke-static {}, Lcom/forthblue/pool/engine/BallSprite;->prepareBuffer()V

    .line 289
    new-instance v0, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    new-instance v1, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v2, "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;varying vec2 v_ballPosition;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_ballPosition = a_Position.xy;}"

    invoke-direct {v1, v2}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v3, "precision mediump float;uniform sampler2D u_texture;uniform mat4 u_ballMatrix;uniform vec4 u_Color;varying vec2 v_ballPosition;void main(){\tfloat r = dot(v_ballPosition.xy, v_ballPosition.xy);\tif (r > 0.9){\t\tdiscard;\t} else {\t\tvec4 realP = vec4(v_ballPosition.x, v_ballPosition.y, sqrt(1.0 - r), 1.0);\t\tfloat lightv = dot(realP.xyz, vec3(0.0, 0.0, 1.0)) * 0.7 + 0.3;\t\trealP = u_ballMatrix * realP;\t\tvec2 texcoord = vec2(acos(clamp(realP.z/ sqrt(max(1.0 - realP.y * realP.y, 0.0)), -1.0, 1.0)) / 6.283185307179586476925286766559\t\t\t\t\t,acos(-realP.y) / 3.1415926535897932384626433832795);\t\ttexcoord.x = texcoord.x * (1.0 - step(realP.x, 0.0)*2.0) + 0.5;\t\tvec4 retColor = texture2D(u_texture, texcoord);\t\tgl_FragColor = u_Color * vec4(lightv * retColor.xyz, retColor.w); \t}}"

    invoke-direct {v2, v3}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a_Position"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    return-void

    .line 30
    :array_0
    .array-data 4
        -0x40800000
        -0x40800000
        -0x40800000
        0x3f800000
        0x3f800000
        -0x40800000
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    .line 33
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 42
    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->scale:F

    .line 43
    iput v0, p0, Lcom/forthblue/pool/engine/BallSprite;->x:F

    iput v0, p0, Lcom/forthblue/pool/engine/BallSprite;->y:F

    .line 140
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    .line 163
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    .line 190
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    .line 292
    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->red:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->blue:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->green:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->alpha:F

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    .line 36
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 42
    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->scale:F

    .line 43
    iput v0, p0, Lcom/forthblue/pool/engine/BallSprite;->x:F

    iput v0, p0, Lcom/forthblue/pool/engine/BallSprite;->y:F

    .line 140
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    .line 163
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    .line 190
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    .line 292
    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->red:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->blue:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->green:F

    iput v1, p0, Lcom/forthblue/pool/engine/BallSprite;->alpha:F

    .line 37
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/engine/BallSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 38
    return-void
.end method

.method private static prepareBuffer()V
    .locals 14

    .prologue
    .line 50
    const/16 v0, 0x25

    sput v0, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    .line 51
    sget v0, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    mul-int/lit8 v0, v0, 0x3

    new-array v10, v0, [F

    .line 52
    .local v10, "vertex":[F
    sget v0, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [F

    .line 53
    .local v9, "texcoord":[F
    const/16 v0, 0x54

    new-array v5, v0, [S

    .line 55
    .local v5, "index":[S
    const/4 v0, 0x0

    .local v0, "c":I
    const/4 v1, 0x0

    .line 58
    .local v1, "d":I
    const/4 v2, 0x7

    new-array v8, v2, [F

    .line 59
    .local v8, "sint":[F
    const/4 v2, 0x7

    new-array v2, v2, [F

    .line 60
    .local v2, "cost":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 61
    const/high16 v4, 0x42700000

    int-to-float v6, v3

    mul-float/2addr v4, v6

    .line 62
    .local v4, "r":F
    invoke-static {v4}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v6

    aput v6, v8, v3

    .line 63
    invoke-static {v4}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v4

    .end local v4    # "r":F
    aput v4, v2, v3

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, v8, v4

    .end local v3    # "i":I
    aput v4, v8, v3

    .line 66
    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, v2, v4

    aput v4, v2, v3

    .line 68
    const/4 v3, 0x0

    .restart local v3    # "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    move v3, v1

    .end local v1    # "d":I
    .local v3, "d":I
    move v1, v0

    .end local v0    # "c":I
    .local v1, "c":I
    :goto_1
    const/4 v0, 0x6

    if-gt v4, v0, :cond_3

    .line 69
    if-nez v4, :cond_1

    .line 70
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/4 v6, 0x0

    aput v6, v10, v1

    .line 71
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    const/high16 v6, -0x40800000

    aput v6, v10, v0

    .line 72
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/4 v6, 0x0

    aput v6, v10, v1

    .line 74
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "d":I
    .local v1, "d":I
    const/high16 v6, 0x3f000000

    aput v6, v9, v3

    .line 75
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "d":I
    .restart local v3    # "d":I
    const/4 v6, 0x0

    aput v6, v9, v1

    move v1, v3

    .line 68
    .end local v3    # "d":I
    .restart local v1    # "d":I
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    move v3, v1

    .end local v1    # "d":I
    .local v3, "d":I
    move v1, v0

    .end local v0    # "c":I
    .local v1, "c":I
    goto :goto_1

    .line 76
    :cond_1
    const/4 v0, 0x6

    if-ne v4, v0, :cond_2

    .line 77
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/4 v6, 0x0

    aput v6, v10, v1

    .line 78
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    const/high16 v6, 0x3f800000

    aput v6, v10, v0

    .line 79
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/4 v6, 0x0

    aput v6, v10, v1

    .line 81
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "d":I
    .local v1, "d":I
    const/high16 v6, 0x3f000000

    aput v6, v9, v3

    .line 82
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "d":I
    .restart local v3    # "d":I
    const/high16 v6, 0x3f800000

    aput v6, v9, v1

    move v1, v3

    .end local v3    # "d":I
    .restart local v1    # "d":I
    goto :goto_2

    .line 84
    .end local v0    # "c":I
    .local v1, "c":I
    .restart local v3    # "d":I
    :cond_2
    const/high16 v0, 0x43340000

    const/high16 v6, 0x41f00000

    int-to-float v7, v4

    mul-float/2addr v6, v7

    sub-float/2addr v0, v6

    invoke-static {v0}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v11

    .line 85
    .local v11, "y":F
    const/high16 v0, 0x3f800000

    mul-float v6, v11, v11

    sub-float/2addr v0, v6

    invoke-static {v0}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .line 86
    .local v7, "r":F
    const/4 v0, 0x0

    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .local v6, "j":I
    :goto_3
    const/4 v0, 0x6

    if-gt v6, v0, :cond_a

    .line 87
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .local v0, "c":I
    neg-float v12, v7

    aget v13, v8, v6

    mul-float/2addr v12, v13

    aput v12, v10, v1

    .line 88
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput v11, v10, v0

    .line 89
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    neg-float v12, v7

    aget v13, v2, v6

    mul-float/2addr v12, v13

    aput v12, v10, v1

    .line 91
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "d":I
    .local v1, "d":I
    const v12, 0x3e2aaaab

    int-to-float v13, v6

    mul-float/2addr v12, v13

    aput v12, v9, v3

    .line 92
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "d":I
    .restart local v3    # "d":I
    const v12, 0x3e2aaaab

    int-to-float v13, v4

    mul-float/2addr v12, v13

    aput v12, v9, v1

    .line 86
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "j":I
    .local v1, "j":I
    move v6, v1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    move v1, v0

    .end local v0    # "c":I
    .local v1, "c":I
    goto :goto_3

    .line 97
    .end local v6    # "j":I
    .end local v7    # "r":F
    .end local v11    # "y":F
    :cond_3
    div-int/lit8 v0, v1, 0x3

    sput v0, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    .line 99
    const/4 v0, 0x0

    .line 101
    .end local v1    # "c":I
    .restart local v0    # "c":I
    const/4 v1, 0x0

    .end local v4    # "i":I
    .local v1, "i":I
    move v4, v1

    .end local v1    # "i":I
    .end local v2    # "cost":[F
    .end local v3    # "d":I
    .end local v8    # "sint":[F
    .restart local v4    # "i":I
    :goto_4
    const/4 v1, 0x6

    if-ge v4, v1, :cond_9

    .line 102
    if-nez v4, :cond_4

    const/4 v1, 0x0

    :goto_5
    int-to-short v8, v1

    .line 103
    .local v8, "topjbase":S
    add-int/lit8 v1, v4, 0x1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    sget v1, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_6
    int-to-short v3, v1

    .line 104
    .local v3, "downjbase":S
    const/4 v1, 0x0

    .local v1, "j":I
    move v6, v1

    .end local v1    # "j":I
    .restart local v6    # "j":I
    move v1, v0

    .end local v0    # "c":I
    .local v1, "c":I
    :goto_7
    const/4 v0, 0x6

    if-gt v6, v0, :cond_8

    .line 105
    if-nez v4, :cond_6

    const/4 v0, 0x0

    :goto_8
    int-to-short v7, v0

    .line 106
    .local v7, "topj":S
    add-int/lit8 v0, v4, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    sget v0, Lcom/forthblue/pool/engine/BallSprite;->pointCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_9
    int-to-short v2, v0

    .line 107
    .local v2, "downj":S
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    aput-short v7, v5, v1

    .line 108
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "c":I
    .restart local v1    # "c":I
    aput-short v2, v5, v0

    .line 104
    add-int/lit8 v0, v6, 0x1

    .end local v6    # "j":I
    .local v0, "j":I
    move v6, v0

    .end local v0    # "j":I
    .restart local v6    # "j":I
    goto :goto_7

    .line 102
    .end local v1    # "c":I
    .end local v2    # "downj":S
    .end local v3    # "downjbase":S
    .end local v6    # "j":I
    .end local v7    # "topj":S
    .end local v8    # "topjbase":S
    .local v0, "c":I
    :cond_4
    const/4 v1, 0x1

    sub-int v1, v4, v1

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 103
    .restart local v8    # "topjbase":S
    :cond_5
    mul-int/lit8 v1, v4, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 105
    .end local v0    # "c":I
    .restart local v1    # "c":I
    .restart local v3    # "downjbase":S
    .restart local v6    # "j":I
    :cond_6
    add-int v0, v8, v6

    goto :goto_8

    .line 106
    .restart local v7    # "topj":S
    :cond_7
    add-int v0, v3, v6

    goto :goto_9

    .line 101
    .end local v7    # "topj":S
    :cond_8
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "i":I
    .local v0, "i":I
    move v4, v0

    .end local v0    # "i":I
    .restart local v4    # "i":I
    move v0, v1

    .end local v1    # "c":I
    .local v0, "c":I
    goto :goto_4

    .line 112
    .end local v3    # "downjbase":S
    .end local v6    # "j":I
    .end local v8    # "topjbase":S
    :cond_9
    sput v0, Lcom/forthblue/pool/engine/BallSprite;->indexCount:I

    .line 114
    invoke-static {v9}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    .end local v0    # "c":I
    sput-object v0, Lcom/forthblue/pool/engine/BallSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 115
    invoke-static {v10}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/forthblue/pool/engine/BallSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 116
    invoke-static {v5}, Lcom/fruitsmobile/basket/util/Util;->createShortBuffer([S)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/forthblue/pool/engine/BallSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    .line 117
    return-void

    .restart local v1    # "c":I
    .local v2, "cost":[F
    .local v3, "d":I
    .restart local v6    # "j":I
    .local v7, "r":F
    .local v8, "sint":[F
    .restart local v11    # "y":F
    :cond_a
    move v0, v1

    .end local v1    # "c":I
    .restart local v0    # "c":I
    move v1, v3

    .end local v3    # "d":I
    .local v1, "d":I
    goto/16 :goto_2
.end method


# virtual methods
.method protected checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 214
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->isActived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->active()V

    .line 217
    :cond_0
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 220
    :cond_1
    return-void
.end method

.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/forthblue/pool/engine/BallSprite;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const/4 v2, 0x0

    .line 160
    :goto_0
    return v2

    .line 147
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;

    move-object v1, v0

    .line 149
    .local v1, "ss":Lcom/forthblue/pool/engine/BallSprite$Snapshot;
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v2

    iget-object v3, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 150
    iget-object v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    iget v3, p0, Lcom/forthblue/pool/engine/BallSprite;->x:F

    iget v4, p0, Lcom/forthblue/pool/engine/BallSprite;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 151
    iget-object v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    iget v3, p0, Lcom/forthblue/pool/engine/BallSprite;->scale:F

    iget v4, p0, Lcom/forthblue/pool/engine/BallSprite;->scale:F

    invoke-virtual {v2, v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 153
    iget-object v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v3, p0, Lcom/forthblue/pool/engine/BallSprite;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/math/Quaternion;->copyFrom(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 155
    iget v2, p0, Lcom/forthblue/pool/engine/BallSprite;->red:F

    iput v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->red:F

    .line 156
    iget v2, p0, Lcom/forthblue/pool/engine/BallSprite;->blue:F

    iput v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->blue:F

    .line 157
    iget v2, p0, Lcom/forthblue/pool/engine/BallSprite;->green:F

    iput v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->green:F

    .line 158
    iget v2, p0, Lcom/forthblue/pool/engine/BallSprite;->alpha:F

    iput v2, v1, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    .line 160
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected createSnapshotData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/engine/BallSprite$Snapshot;-><init>(Lcom/forthblue/pool/engine/BallSprite$1;)V

    return-object v0
.end method

.method public getTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 9
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 167
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;

    move-object v8, v0

    .line 169
    .local v8, "ss":Lcom/forthblue/pool/engine/BallSprite$Snapshot;
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v2, v2, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    iput v2, v1, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    .line 170
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v2, v2, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    neg-float v2, v2

    iput v2, v1, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    .line 171
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v2, v2, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    iput v2, v1, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    .line 172
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v2, v2, Lcom/fruitsmobile/basket/math/Quaternion;->c:F

    iput v2, v1, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    .line 173
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Quaternion;->mulWith(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 175
    iget-object v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Quaternion;->getConjugate(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 176
    iget-object v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Quaternion;->getMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 177
    iget-object v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    iget-object v2, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->multiWith(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 179
    iget-object v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 181
    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 183
    const/16 v2, 0x4000

    const/16 v3, 0x1203

    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v4, v1, Lcom/fruitsmobile/basket/math/Quaternion;->x:F

    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v5, v1, Lcom/fruitsmobile/basket/math/Quaternion;->y:F

    iget-object v1, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp1:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v6, v1, Lcom/fruitsmobile/basket/math/Quaternion;->z:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/fruitsmobile/basket/opengl/GL10;->glLightf4(IIFFFF)V

    .line 185
    iget v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->red:F

    iget v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v1, v2

    iget v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->green:F

    iget v3, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v2, v3

    iget v3, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->blue:F

    iget v4, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v3, v4

    iget v4, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glColor4f(FFFF)V

    .line 187
    const/4 v1, 0x5

    sget v2, Lcom/forthblue/pool/engine/BallSprite;->indexCount:I

    const/16 v3, 0x1403

    sget-object v4, Lcom/forthblue/pool/engine/BallSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 188
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 9
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 194
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/engine/BallSprite;->checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 196
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v1, p1}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 197
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    iget-object v2, p0, Lcom/forthblue/pool/engine/BallSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 199
    move-object v0, p2

    check-cast v0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;

    move-object v8, v0

    .line 200
    .local v8, "ss":Lcom/forthblue/pool/engine/BallSprite$Snapshot;
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    iget-object v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 202
    iget-object v1, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v2, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Quaternion;->getMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 203
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    iget-object v2, p0, Lcom/forthblue/pool/engine/BallSprite;->tmp:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->setUniformBallMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 205
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    iget v2, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->red:F

    iget v3, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v2, v3

    iget v3, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->green:F

    iget v4, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v3, v4

    iget v4, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->blue:F

    iget v6, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    mul-float/2addr v4, v6

    iget v6, v8, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->alpha:F

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->setUniformColor(FFFF)V

    .line 207
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v1, v5}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 208
    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->program:Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;

    invoke-virtual {v1, v5}, Lcom/forthblue/pool/engine/BallSprite$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    sget-object v7, Lcom/forthblue/pool/engine/BallSprite;->vertexBufferForGL2:Ljava/nio/ByteBuffer;

    move-object v1, p1

    move v6, v5

    invoke-interface/range {v1 .. v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 210
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {p1, v1, v5, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 211
    return-void
.end method

.method public setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/forthblue/pool/engine/BallSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    if-eq v0, p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/forthblue/pool/engine/BallSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 123
    :cond_0
    return-void
.end method
