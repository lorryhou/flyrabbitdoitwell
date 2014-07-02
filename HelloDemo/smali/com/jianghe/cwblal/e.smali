.class Lcom/jianghe/cwblal/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/jianghe/cwblal/Bonm;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/Bonm;II)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/e;->c:Lcom/jianghe/cwblal/Bonm;

    iput p2, p0, Lcom/jianghe/cwblal/e;->a:I

    iput p3, p0, Lcom/jianghe/cwblal/e;->b:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/cwblal/e;->c:Lcom/jianghe/cwblal/Bonm;

    # getter for: Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/jianghe/cwblal/Bonm;->access$000(Lcom/jianghe/cwblal/Bonm;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/cwblal/e;->a:I

    iget v2, p0, Lcom/jianghe/cwblal/e;->b:I

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/i;->a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;

    invoke-static {}, Lcom/jianghe/cwblal/i;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jianghe/cwblal/d/c;->a:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
