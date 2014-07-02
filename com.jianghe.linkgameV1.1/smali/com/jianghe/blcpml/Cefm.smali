.class public Lcom/jianghe/blcpml/Cefm;
.super Ljava/lang/Object;


# static fields
.field protected static final DIALOG:I = 0x2

.field protected static final WINDOW_FULL:I = 0x0

.field public static final WINDOW_NOT_FULL:I = 0x1

.field private static m:Lcom/jianghe/blcpml/Cefm;


# instance fields
.field private ShowTimejiange:J

.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/blcpml/Cefm;->m:Lcom/jianghe/blcpml/Cefm;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/jianghe/blcpml/Cefm;->ShowTimejiange:J

    return-void
.end method

.method static synthetic access$000(Lcom/jianghe/blcpml/Cefm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/Cefm;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/jianghe/blcpml/Cefm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/Cefm;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/jianghe/blcpml/Cefm;)J
    .locals 2

    iget-wide v0, p0, Lcom/jianghe/blcpml/Cefm;->ShowTimejiange:J

    return-wide v0
.end method

.method public static getInstance()Lcom/jianghe/blcpml/Cefm;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/Cefm;->m:Lcom/jianghe/blcpml/Cefm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/blcpml/Cefm;

    invoke-direct {v0}, Lcom/jianghe/blcpml/Cefm;-><init>()V

    sput-object v0, Lcom/jianghe/blcpml/Cefm;->m:Lcom/jianghe/blcpml/Cefm;

    :cond_0
    sget-object v0, Lcom/jianghe/blcpml/Cefm;->m:Lcom/jianghe/blcpml/Cefm;

    return-object v0
.end method


# virtual methods
.method public canShowNext(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/jianghe/blcpml/e/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setPosition(Landroid/content/Context;II)V
    .locals 1

    invoke-static {p1}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/jianghe/blcpml/n;->a(II)V

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jianghe/blcpml/Cefm;->show(Landroid/content/Context;Z)V

    return-void
.end method

.method public show(Landroid/content/Context;Z)V
    .locals 5

    new-instance v0, Lcom/jianghe/blcpml/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/jianghe/blcpml/d;-><init>(Lcom/jianghe/blcpml/Cefm;Landroid/content/Context;Z)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blcpml/e/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blcpml/e/b;->bE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blcpml/e/b;->bD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/jianghe/blcpml/a/a;

    invoke-direct {v1}, Lcom/jianghe/blcpml/a/a;-><init>()V

    sget-object v2, Lcom/jianghe/blcpml/e/b;->bC:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blcpml/e/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blcpml/e/b;->bE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blcpml/e/b;->bD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/jianghe/blcpml/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
