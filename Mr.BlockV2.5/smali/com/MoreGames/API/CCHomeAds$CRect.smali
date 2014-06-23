.class public Lcom/MoreGames/API/CCHomeAds$CRect;
.super Ljava/lang/Object;
.source "CCHomeAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/MoreGames/API/CCHomeAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRect"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p2, p0, Lcom/MoreGames/API/CCHomeAds$CRect;->top:I

    .line 35
    iput p1, p0, Lcom/MoreGames/API/CCHomeAds$CRect;->left:I

    .line 36
    iput p3, p0, Lcom/MoreGames/API/CCHomeAds$CRect;->right:I

    .line 37
    iput p4, p0, Lcom/MoreGames/API/CCHomeAds$CRect;->bottom:I

    .line 38
    return-void
.end method
