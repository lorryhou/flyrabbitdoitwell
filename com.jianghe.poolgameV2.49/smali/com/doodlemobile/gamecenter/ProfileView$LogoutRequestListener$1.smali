.class Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 329
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLogoutFinish()V

    .line 330
    return-void
.end method
