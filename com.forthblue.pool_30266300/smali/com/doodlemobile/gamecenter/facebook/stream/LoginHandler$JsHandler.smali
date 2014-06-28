.class Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;
.super Ljava/lang/Object;
.source "LoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$1;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;)V

    return-void
.end method


# virtual methods
.method public login()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
