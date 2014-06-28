.class Lcom/forthblue/pool/ui/GameScene$11;
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
    .line 2046
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$11;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 2054
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 2055
    return-void
.end method

.method public releaseData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 2059
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2063
    const v0, 0x8075

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 2064
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 2065
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 2066
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 2070
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 2050
    return-void
.end method
