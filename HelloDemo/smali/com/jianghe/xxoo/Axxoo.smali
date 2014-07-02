.class public Lcom/jianghe/xxoo/Axxoo;
.super Ljava/lang/Object;
.source "Axxoo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printS()V
    .locals 2

    .prologue
    .line 7
    const-string v0, "houfy"

    const-string v1, "xxoo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method
