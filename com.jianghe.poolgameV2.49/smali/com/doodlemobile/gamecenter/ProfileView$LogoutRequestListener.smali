.class Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;
.super Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener$1;-><init>(Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method
