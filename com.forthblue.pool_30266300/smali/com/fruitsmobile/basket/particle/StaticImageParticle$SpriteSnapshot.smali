.class public Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;
.super Ljava/lang/Object;
.source "StaticImageParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/particle/StaticImageParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpriteSnapshot"
.end annotation


# instance fields
.field public colorBuffer:Ljava/nio/ByteBuffer;

.field public count:I

.field public vertexBuffer:Ljava/nio/ByteBuffer;

.field public vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    return-void
.end method
