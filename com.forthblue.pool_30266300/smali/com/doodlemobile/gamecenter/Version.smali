.class public Lcom/doodlemobile/gamecenter/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final VersionCode:I = 0x8

.field private static final VersionName:Ljava/lang/String; = "0.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "0.5.0"

    return-object v0
.end method
