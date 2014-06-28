.class final Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;
.super Ljava/lang/Object;
.source "LeaderBoardsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/LeaderBoardsView;
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
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;->position:I

    .line 465
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/LeaderBoardsView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 466
    return-void
.end method
