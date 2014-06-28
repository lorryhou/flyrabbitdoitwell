.class public Lcom/doodlemobile/gamecenter/api/Response;
.super Lorg/json/simple/JSONObject;
.source "Response.java"


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final MSG:Ljava/lang/String; = "msg"


# direct methods
.method public constructor <init>(Lorg/json/simple/JSONObject;)V
    .locals 2

    .prologue
    const-string v0, "msg"

    const-string v0, "data"

    const-string v0, "code"

    .line 42
    invoke-direct {p0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string v1, "msg"

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "code"

    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "data"

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 3

    .prologue
    const-string v0, "msg"

    const-string v0, "data"

    const-string v0, "code"

    .line 31
    invoke-direct {p0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 33
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 34
    const-string v2, "msg"

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v2, "code"

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p0, v2, v1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCode()J
    .locals 2

    .prologue
    .line 62
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/Response;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 66
    :goto_0
    return-wide v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/api/Response;->getData()Lorg/json/simple/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getData()Lorg/json/simple/JSONObject;
    .locals 1

    .prologue
    .line 96
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/Response;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 100
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/api/Response;->getData()Lorg/json/simple/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    :try_start_0
    const-string v0, "msg"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/Response;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 2

    .prologue
    .line 54
    :try_start_0
    const-string v0, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setData(Lorg/json/simple/JSONObject;)V
    .locals 1

    .prologue
    .line 88
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p0, v0, p1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    :try_start_0
    const-string v0, "msg"

    invoke-virtual {p0, v0, p1}, Lcom/doodlemobile/gamecenter/api/Response;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public toBytes()[B
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/api/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
