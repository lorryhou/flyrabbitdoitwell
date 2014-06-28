.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->backActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;->this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;->this$1:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$500(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 138
    return-void
.end method
