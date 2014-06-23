.class Loms/GameEngine/SpriteManager$SpriteACTFILE;
.super Ljava/lang/Object;
.source "SpriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loms/GameEngine/SpriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpriteACTFILE"
.end annotation


# instance fields
.field nACTBuffLen:I

.field pACTBuff:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteManager$SpriteACTFILE;->nACTBuffLen:I

    .line 37
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 42
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteManager$SpriteACTFILE;->nACTBuffLen:I

    .line 43
    return-void
.end method
