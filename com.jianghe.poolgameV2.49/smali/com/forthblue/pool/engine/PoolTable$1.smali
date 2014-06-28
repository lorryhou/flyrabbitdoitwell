.class Lcom/forthblue/pool/engine/PoolTable$1;
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
    .line 1125
    iput-object p1, p0, Lcom/forthblue/pool/engine/PoolTable$1;->this$0:Lcom/forthblue/pool/engine/PoolTable;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Lcom/fruitsmobile/basket/RenderQueueManager;->add(Lcom/fruitsmobile/basket/interfaces/Drawable;Ljava/lang/Object;)V

    .line 1134
    return-void
.end method

.method public releaseData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1138
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

    .line 1143
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 1144
    const/16 v0, 0x404

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glCullFace(I)V

    .line 1145
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glFrontFace(I)V

    .line 1147
    const v0, 0x8074

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 1148
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 1149
    const v0, 0x8078

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 1151
    const/16 v0, 0xb50

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 1152
    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 1153
    const/16 v2, 0x1200

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glLightf4(IIFFFF)V

    .line 1154
    const/16 v2, 0x1201

    move-object v0, p1

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glLightf4(IIFFFF)V

    .line 1156
    const v0, 0x8075

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 1157
    const v0, 0x8076

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 1159
    const/4 v0, 0x2

    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v8, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 1160
    sget-object v0, Lcom/forthblue/pool/engine/BallSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 1161
    const/4 v0, 0x3

    sget-object v1, Lcom/forthblue/pool/engine/BallSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v8, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 1163
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 1167
    return-void
.end method

.method public tick(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 1129
    return-void
.end method
