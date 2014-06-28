.class public abstract Lcom/doodlemobile/gamecenter/Scene;
.super Landroid/widget/RelativeLayout;
.source "Scene.java"


# instance fields
.field protected mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract onInflate()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSetScene()V
.end method

.method public abstract refresh()V
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/Scene;->onResume()V

    .line 25
    return-void
.end method

.method public setScene()V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/Scene;->onSetScene()V

    .line 20
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/Scene;->resume()V

    .line 21
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/Scene;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0, p1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setTitle(Ljava/lang/String;)V

    .line 37
    return-void
.end method
