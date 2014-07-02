.class Lcom/jianghe/cwblal/d/m;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/d/l;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/d/l;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d/m;->a:Lcom/jianghe/cwblal/d/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/m;->a:Lcom/jianghe/cwblal/d/l;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/l;->notifyDataSetChanged()V

    return-void
.end method
