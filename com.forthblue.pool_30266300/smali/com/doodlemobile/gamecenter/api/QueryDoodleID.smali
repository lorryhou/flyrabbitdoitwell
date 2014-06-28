.class public Lcom/doodlemobile/gamecenter/api/QueryDoodleID;
.super Lcom/doodlemobile/gamecenter/api/ConnectAPI;
.source "QueryDoodleID.java"


# instance fields
.field array:Lorg/json/simple/JSONArray;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->array:Lorg/json/simple/JSONArray;

    .line 29
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->mContext:Landroid/content/Context;

    .line 32
    const-string v0, "QueryDoodleID"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->setAPIName(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getTimeOutConnection()I
    .locals 1

    .prologue
    .line 149
    const v0, 0xea60

    return v0
.end method

.method public getTimeoutSocket()I
    .locals 1

    .prologue
    .line 154
    const v0, 0xea60

    return v0
.end method

.method public prepareRequest()Lorg/apache/http/client/methods/HttpPost;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 39
    :try_start_0
    const-string v1, "app-id"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobile;->getApplicationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "mac-address"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "device"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getDeviceInfo()Lorg/json/simple/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "version"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getVersionInfo()Lorg/json/simple/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, "facebook-id"

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    const-string v4, "queryid"

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/api/Des;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/api/Des;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cipher"

    const-string v4, "ciphered"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryDoodleID param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->httppost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->httppost:Lorg/apache/http/client/methods/HttpPost;

    return-object v0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public processResponse(Lcom/doodlemobile/gamecenter/api/Response;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "query-user-nextxp"

    const-string v0, "query-user-level"

    const-string v0, "feature-filename"

    const-string v0, "facebook-id"

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/api/Response;->getCode()J

    move-result-wide v0

    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    .line 74
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/api/Response;->getData()Lorg/json/simple/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 76
    :try_start_1
    const-string v0, "user-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->setUserID(Ljava/lang/String;)V

    .line 77
    const-string v0, "user-nickname"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->setNickName(Ljava/lang/String;)V

    .line 78
    const-string v0, "user-headicon-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "user-headicon-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setHeadIconTimeStamp(J)V

    .line 81
    :cond_0
    const-string v0, "feature-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setFeatureGameTimeStamp(J)V

    .line 82
    const-string v0, "feature-filename"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "feature-filename"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->setFeatureFileName(Ljava/lang/String;)V

    .line 85
    :cond_1
    const-string v0, "facebook-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const-string v0, "facebook-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFacebookID(Ljava/lang/String;)Z

    .line 90
    :goto_0
    const-string v0, "all-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setAllGameTimeStamp(J)V

    .line 93
    const-string v0, "query-user-level"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-string v0, "query-user-level"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setLevel(J)V

    .line 97
    :cond_2
    const-string v0, "query-user-xp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string v0, "query-user-xp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setXP(J)V

    .line 101
    :cond_3
    const-string v0, "query-user-nextxp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    const-string v0, "query-user-nextxp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setNextXP(J)V

    .line 105
    :cond_4
    const-string v0, "query-user-totalxp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    const-string v0, "query-user-totalxp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setTotalXP(J)V

    .line 114
    :cond_5
    const/4 v0, 0x1

    .line 121
    :goto_1
    return v0

    .line 88
    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFacebookID(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 111
    goto :goto_1

    .line 116
    :cond_7
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    iput v0, p0, Lcom/doodlemobile/gamecenter/api/QueryDoodleID;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v4

    .line 117
    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 121
    goto :goto_1
.end method

.method public setFeatureFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 141
    if-nez p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFeatureFileName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setUserID(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setIsFirstOpen(Z)V

    goto :goto_0
.end method
