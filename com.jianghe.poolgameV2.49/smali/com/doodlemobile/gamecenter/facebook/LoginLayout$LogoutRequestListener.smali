.class Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;
.super Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;
.source "LoginLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/LoginLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$600(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
