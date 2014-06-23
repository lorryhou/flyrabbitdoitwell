.class public Loms/GameEngine/ACTStruct;
.super Ljava/lang/Object;
.source "ACTStruct.java"


# static fields
.field public static final CENTERX:I = 0x2

.field public static final CENTERY:I = 0x2

.field public static final FILEINDEXADDR:I = 0x2

.field public static final FILENUM:I = 0x2

.field public static final RESID:I = 0x4

.field public static final SPRITEINDEXNUM:I = 0x4

.field public static final SPRITENUM:I = 0x4

.field public static final XHITL:I = 0x2

.field public static final XHITR:I = 0x2

.field public static final YHITD:I = 0x2

.field public static final YHITU:I = 0x2

.field public static final ZHITB:I = 0x2

.field public static final ZHITF:I = 0x2


# instance fields
.field public CenterX:I

.field public CenterY:I

.field public FileIndexAddr:I

.field public FileNum:I

.field public ResID:I

.field public SpriteIndexAddr:I

.field public SpriteNum:I

.field public XHitL:I

.field public XHitR:I

.field public YHitD:I

.field public YHitU:I

.field public ZHitB:I

.field public ZHitF:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Loms/GameEngine/ACTStruct;->FileNum:I

    .line 31
    iput v1, p0, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    .line 34
    iput v0, p0, Loms/GameEngine/ACTStruct;->SpriteNum:I

    .line 35
    iput v0, p0, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    .line 37
    iput v0, p0, Loms/GameEngine/ACTStruct;->ResID:I

    .line 38
    iput v0, p0, Loms/GameEngine/ACTStruct;->CenterX:I

    .line 39
    iput v0, p0, Loms/GameEngine/ACTStruct;->CenterY:I

    .line 40
    iput v0, p0, Loms/GameEngine/ACTStruct;->XHitL:I

    .line 41
    iput v0, p0, Loms/GameEngine/ACTStruct;->XHitR:I

    .line 42
    iput v0, p0, Loms/GameEngine/ACTStruct;->YHitU:I

    .line 43
    iput v0, p0, Loms/GameEngine/ACTStruct;->YHitD:I

    .line 44
    iput v0, p0, Loms/GameEngine/ACTStruct;->ZHitF:I

    .line 45
    iput v0, p0, Loms/GameEngine/ACTStruct;->ZHitB:I

    .line 11
    return-void
.end method
