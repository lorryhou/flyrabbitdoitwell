.class public final Lcom/adsmogo/adview/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->getDuration()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/adview/A;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v2}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/adview/A;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v3}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/adview/A;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5269\u4f59\u65f6\u95f4:0\u79d2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adview/i;->a:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
