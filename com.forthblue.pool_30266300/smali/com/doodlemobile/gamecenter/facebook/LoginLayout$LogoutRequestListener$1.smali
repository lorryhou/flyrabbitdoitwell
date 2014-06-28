.class Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener$1;
.super Ljava/lang/Object;
.source "LoginLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLogoutFinish()V

    .line 108
    return-void
.end method
