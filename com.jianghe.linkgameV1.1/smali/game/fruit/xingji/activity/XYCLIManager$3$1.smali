.class Lgame/fruit/xingji/activity/XYCLIManager$3$1;
.super Ljava/lang/Object;
.source "XYCLIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgame/fruit/xingji/activity/XYCLIManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgame/fruit/xingji/activity/XYCLIManager$3;


# direct methods
.method constructor <init>(Lgame/fruit/xingji/activity/XYCLIManager$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lgame/fruit/xingji/activity/XYCLIManager$3$1;->this$1:Lgame/fruit/xingji/activity/XYCLIManager$3;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 76
    sget-object v1, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    invoke-virtual {v1}, Lgame/fruit/xingji/activity/XYLinkPet;->finish()V

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 79
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 80
    return-void
.end method
