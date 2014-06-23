.class public Loms/GameEngine/SpriteDEF;
.super Ljava/lang/Object;
.source "SpriteDEF.java"


# static fields
.field public static final SPDepth00:I = 0x0

.field public static final SPDepth01:I = 0x1

.field public static final SPDepth02:I = 0x2

.field public static final SPDepth03:I = 0x3

.field public static final SPDepth04:I = 0x4

.field public static final SPDepth05:I = 0x5

.field public static final SPDepth06:I = 0x6

.field public static final SPDepth07:I = 0x7

.field public static final SPDepth08:I = 0x8

.field public static final SPDepth09:I = 0x9

.field public static final SPDepth0A:I = 0xa

.field public static final SPDepth0B:I = 0xb

.field public static final SPDepth0C:I = 0xc

.field public static final SPDepth0D:I = 0xd

.field public static final SPDepth0E:I = 0xe

.field public static final SPDepth0F:I = 0xf


# instance fields
.field public Rotate:F

.field public RotateX:S

.field public RotateY:S

.field public ScaleX:F

.field public ScaleY:F

.field public SpriteAttrib:I

.field public SpriteCenterX:S

.field public SpriteCenterY:S

.field public SpriteResID:S

.field public SpriteXVal:I

.field public SpriteYVal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-short v0, p0, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 37
    iput-short v0, p0, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 42
    iput v1, p0, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 43
    iput v1, p0, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 49
    invoke-virtual {p0}, Loms/GameEngine/SpriteDEF;->release()V

    .line 50
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 53
    const/4 v0, -0x1

    iput-short v0, p0, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 54
    iput v1, p0, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 55
    iput v1, p0, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 56
    iput v1, p0, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    .line 57
    iput-short v1, p0, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 58
    iput-short v1, p0, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 60
    iput v2, p0, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 61
    iput v2, p0, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 65
    iput-short v1, p0, Loms/GameEngine/SpriteDEF;->RotateX:S

    .line 66
    iput-short v1, p0, Loms/GameEngine/SpriteDEF;->RotateY:S

    .line 67
    return-void
.end method
