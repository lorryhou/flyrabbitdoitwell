.class final Lcom/jianghe/aitswl/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/aitswl/b/c;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jianghe/aitswl/aj;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jianghe/aitswl/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jianghe/aitswl/ak;->b:Lcom/jianghe/aitswl/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jianghe/aitswl/b/h;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/ak;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/ak;->b:Lcom/jianghe/aitswl/aj;

    invoke-static {v0, v1, v2}, Lcom/jianghe/aitswl/Pda;->a(Landroid/content/Context;Ljava/lang/String;Lcom/jianghe/aitswl/aj;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/jianghe/aitswl/b/h;J)V
    .locals 0

    return-void
.end method
