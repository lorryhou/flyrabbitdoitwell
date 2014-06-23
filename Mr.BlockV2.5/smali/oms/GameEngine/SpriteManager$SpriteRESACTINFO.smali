.class Loms/GameEngine/SpriteManager$SpriteRESACTINFO;
.super Ljava/lang/Object;
.source "SpriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loms/GameEngine/SpriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpriteRESACTINFO"
.end annotation


# instance fields
.field RESACTIdx:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput-short v0, p0, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    .line 27
    return-void
.end method
