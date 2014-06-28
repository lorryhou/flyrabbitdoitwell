.class Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;
.super Ljava/lang/Object;
.source "UserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$photo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;->this$2:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;->val$photo:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter$ImageFetchHandler$1;->val$photo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 987
    return-void
.end method
