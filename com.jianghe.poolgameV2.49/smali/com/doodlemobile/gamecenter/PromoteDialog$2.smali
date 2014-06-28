.class Lcom/doodlemobile/gamecenter/PromoteDialog$2;
.super Ljava/lang/Object;
.source "PromoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/PromoteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/PromoteDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$2;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$2;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    .line 84
    return-void
.end method
