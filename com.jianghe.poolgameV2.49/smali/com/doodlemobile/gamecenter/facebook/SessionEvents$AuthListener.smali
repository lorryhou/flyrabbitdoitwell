.class public interface abstract Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;
.super Ljava/lang/Object;
.source "SessionEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/SessionEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthListener"
.end annotation


# virtual methods
.method public abstract onAuthFail(Ljava/lang/String;)V
.end method

.method public abstract onAuthSucceed()V
.end method
