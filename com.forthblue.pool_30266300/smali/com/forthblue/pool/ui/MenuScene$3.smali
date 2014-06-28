.class Lcom/forthblue/pool/ui/MenuScene$3;
.super Ljava/lang/Object;
.source "MenuScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/MenuScene;->onButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/ui/MenuScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/MenuScene;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/forthblue/pool/ui/MenuScene$3;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 816
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene$3;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v2, v2, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-class v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene$3;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v2, v2, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2, v1}, Lcom/forthblue/pool/Main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
