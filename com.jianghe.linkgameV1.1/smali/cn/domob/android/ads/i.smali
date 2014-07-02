.class public Lcn/domob/android/ads/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcn/domob/android/ads/i;->a:I

    .line 9
    iput p2, p0, Lcn/domob/android/ads/i;->b:I

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcn/domob/android/ads/i;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcn/domob/android/ads/i;->b:I

    return v0
.end method
