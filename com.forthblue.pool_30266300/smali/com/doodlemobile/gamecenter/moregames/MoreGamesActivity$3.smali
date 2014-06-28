.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$3;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->OpenNetWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$3;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 262
    return-void
.end method
