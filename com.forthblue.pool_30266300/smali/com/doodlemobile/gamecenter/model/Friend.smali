.class public Lcom/doodlemobile/gamecenter/model/Friend;
.super Ljava/lang/Object;
.source "Friend.java"


# instance fields
.field private avatartimestamp:J

.field private createtime:Ljava/lang/Long;

.field private emailaddress:Ljava/lang/String;

.field private facebookid:Ljava/lang/String;

.field private hasavatar:Z

.field private lastlogintime:Ljava/lang/Long;

.field private level:J

.field private macaddress:Ljava/lang/String;

.field private nextXP:J

.field private totalXP:J

.field private twitterid:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private xp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getAvatartimestamp()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->avatartimestamp:J

    return-wide v0
.end method

.method public getCreatetime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->createtime:Ljava/lang/Long;

    return-object v0
.end method

.method public getEmailaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->emailaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->facebookid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastlogintime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->lastlogintime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLevel()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->level:J

    return-wide v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->macaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNextXP()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->nextXP:J

    return-wide v0
.end method

.method public getTotalXP()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->totalXP:J

    return-wide v0
.end method

.method public getTwitterid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->twitterid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getXp()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->xp:J

    return-wide v0
.end method

.method public isHasavatar()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/model/Friend;->hasavatar:Z

    return v0
.end method

.method public setAvatartimestamp(J)V
    .locals 0

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->avatartimestamp:J

    .line 70
    return-void
.end method

.method public setCreatetime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->createtime:Ljava/lang/Long;

    .line 78
    return-void
.end method

.method public setEmailaddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->emailaddress:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setFacebookid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->facebookid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setHasavatar(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->hasavatar:Z

    .line 62
    return-void
.end method

.method public setLastlogintime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->lastlogintime:Ljava/lang/Long;

    .line 86
    return-void
.end method

.method public setLevel(J)V
    .locals 0

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->level:J

    .line 114
    return-void
.end method

.method public setMacaddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->macaddress:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setNextXP(J)V
    .locals 0

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->nextXP:J

    .line 122
    return-void
.end method

.method public setTotalXP(J)V
    .locals 0

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->totalXP:J

    .line 130
    return-void
.end method

.method public setTwitterid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->twitterid:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->userid:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->username:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setXp(J)V
    .locals 0

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/Friend;->xp:J

    .line 110
    return-void
.end method
