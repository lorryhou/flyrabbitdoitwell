.class Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$2;
.super Ljava/lang/Object;
.source "ChangeUserNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->dismiss()V

    .line 61
    return-void
.end method
