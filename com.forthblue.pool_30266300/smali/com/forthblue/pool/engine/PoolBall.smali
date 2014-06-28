.class public Lcom/forthblue/pool/engine/PoolBall;
.super Lcom/forthblue/pool/engine/BallSprite;
.source "PoolBall.java"


# static fields
.field public static final DISAPPEAR_TIME:J = 0x1f4L


# instance fields
.field public aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

.field public aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

.field disappearTime:J

.field public highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

.field public id:I

.field public inHole:Lcom/forthblue/pool/engine/PoolHole;

.field public isAvailable:Z

.field public rvx:F

.field public rvy:F

.field scale_to_zero:Z

.field public shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

.field public vx:F

.field public vy:F

.field public w:F


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/forthblue/pool/engine/BallSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolBall;->scale_to_zero:Z

    .line 12
    return-void
.end method


# virtual methods
.method public prepareDisappear()V
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/forthblue/pool/engine/PoolBall;->disappearTime:J

    .line 85
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->w:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 30
    iput v1, p0, Lcom/forthblue/pool/engine/PoolBall;->blue:F

    iput v1, p0, Lcom/forthblue/pool/engine/PoolBall;->green:F

    iput v1, p0, Lcom/forthblue/pool/engine/PoolBall;->red:F

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolBall;->scale_to_zero:Z

    .line 32
    iput v1, p0, Lcom/forthblue/pool/engine/PoolBall;->alpha:F

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    .line 34
    return-void
.end method

.method public scaleToZero()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolBall;->scale_to_zero:Z

    .line 81
    return-void
.end method

.method public tick(J)V
    .locals 7
    .param p1, "timeSpan"    # J

    .prologue
    const/4 v6, 0x0

    const v3, 0x3d4ccccd

    const/4 v5, 0x0

    .line 39
    iget-boolean v1, p0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 40
    iget-boolean v1, p0, Lcom/forthblue/pool/engine/PoolBall;->scale_to_zero:Z

    if-eqz v1, :cond_3

    .line 41
    iget v1, p0, Lcom/forthblue/pool/engine/PoolBall;->alpha:F

    sub-float/2addr v1, v3

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    .line 42
    invoke-virtual {p0, v6}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 44
    :cond_0
    iget v1, p0, Lcom/forthblue/pool/engine/PoolBall;->alpha:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/forthblue/pool/engine/PoolBall;->alpha:F

    .line 55
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, p0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 57
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, p0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 59
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iput v5, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 61
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v1, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6

    .line 62
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v1, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    .line 63
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    long-to-float v4, p1

    const v5, 0x3d75c28f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 75
    :cond_2
    :goto_1
    return-void

    .line 46
    :cond_3
    iget-wide v1, p0, Lcom/forthblue/pool/engine/PoolBall;->disappearTime:J

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lcom/forthblue/pool/engine/PoolBall;->disappearTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 47
    invoke-virtual {p0, v6}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    goto :goto_0

    .line 49
    :cond_4
    iget-wide v1, p0, Lcom/forthblue/pool/engine/PoolBall;->disappearTime:J

    long-to-float v1, v1

    const/high16 v2, 0x43fa0000

    div-float v0, v1, v2

    .line 50
    .local v0, "c":F
    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->alpha:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->blue:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->green:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolBall;->red:F

    goto :goto_0

    .line 65
    .end local v0    # "c":F
    :cond_5
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, p0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v4, 0x40800000

    mul-float/2addr v3, v4

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 66
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iput v5, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    goto :goto_1

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v1, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    iget v2, p0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v3, 0x40000000

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 69
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v2, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    const v3, 0x3c54fdf4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    goto :goto_1

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    long-to-float v4, p1

    const v5, 0x3e051eb8

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 72
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v2, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    long-to-float v3, p1

    const v4, 0x3a51b717

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    goto :goto_1
.end method
