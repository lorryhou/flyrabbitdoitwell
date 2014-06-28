.class public Lcom/doodlemobile/gamecenter/GetFeatureImageTask;
.super Landroid/os/AsyncTask;
.source "GetFeatureImageTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field image:[B

.field mFeatureView:Landroid/widget/ImageView;

.field mTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    .line 56
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->mTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Versionurl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/DataCenter;->requestFeatrueImage(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    .line 28
    aget-object v0, p1, v2

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->mFeatureView:Landroid/widget/ImageView;

    .line 30
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    if-nez v0, :cond_0

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1.0"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->publishProgress([Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->image:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->mFeatureView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->mFeatureView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GetFeatureImageTask;->mFeatureView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :cond_0
    return-void
.end method
