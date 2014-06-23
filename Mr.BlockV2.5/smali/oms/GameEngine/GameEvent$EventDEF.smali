.class public Loms/GameEngine/GameEvent$EventDEF;
.super Ljava/lang/Object;
.source "GameEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loms/GameEngine/GameEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventDEF"
.end annotation


# instance fields
.field public ACTIdx:I

.field public ACTPtr:[[I

.field public Attrib:I

.field public Ctrl:I

.field public CurCNT:I

.field public CurFRM:I

.field public DispX:I

.field public DispY:I

.field public EVTPtr:[[I

.field public Flag:I

.field public MaxCNT:I

.field public MaxFRM:I

.field public Rotate:F

.field public Scale:F

.field public Status:I

.field public Touch:Z

.field public TouchEVTIdx:I

.field public TouchEVTName:Ljava/lang/String;

.field public Valid:Z

.field public XAdc:I

.field public XHitL:I

.field public XHitR:I

.field public XInc:I

.field public XVal:I

.field public YAdc:I

.field public YHitD:I

.field public YHitU:I

.field public YInc:I

.field public YVal:I

.field public ZAdc:I

.field public ZHitB:I

.field public ZHitF:I

.field public ZInc:I

.field public ZVal:I

.field final synthetic this$0:Loms/GameEngine/GameEvent;


# direct methods
.method public constructor <init>(Loms/GameEngine/GameEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 6
    iput-object p1, p0, Loms/GameEngine/GameEvent$EventDEF;->this$0:Loms/GameEngine/GameEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 8
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    .line 9
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->MaxCNT:I

    .line 10
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->MaxFRM:I

    .line 11
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    .line 12
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 13
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    .line 14
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    .line 15
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ZVal:I

    .line 16
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 17
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 18
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    .line 19
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->XAdc:I

    .line 20
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->YAdc:I

    .line 21
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ZAdc:I

    .line 22
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Flag:I

    .line 23
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    .line 24
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 25
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    .line 26
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    .line 27
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->XHitL:I

    .line 28
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->XHitR:I

    .line 29
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->YHitU:I

    .line 30
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->YHitD:I

    .line 31
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ZHitF:I

    .line 32
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->ZHitB:I

    .line 33
    iput-object v2, p0, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    .line 34
    iput-boolean v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Touch:Z

    .line 35
    iput v1, p0, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTIdx:I

    .line 36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTName:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 38
    iput-boolean v1, p0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    .line 41
    const/high16 v0, 0x3f800000

    iput v0, p0, Loms/GameEngine/GameEvent$EventDEF;->Scale:F

    return-void
.end method
