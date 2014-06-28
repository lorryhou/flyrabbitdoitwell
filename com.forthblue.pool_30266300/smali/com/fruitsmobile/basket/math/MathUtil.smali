.class public Lcom/fruitsmobile/basket/math/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "basket"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acos(F)F
.end method

.method public static native asin(F)F
.end method

.method public static native atan(F)F
.end method

.method public static native atan2(FF)F
.end method

.method public static native cos(F)F
.end method

.method public static native sin(F)F
.end method

.method public static native sqrt(F)F
.end method

.method public static native tan(F)F
.end method
