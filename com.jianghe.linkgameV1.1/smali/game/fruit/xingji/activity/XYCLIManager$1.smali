.class Lgame/fruit/xingji/activity/XYCLIManager$1;
.super Ljava/lang/Object;
.source "XYCLIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgame/fruit/xingji/activity/XYCLIManager;->showAD(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    invoke-virtual {v0}, Lgame/fruit/xingji/activity/XYLinkPet;->showAD()V

    .line 40
    return-void
.end method
