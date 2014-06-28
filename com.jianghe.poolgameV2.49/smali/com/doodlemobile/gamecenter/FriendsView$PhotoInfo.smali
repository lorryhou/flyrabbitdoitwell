.class final Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;
.super Ljava/lang/Object;
.source "FriendsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FriendsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhotoInfo"
.end annotation


# instance fields
.field public photoUrl:Ljava/lang/String;

.field public position:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput p1, p0, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;->position:I

    .line 301
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/FriendsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 302
    return-void
.end method
