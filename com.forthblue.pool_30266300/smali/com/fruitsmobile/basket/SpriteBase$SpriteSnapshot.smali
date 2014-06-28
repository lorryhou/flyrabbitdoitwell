.class public Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
.super Ljava/lang/Object;
.source "SpriteBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/SpriteBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpriteSnapshot"
.end annotation


# instance fields
.field public alpha:F

.field public blue:F

.field public count:I

.field public datastamp:I

.field public green:F

.field public mode:I

.field public red:F

.field public start:I

.field public texcoordBuffer:Ljava/nio/ByteBuffer;

.field public texture:Lcom/fruitsmobile/basket/resources/Texture;

.field public vertexBuffer:Ljava/nio/ByteBuffer;

.field public vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->datastamp:I

    return-void
.end method
