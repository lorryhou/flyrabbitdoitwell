.class public Lcom/jianghe/blcpml/b/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/jianghe/blcpml/b/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jianghe/blcpml/b/m;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/blcpml/b/m;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/blcpml/b/m;->d:Lcom/jianghe/blcpml/b/p;

    iput-object p1, p0, Lcom/jianghe/blcpml/b/m;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/blcpml/b/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/b/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/jianghe/blcpml/b/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jianghe/blcpml/b/m;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/jianghe/blcpml/b/m;)Lcom/jianghe/blcpml/b/p;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/b/m;->d:Lcom/jianghe/blcpml/b/p;

    return-object v0
.end method

.method static synthetic c(Lcom/jianghe/blcpml/b/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/b/m;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/jianghe/blcpml/b/f;)V
    .locals 1

    new-instance v0, Lcom/jianghe/blcpml/b/n;

    invoke-direct {v0, p0, p1}, Lcom/jianghe/blcpml/b/n;-><init>(Lcom/jianghe/blcpml/b/m;Lcom/jianghe/blcpml/b/f;)V

    invoke-virtual {v0}, Lcom/jianghe/blcpml/b/n;->start()V

    return-void
.end method

.method public a(Lcom/jianghe/blcpml/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/b/m;->d:Lcom/jianghe/blcpml/b/p;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/blcpml/b/m;->c:Z

    return v0
.end method
