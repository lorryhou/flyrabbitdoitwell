.class Lcom/jianghe/blcpml/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/Cefs;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/Cefs;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/g;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/jianghe/blcpml/Cefm;->getInstance()Lcom/jianghe/blcpml/Cefm;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/g;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-static {v1}, Lcom/jianghe/blcpml/Cefs;->a(Lcom/jianghe/blcpml/Cefs;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/blcpml/Cefm;->show(Landroid/content/Context;Z)V

    return-void
.end method
