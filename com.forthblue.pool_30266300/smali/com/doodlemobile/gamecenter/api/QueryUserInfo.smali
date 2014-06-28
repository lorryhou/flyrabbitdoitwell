.class public Lcom/doodlemobile/gamecenter/api/QueryUserInfo;
.super Lcom/doodlemobile/gamecenter/api/ConnectAPI;
.source "QueryUserInfo.java"


# instance fields
.field array:Lorg/json/simple/JSONArray;

.field mContext:Landroid/content/Context;

.field mQueryID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->array:Lorg/json/simple/JSONArray;

    .line 28
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mQueryID:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mQueryID:Ljava/lang/String;

    .line 36
    const-string v0, "QueryUserInfo"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->setAPIName(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getTimeOutConnection()I
    .locals 1

    .prologue
    .line 137
    const v0, 0xea60

    return v0
.end method

.method public getTimeoutSocket()I
    .locals 1

    .prologue
    .line 142
    const v0, 0xea60

    return v0
.end method

.method public prepareRequest()Lorg/apache/http/client/methods/HttpPost;
    .locals 5

    .prologue
    const-string v0, "facebook-id"

    .line 41
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string v1, "app-id"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobile;->getApplicationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "mac-address"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "device"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getDeviceInfo()Lorg/json/simple/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "version"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getVersionInfo()Lorg/json/simple/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "facebook-id"

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "query-user-id"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->mQueryID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "facebook-id"

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    const-string v1, "user-id"

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/simple/JSONObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "api"

    const-string v4, "queryuserinfo"

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/api/Des;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "param"

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/api/Des;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "cipher"

    const-string v4, "ciphered"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryUserInfo param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/simple/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->httppost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->httppost:Lorg/apache/http/client/methods/HttpPost;

    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public processResponse(Lcom/doodlemobile/gamecenter/api/Response;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v0, "user-headicon-timestamp"

    const-string v0, "facebook-id"

    const-string v0, "feature-filename"

    .line 78
    :try_start_0
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/api/Response;->getCode()J

    move-result-wide v0

    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/api/Response;->getData()Lorg/json/simple/JSONObject;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    const-string v0, "user-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->setUserID(Ljava/lang/String;)V

    .line 83
    const-string v0, "user-nickname"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->setNickName(Ljava/lang/String;)V

    .line 84
    const-string v0, "user-headicon-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "user-headicon-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setHeadIconTimeStamp(J)V

    .line 87
    :cond_0
    const-string v0, "facebook-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "facebook-id"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFacebookID(Ljava/lang/String;)Z

    .line 90
    :cond_1
    const-string v0, "feature-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setFeatureGameTimeStamp(J)V

    .line 91
    const-string v0, "feature-filename"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    const-string v0, "feature-filename"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->setFeatureFileName(Ljava/lang/String;)V

    .line 93
    const-string v0, "QueryUserInfo---------------"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "feature-filename"

    invoke-virtual {v1, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_2
    const-string v0, "all-timestamp"

    invoke-virtual {v1, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/model/DataCenter;->setAllGameTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 99
    goto :goto_0

    .line 104
    :cond_3
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    iput v0, p0, Lcom/doodlemobile/gamecenter/api/QueryUserInfo;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v4

    .line 105
    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 109
    goto :goto_0
.end method

.method public setFeatureFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFeatureFileName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setNickname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setUserID(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setIsFirstOpen(Z)V

    goto :goto_0
.end method
