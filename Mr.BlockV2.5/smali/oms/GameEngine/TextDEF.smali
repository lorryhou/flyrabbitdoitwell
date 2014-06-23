.class public Loms/GameEngine/TextDEF;
.super Ljava/lang/Object;
.source "TextDEF.java"


# static fields
.field public static final DDIR:I = 0x2

.field public static final HLOOP:I = 0x20

.field public static final LDIR:I = 0x4

.field public static final RDIR:I = 0x8

.field public static final TXDepth00:I = 0x0

.field public static final TXDepth01:I = 0x1

.field public static final TXDepth02:I = 0x2

.field public static final TXDepth03:I = 0x3

.field public static final TXDepth04:I = 0x4

.field public static final TXDepth05:I = 0x5

.field public static final TXDepth06:I = 0x6

.field public static final TXDepth07:I = 0x7

.field public static final TXDepth08:I = 0x8

.field public static final TXDepth09:I = 0x9

.field public static final TXDepth0A:I = 0xa

.field public static final TXDepth0B:I = 0xb

.field public static final TXDepth0C:I = 0xc

.field public static final TXDepth0D:I = 0xd

.field public static final TXDepth0E:I = 0xe

.field public static final TXDepth0F:I = 0xf

.field public static final TXLayer00:I = 0x0

.field public static final TXLayer01:I = 0x1

.field public static final TXLayer02:I = 0x2

.field public static final TXLayer03:I = 0x3

.field public static final TXLayer04:I = 0x4

.field public static final TXLayer05:I = 0x5

.field public static final TXLayer06:I = 0x6

.field public static final TXLayer07:I = 0x7

.field public static final TXLayer08:I = 0x8

.field public static final TXLayer09:I = 0x9

.field public static final TXLayer0A:I = 0xa

.field public static final TXLayer0B:I = 0xb

.field public static final TXLayer0C:I = 0xc

.field public static final TXLayer0D:I = 0xd

.field public static final TXLayer0E:I = 0xe

.field public static final TXLayer0F:I = 0xf

.field public static final TXLayerAll:I = 0x10

.field public static final UDIR:I = 0x1

.field public static final VLOOP:I = 0x10


# instance fields
.field public Rotate:F

.field public ScaleX:F

.field public ScaleY:F

.field public Text:Landroid/graphics/Bitmap;

.field public TextAttrib:I

.field public TextCtrl:I

.field public TextXInc:I

.field public TextXVal:I

.field public TextYInc:I

.field public TextYVal:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v3, p0, Loms/GameEngine/TextDEF;->Rotate:F

    .line 72
    iput v2, p0, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 73
    iput v2, p0, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 77
    iput v1, p0, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 78
    iput v1, p0, Loms/GameEngine/TextDEF;->TextCtrl:I

    .line 79
    iput v1, p0, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 80
    iput v1, p0, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 81
    iput v1, p0, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 82
    iput v1, p0, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 85
    iput v3, p0, Loms/GameEngine/TextDEF;->Rotate:F

    .line 86
    iput v2, p0, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 87
    iput v2, p0, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 88
    return-void
.end method
