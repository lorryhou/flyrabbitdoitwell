.class Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

.field final synthetic val$item:Lcom/doodlemobile/gamecenter/UserInfo;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;Lcom/doodlemobile/gamecenter/UserInfo;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 771
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;->val$item:Lcom/doodlemobile/gamecenter/UserInfo;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfo;->marketuri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 776
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$1;->this$1:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;->this$0:Lcom/doodlemobile/gamecenter/UserInfoView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "No Android Market on Your Phone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
