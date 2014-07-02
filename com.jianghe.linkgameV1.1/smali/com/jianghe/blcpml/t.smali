.class Lcom/jianghe/blcpml/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/s;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/s;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/t;->a:Lcom/jianghe/blcpml/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/t;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->a(Lcom/jianghe/blcpml/s;)V

    return-void
.end method
