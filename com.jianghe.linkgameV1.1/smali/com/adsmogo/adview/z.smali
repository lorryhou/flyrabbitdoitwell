.class final Lcom/adsmogo/adview/z;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/y;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/z;->a:Lcom/adsmogo/adview/y;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/z;->a:Lcom/adsmogo/adview/y;

    iget v0, v0, Lcom/adsmogo/adview/y;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/z;->a:Lcom/adsmogo/adview/y;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/y;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/z;->a:Lcom/adsmogo/adview/y;

    const/4 v1, 0x0

    iput v1, v0, Lcom/adsmogo/adview/y;->a:I

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
