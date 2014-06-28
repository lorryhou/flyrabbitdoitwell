.class public Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;
.super Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendsRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0, p1}, Lcom/doodlemobile/gamecenter/ProfileView;->importFacebookFriends(Ljava/lang/String;)V

    .line 426
    return-void
.end method
