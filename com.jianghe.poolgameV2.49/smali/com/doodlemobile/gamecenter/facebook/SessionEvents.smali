.class public Lcom/doodlemobile/gamecenter/facebook/SessionEvents;
.super Ljava/lang/Object;
.source "SessionEvents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;,
        Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;
    }
.end annotation


# static fields
.field private static mAuthListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogoutListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static addAuthListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public static addLogoutListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public static onLoginError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;

    .line 79
    invoke-interface {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;->onAuthFail(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public static onLoginSuccess()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;

    .line 73
    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;->onAuthSucceed()V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public static onLogoutBegin()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;

    .line 85
    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;->onLogoutBegin()V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public static onLogoutFinish()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;

    .line 91
    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;->onLogoutFinish()V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public static removeAuthListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mAuthListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public static removeLogoutListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->mLogoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method
