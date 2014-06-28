.class Lcom/forthblue/pool/ui/GameScene$3;
.super Lcom/forthblue/pool/sprite/IntegerSprite;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/GameScene;-><init>(Lcom/forthblue/pool/Main;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private is_scaling:Z

.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/CharSequence;
    .param p3, "x1"    # Lcom/forthblue/pool/sprite/TileTextureFont;
    .param p4, "x2"    # I

    .prologue
    .line 352
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$3;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0, p2, p3, p4}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->is_scaling:Z

    return-void
.end method


# virtual methods
.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->is_scaling:Z

    .line 359
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->is_scaling:Z

    .line 364
    return-void
.end method

.method public tick(J)V
    .locals 4
    .param p1, "timeSpan"    # J

    .prologue
    const/high16 v3, 0x40200000

    const v2, 0x3f4ccccd

    const v1, 0x3dcccccd

    .line 367
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/IntegerSprite;->tick(J)V

    .line 368
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->is_scaling:Z

    if-eqz v0, :cond_1

    .line 369
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    .line 370
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 371
    iput v3, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->is_scaling:Z

    .line 374
    :cond_0
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scaley:F

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene$3;->setNeedRecommit()V

    .line 383
    return-void

    .line 376
    :cond_1
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    .line 377
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 378
    iput v2, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    .line 380
    :cond_2
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scalex:F

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$3;->scaley:F

    goto :goto_0
.end method
