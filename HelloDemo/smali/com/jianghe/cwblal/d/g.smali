.class Lcom/jianghe/cwblal/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/d/f;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d/g;->a:Lcom/jianghe/cwblal/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/cwblal/d/g;->a:Lcom/jianghe/cwblal/d/f;

    iget-object v0, v0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->b(Lcom/jianghe/cwblal/d/c;Z)Z

    return-void
.end method
