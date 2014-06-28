.class Lcom/forthblue/pool/engine/BallSprite$Snapshot;
.super Ljava/lang/Object;
.source "BallSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/engine/BallSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snapshot"
.end annotation


# instance fields
.field alpha:F

.field blue:F

.field green:F

.field matrix:Lcom/fruitsmobile/basket/math/Matrix;

.field quat:Lcom/fruitsmobile/basket/math/Quaternion;

.field red:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->matrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 131
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/engine/BallSprite$Snapshot;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    return-void
.end method

.method synthetic constructor <init>(Lcom/forthblue/pool/engine/BallSprite$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/forthblue/pool/engine/BallSprite$1;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/forthblue/pool/engine/BallSprite$Snapshot;-><init>()V

    return-void
.end method
