.class public Lcom/jianghe/aitswl/x;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/Handler;

.field private c:Z

.field private d:Lcom/jianghe/aitswl/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jianghe/aitswl/x;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/aitswl/x;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/aitswl/x;->d:Lcom/jianghe/aitswl/aa;

    iput-object p1, p0, Lcom/jianghe/aitswl/x;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/aitswl/x;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/x;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/jianghe/aitswl/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jianghe/aitswl/x;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/jianghe/aitswl/x;)Lcom/jianghe/aitswl/aa;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/x;->d:Lcom/jianghe/aitswl/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/jianghe/aitswl/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/x;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/jianghe/aitswl/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/x;->d:Lcom/jianghe/aitswl/aa;

    return-void
.end method

.method public a(Lcom/jianghe/aitswl/aj;)V
    .locals 1

    new-instance v0, Lcom/jianghe/aitswl/y;

    invoke-direct {v0, p0, p1}, Lcom/jianghe/aitswl/y;-><init>(Lcom/jianghe/aitswl/x;Lcom/jianghe/aitswl/aj;)V

    invoke-virtual {v0}, Lcom/jianghe/aitswl/y;->start()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/aitswl/x;->c:Z

    return v0
.end method
