.class final Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;
.super Ljava/lang/Object;
.source "UserInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/UserInfoView;
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
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;->position:I

    .line 576
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;->photoUrl:Ljava/lang/String;

    .line 577
    return-void
.end method
