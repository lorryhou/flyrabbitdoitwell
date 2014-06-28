.class Lcom/fruitsmobile/basket/resources/TileAnimation$State;
.super Ljava/lang/Object;
.source "TileAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/resources/TileAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field curFrame:I

.field curFrameTime:J

.field repeat:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrame:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->curFrameTime:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/resources/TileAnimation$State;->repeat:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/fruitsmobile/basket/resources/TileAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fruitsmobile/basket/resources/TileAnimation$1;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/fruitsmobile/basket/resources/TileAnimation$State;-><init>()V

    return-void
.end method
