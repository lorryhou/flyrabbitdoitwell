.class Lcom/forthblue/pool/ui/GameScene$10;
.super Lcom/fruitsmobile/basket/DrawableObject;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/ui/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;)V
    .locals 0

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$10;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 2008
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 2009
    return-void
.end method

.method public releaseData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 2013
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 9
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x4000

    const/16 v8, 0x1406

    const/4 v7, 0x0

    const/high16 v3, 0x3f000000

    const/high16 v6, 0x3f800000

    .line 2018
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 2019
    const/16 v0, 0x404

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glCullFace(I)V

    .line 2020
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glFrontFace(I)V

    .line 2022
    const v0, 0x8074

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 2023
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 2024
    const v0, 0x8078

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 2026
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 2027
    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 2028
    const/16 v2, 0x1200

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glLightf4(IIFFFF)V

    .line 2029
    const/16 v2, 0x1201

    move-object v0, p1

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glLightf4(IIFFFF)V

    .line 2031
    const v0, 0x8075

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 2032
    const v0, 0x8076

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 2034
    const/4 v0, 0x2

    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v8, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 2035
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 2036
    const/4 v0, 0x3

    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v8, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 2038
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2042
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 2004
    return-void
.end method
