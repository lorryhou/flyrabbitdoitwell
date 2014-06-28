.class public Lcom/doodlemobile/gamecenter/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field public appid:Ljava/lang/String;

.field public companyname:Ljava/lang/String;

.field public friendhavavatar:Z

.field public friendid:Ljava/lang/String;

.field public friendname:Ljava/lang/String;

.field public gamename:Ljava/lang/String;

.field public imageuri:Ljava/lang/String;

.field public marketuri:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    .line 21
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfo;->friendid:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/UserInfo;->friendname:Ljava/lang/String;

    .line 23
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/UserInfo;->friendhavavatar:Z

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    .line 28
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfo;->appid:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/UserInfo;->gamename:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/UserInfo;->companyname:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/doodlemobile/gamecenter/UserInfo;->marketuri:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/doodlemobile/gamecenter/UserInfo;->imageuri:Ljava/lang/String;

    .line 33
    return-void
.end method
