.class Lgame/fruit/xingji/activity/XYCLIManager$3;
.super Ljava/lang/Object;
.source "XYCLIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgame/fruit/xingji/activity/XYCLIManager;->tryQuit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 67
    sget-object v1, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    .line 66
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 70
    const v1, 0x7f040002

    .line 71
    new-instance v2, Lgame/fruit/xingji/activity/XYCLIManager$3$1;

    invoke-direct {v2, p0}, Lgame/fruit/xingji/activity/XYCLIManager$3$1;-><init>(Lgame/fruit/xingji/activity/XYCLIManager$3;)V

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    const v1, 0x7f040003

    .line 83
    new-instance v2, Lgame/fruit/xingji/activity/XYCLIManager$3$2;

    invoke-direct {v2, p0}, Lgame/fruit/xingji/activity/XYCLIManager$3$2;-><init>(Lgame/fruit/xingji/activity/XYCLIManager$3;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 91
    return-void
.end method
