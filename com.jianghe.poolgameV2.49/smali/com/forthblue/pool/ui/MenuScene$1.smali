.class Lcom/forthblue/pool/ui/MenuScene$1;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "MenuScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/MenuScene;-><init>(Lcom/forthblue/pool/Main;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private last_y:F

.field private max_offset:F

.field private offset:F

.field private offset_speed:F

.field final synthetic this$0:Lcom/forthblue/pool/ui/MenuScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/MenuScene;Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 1
    .param p2, "x0"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/forthblue/pool/ui/MenuScene$1;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    invoke-direct {p0, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset_speed:F

    return-void
.end method


# virtual methods
.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 283
    iput p2, p0, Lcom/forthblue/pool/ui/MenuScene$1;->last_y:F

    .line 284
    return-void
.end method

.method public tick(J)V
    .locals 2
    .param p1, "timeSpan"    # J

    .prologue
    .line 292
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset_speed:F

    const v1, 0x3d8f5c29

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset_speed:F

    .line 293
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset:F

    iget v1, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset_speed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset:F

    .line 294
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset:F

    iget v1, p0, Lcom/forthblue/pool/ui/MenuScene$1;->max_offset:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 295
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->max_offset:F

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset:F

    .line 296
    const v0, -0x40333333

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset_speed:F

    .line 299
    :cond_0
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->last_y:F

    iget v1, p0, Lcom/forthblue/pool/ui/MenuScene$1;->offset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene$1;->y:F

    .line 300
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->tick(J)V

    .line 301
    return-void
.end method
