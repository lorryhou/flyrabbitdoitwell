.class public Lcom/doodlemobile/gamecenter/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getAvatartimestamp()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/User;->avatartimestamp:J

    return-wide v0
.end method

.method public getCreatetime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->createtime:Ljava/lang/Long;

    return-object v0
.end method

.method public getEmailaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->emailaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->facebookid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastlogintime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->lastlogintime:Ljava/lang/Long;

    return-object v0
.end method

.method public getLevel()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/User;->level:J

    return-wide v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->macaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getNextXP()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/User;->nextXP:J

    return-wide v0
.end method

.method public getTotalXP()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/User;->totalXP:J

    return-wide v0
.end method

.method public getTwitterid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->twitterid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getXp()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/doodlemobile/gamecenter/model/User;->xp:J

    return-wide v0
.end method

.method public isHasavatar()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/model/User;->hasavatar:Z

    return v0
.end method

.method public setAvatartimestamp(J)V
    .locals 0

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/User;->avatartimestamp:J

    .line 75
    return-void
.end method

.method public setCreatetime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->createtime:Ljava/lang/Long;

    .line 83
    return-void
.end method

.method public setEmailaddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->emailaddress:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setFacebookid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->facebookid:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setHasavatar(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/model/User;->hasavatar:Z

    .line 67
    return-void
.end method

.method public setLastlogintime(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->lastlogintime:Ljava/lang/Long;

    .line 91
    return-void
.end method

.method public setLevel(J)V
    .locals 0

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/User;->level:J

    .line 119
    return-void
.end method

.method public setMacaddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->macaddress:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNextXP(J)V
    .locals 0

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/User;->nextXP:J

    .line 127
    return-void
.end method

.method public setTotalXP(J)V
    .locals 0

    .prologue
    .line 134
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/User;->totalXP:J

    .line 135
    return-void
.end method

.method public setTwitterid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->twitterid:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->userid:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/User;->username:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setXp(J)V
    .locals 0

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/doodlemobile/gamecenter/model/User;->xp:J

    .line 115
    return-void
.end method
