.class public Lcom/doodlemobile/gamecenter/Friends;
.super Ljava/lang/Object;
.source "Friends.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_FRIENDS_OTHER:I = 0x1

.field public static final NO_FRIENDS_PLAY_SAME_GAME:I = 0x2


# instance fields
.field private accounttype:I

.field private friendid:Ljava/lang/String;

.field private friendname:Ljava/lang/String;

.field private hasavatar:Z

.field private id:Ljava/lang/Long;

.field public itemtype:I

.field private relationtype:I

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/Friends;->itemtype:I

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/Friends;->itemtype:I

    .line 25
    iput p1, p0, Lcom/doodlemobile/gamecenter/Friends;->itemtype:I

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/Friends;->itemtype:I

    .line 30
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/Friends;->userid:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/Friends;->username:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/Friends;->friendid:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/Friends;->friendname:Ljava/lang/String;

    .line 34
    iput p5, p0, Lcom/doodlemobile/gamecenter/Friends;->accounttype:I

    .line 35
    iput p6, p0, Lcom/doodlemobile/gamecenter/Friends;->relationtype:I

    .line 36
    return-void
.end method


# virtual methods
.method public getAccounttype()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/doodlemobile/gamecenter/Friends;->accounttype:I

    return v0
.end method

.method public getFriendid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/Friends;->friendid:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/Friends;->friendname:Ljava/lang/String;

    return-object v0
.end method

.method public getHasavatar()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/Friends;->hasavatar:Z

    return v0
.end method

.method public getRelationtype()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/doodlemobile/gamecenter/Friends;->relationtype:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/Friends;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAccounttype(I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/doodlemobile/gamecenter/Friends;->accounttype:I

    .line 68
    return-void
.end method

.method public setFriendid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/Friends;->friendid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFriendname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/Friends;->friendname:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setHasavatar(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/Friends;->hasavatar:Z

    .line 84
    return-void
.end method

.method public setRelationtype(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/doodlemobile/gamecenter/Friends;->relationtype:I

    .line 76
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/Friends;->username:Ljava/lang/String;

    .line 44
    return-void
.end method
