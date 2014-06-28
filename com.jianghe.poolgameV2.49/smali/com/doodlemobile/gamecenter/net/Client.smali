.class public Lcom/doodlemobile/gamecenter/net/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private errorCode:I

.field httpParameters:Lorg/apache/http/params/HttpParams;

.field httpclient:Lorg/apache/http/client/HttpClient;

.field public mContext:Landroid/content/Context;

.field timeoutConnection:I

.field timeoutSocket:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->errorCode:I

    .line 34
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 36
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    .line 38
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->timeoutConnection:I

    .line 40
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->timeoutSocket:I

    .line 43
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    .line 44
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    iget v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->timeoutConnection:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 46
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    iget v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->timeoutSocket:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 47
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 48
    return-void
.end method

.method public static connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/doodlemobile/gamecenter/net/Client;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/net/Client;-><init>()V

    .line 143
    invoke-direct {v0, p0, p1}, Lcom/doodlemobile/gamecenter/net/Client;->mConnect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    return v0
.end method

.method private mConnect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I
    .locals 10

    .prologue
    const-string v9, "Exception: "

    const-string v8, "Client"

    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->getTimeOutConnection()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->getTimeoutSocket()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->prepareRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/net/Client;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 67
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    const/16 v4, 0x2800

    new-array v4, v4, [C

    .line 76
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 77
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([CII)V

    .line 78
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/doodlemobile/gamecenter/net/Client;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 127
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    .line 137
    :goto_1
    return v0

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/api/Des;->getDesString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    new-instance v3, Lcom/doodlemobile/gamecenter/api/Response;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/doodlemobile/gamecenter/api/Response;-><init>([B)V

    move-object v0, v3

    .line 96
    :goto_2
    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Server return null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v1, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/doodlemobile/gamecenter/net/Client;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 132
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    goto :goto_1

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 100
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/api/Response;->getCode()J

    move-result-wide v3

    sget v5, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 102
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 103
    const-string v6, "duration"

    sub-long v1, v3, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "api"

    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->getAPIName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 107
    const-string v2, "GMT+8"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "time"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p2, v0}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->processResponse(Lcom/doodlemobile/gamecenter/api/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    goto/16 :goto_1

    .line 116
    :cond_3
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    goto/16 :goto_1

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "cloud client exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :catch_2
    move-exception v0

    .line 134
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    iput v1, p0, Lcom/doodlemobile/gamecenter/net/Client;->errorCode:I

    .line 135
    const-string v1, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/doodlemobile/gamecenter/net/Client;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    goto/16 :goto_1
.end method
