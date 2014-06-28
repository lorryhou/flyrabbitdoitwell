.class public Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookLogoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method public onLogoutFinish()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    .line 370
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 371
    return-void
.end method
