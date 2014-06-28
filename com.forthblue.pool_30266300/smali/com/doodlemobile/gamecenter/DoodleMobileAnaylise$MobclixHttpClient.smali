.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobclixHttpClient"
.end annotation


# instance fields
.field httpGet:Lorg/apache/http/client/methods/HttpGet;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 998
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 999
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->url:Ljava/lang/String;

    .line 1000
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 1001
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Cookie"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getCookieStringFromCookieManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "User-Agent"

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public execute()Lorg/apache/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1011
    :try_start_0
    const-string v0, "MobclixHttpClient"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-super {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1014
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$MobclixHttpClient;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncCookiesToCookieManager(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :goto_0
    return-object v0

    .line 1017
    :catch_0
    move-exception v0

    .line 1019
    const/4 v0, 0x0

    goto :goto_0
.end method
