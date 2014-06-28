.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;
.super Ljava/lang/Object;
.source "StreamJsHandler.java"


# instance fields
.field private final streamHandler:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->streamHandler:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->renderStatus(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->callJs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->renderComment(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callJs(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->streamHandler:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private createAuthorObj()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->streamHandler:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-result-object v0

    .line 200
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v2, "id"

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "name"

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    return-object v1
.end method

.method private getFb()Lcom/facebook/android/AsyncFacebookRunner;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->streamHandler:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getFb()Lcom/facebook/android/Facebook;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-direct {v1, v0}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    return-object v1
.end method

.method private renderComment(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v3, "id"

    .line 173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    const-string v1, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v1, "from"

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->createAuthorObj()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderSingleComment(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method

.method private renderStatus(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v4, "name"

    const-string v3, "id"

    .line 93
    const-string v0, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 95
    const-string v2, "id"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v0, "message"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->createAuthorObj()Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    const-string v2, "from"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 103
    const-string v3, "name"

    const-string v3, "Like"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string v3, "name"

    const-string v3, "Comment"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    const-string v2, "actions"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 113
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v2, "created_time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderSinglePost(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method


# virtual methods
.method public like(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    if-nez p2, :cond_0

    .line 129
    const-string v1, "method"

    const-string v2, "delete"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->getFb()Lcom/facebook/android/AsyncFacebookRunner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/likes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "POST"

    new-instance v4, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public postComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 142
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 143
    const-string v0, "message"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->getFb()Lcom/facebook/android/AsyncFacebookRunner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/comments"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "POST"

    new-instance v4, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;

    invoke-direct {v4, p0, p2, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->getFb()Lcom/facebook/android/AsyncFacebookRunner;

    move-result-object v0

    .line 64
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v1, "message"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "me/feed"

    const-string v3, "POST"

    new-instance v4, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;

    invoke-direct {v4, p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 80
    return-void
.end method
