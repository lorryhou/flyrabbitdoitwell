.class Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->submitFacebookId(Ljava/lang/String;)V

    .line 405
    return-void
.end method
