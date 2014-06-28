.class public abstract Lcom/doodlemobile/gamecenter/api/ConnectAPI;
.super Ljava/lang/Object;
.source "ConnectAPI.java"


# static fields
.field public static final SNS_REGISTER_ERROR:I = 0x1

.field public static URL_PRE:Ljava/lang/String;

.field private static isOld:Ljava/lang/Boolean;


# instance fields
.field protected errorCode:I

.field protected errorMessage:Ljava/lang/String;

.field protected httppost:Lorg/apache/http/client/methods/HttpPost;

.field public mAPIName:Ljava/lang/String;

.field public result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "http://127.0.0.1"

    sput-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->URL_PRE:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOld:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->mAPIName:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 65
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->httppost:Lorg/apache/http/client/methods/HttpPost;

    .line 66
    return-void
.end method

.method private isOldGames()Z
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOld:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/Boolean;

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->isOldGames()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOld:Ljava/lang/Boolean;

    .line 100
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOld:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setOldGame(Z)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOld:Ljava/lang/Boolean;

    .line 91
    return-void
.end method


# virtual methods
.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->mAPIName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOutConnection()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x4e20

    return v0
.end method

.method public getTimeoutSocket()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x4e20

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->isOldGames()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "http://127.0.0.1"

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://127.0.0.1"

    goto :goto_0
.end method

.method public abstract prepareRequest()Lorg/apache/http/client/methods/HttpPost;
.end method

.method public abstract processResponse(Lcom/doodlemobile/gamecenter/api/Response;)Z
.end method

.method protected setAPIName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->mAPIName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->errorCode:I

    .line 35
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->errorMessage:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/api/ConnectAPI;->result:Ljava/lang/String;

    .line 27
    return-void
.end method
