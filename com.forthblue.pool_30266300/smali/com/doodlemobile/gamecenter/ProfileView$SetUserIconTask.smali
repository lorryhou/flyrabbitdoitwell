.class Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;
.super Landroid/os/AsyncTask;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUserIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iput-object v2, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 766
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/DataCenter;->requestHeadIconImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 768
    if-eqz v0, :cond_2

    .line 769
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 779
    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 775
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 776
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iput-object v2, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 749
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 806
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->publishProgress([Ljava/lang/Object;)V

    .line 808
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 749
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 754
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 749
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 784
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 786
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 790
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 792
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
