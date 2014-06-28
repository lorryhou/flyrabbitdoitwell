.class public Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
.super Ljava/lang/Object;
.source "StaticImageParticle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/particle/StaticImageParticle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleSprite"
.end annotation


# instance fields
.field public alpha:F

.field public angle:F

.field public blue:F

.field public dismiss:F

.field public green:F

.field public id:I

.field public radiusx:F

.field public radiusy:F

.field public red:F

.field public vx:F

.field public vy:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->red:F

    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->green:F

    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->blue:F

    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    return-void
.end method
