.class Lcom/doodlemobile/gamecenter/ProfileView$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ProfileView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$1;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$1;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->onCreateChangeNameDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 125
    return-void
.end method
