.class Lcom/jianghe/aitswl/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/jianghe/aitswl/t;

.field final synthetic b:Lcom/jianghe/aitswl/y;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/y;[Lcom/jianghe/aitswl/t;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/z;->b:Lcom/jianghe/aitswl/y;

    iput-object p2, p0, Lcom/jianghe/aitswl/z;->a:[Lcom/jianghe/aitswl/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/z;->b:Lcom/jianghe/aitswl/y;

    iget-object v0, v0, Lcom/jianghe/aitswl/y;->b:Lcom/jianghe/aitswl/x;

    invoke-static {v0}, Lcom/jianghe/aitswl/x;->b(Lcom/jianghe/aitswl/x;)Lcom/jianghe/aitswl/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/z;->a:[Lcom/jianghe/aitswl/t;

    invoke-interface {v0, v1}, Lcom/jianghe/aitswl/aa;->a([Lcom/jianghe/aitswl/t;)V

    return-void
.end method
