.class Lcom/forthblue/pool/engine/PoolTable$2;
.super Lcom/fruitsmobile/basket/DrawableObject;
.source "PoolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/engine/PoolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/engine/PoolTable;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/engine/PoolTable;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/forthblue/pool/engine/PoolTable$2;->this$0:Lcom/forthblue/pool/engine/PoolTable;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 1179
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 1180
    return-void
.end method

.method public releaseData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1184
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1188
    const v0, 0x8075

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 1189
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 1190
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 1191
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1195
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 1175
    return-void
.end method
