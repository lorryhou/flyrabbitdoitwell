.class public Lcom/jianghe/blcpml/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/File;

.field private static b:Ljava/io/File;

.field private static g:Lcom/jianghe/blcpml/i;


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/jianghe/blcpml/b/f;

.field private f:Z

.field private h:Landroid/os/Handler;

.field private i:Lcom/jianghe/blcpml/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/blcpml/i;->g:Lcom/jianghe/blcpml/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/jianghe/blcpml/i;->e:Lcom/jianghe/blcpml/b/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/blcpml/i;->f:Z

    new-instance v0, Lcom/jianghe/blcpml/l;

    invoke-direct {v0, p0}, Lcom/jianghe/blcpml/l;-><init>(Lcom/jianghe/blcpml/i;)V

    iput-object v0, p0, Lcom/jianghe/blcpml/i;->h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/jianghe/blcpml/i;->i:Lcom/jianghe/blcpml/e;

    iput-object p1, p0, Lcom/jianghe/blcpml/i;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/blcpml/i;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/jianghe/blcpml/i;Lcom/jianghe/blcpml/b/f;)Lcom/jianghe/blcpml/b/f;
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/i;->e:Lcom/jianghe/blcpml/b/f;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/jianghe/blcpml/i;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/i;->g:Lcom/jianghe/blcpml/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/blcpml/i;

    invoke-direct {v0, p0}, Lcom/jianghe/blcpml/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jianghe/blcpml/i;->g:Lcom/jianghe/blcpml/i;

    :cond_0
    sget-object v0, Lcom/jianghe/blcpml/i;->g:Lcom/jianghe/blcpml/i;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/jianghe/blcpml/i;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic a(Lcom/jianghe/blcpml/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/jianghe/blcpml/i;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/i;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0

    sput-object p0, Lcom/jianghe/blcpml/i;->b:Ljava/io/File;

    return-object p0
.end method

.method static synthetic c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->e:Lcom/jianghe/blcpml/b/f;

    return-object v0
.end method

.method static synthetic c()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/i;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/jianghe/blcpml/i;)I
    .locals 1

    iget v0, p0, Lcom/jianghe/blcpml/i;->d:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->i:Lcom/jianghe/blcpml/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->i:Lcom/jianghe/blcpml/e;

    invoke-interface {v0}, Lcom/jianghe/blcpml/e;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jianghe/blcpml/i;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jianghe/blcpml/e/b;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jianghe/blcpml/e/b;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jianghe/blcpml/i;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/blcpml/e/h;->k(Landroid/content/Context;)Z

    iput p1, p0, Lcom/jianghe/blcpml/i;->d:I

    new-instance v0, Lcom/jianghe/blcpml/j;

    invoke-direct {v0, p0, p1}, Lcom/jianghe/blcpml/j;-><init>(Lcom/jianghe/blcpml/i;I)V

    invoke-virtual {v0}, Lcom/jianghe/blcpml/j;->start()V

    goto :goto_0
.end method
