.class final Lcom/adsmogo/adview/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/b;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/c;->a:Lcom/adsmogo/adview/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adsmogo/adview/c;->a:Lcom/adsmogo/adview/b;

    invoke-static {v1}, Lcom/adsmogo/adview/b;->a(Lcom/adsmogo/adview/b;)Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delete local video is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
