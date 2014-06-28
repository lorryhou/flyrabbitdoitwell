.class Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;
.super Ljava/lang/Object;
.source "CubeWallpaper1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;->this$1:Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;->this$1:Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;

    # invokes: Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->update()V
    invoke-static {v0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->access$000(Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;)V

    .line 47
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine$1;->this$1:Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;

    invoke-virtual {v0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;->drawFrame()V

    .line 48
    return-void
.end method
