.class public Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;
.super Lcom/doodlemobile/gamecenter/facebook/stream/Handler;
.source "LoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$1;,
        Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;
    }
.end annotation


# static fields
.field private static PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "friends_education_history"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "friends_photos"

    aput-object v2, v0, v1

    sput-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public go()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$1;)V

    const-string v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login.html"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->loadFile(Ljava/lang/String;)V

    .line 51
    return-void
.end method
