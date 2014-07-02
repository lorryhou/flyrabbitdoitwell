.class public Lcom/jianghe/cwblal/Bonm;
.super Ljava/lang/Object;


# static fields
.field public static final ALL:I = 0x7

.field public static final APP_AND_DESKTOP:I = 0x4

.field public static final APP_AND_OTHER_APP:I = 0x6

.field public static final DESKTOP_AND_OTHER_APP:I = 0x5

.field public static final LEFT:I = 0x1

.field public static final ON_APP:I = 0x1

.field public static final ON_DESKTOP:I = 0x3

.field public static final ON_OTHER_APP:I = 0x2

.field public static final RIGHT:I = 0x2

.field private static manager:Lcom/jianghe/cwblal/Bonm;


# instance fields
.field private context:Landroid/content/Context;

.field private location:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/cwblal/Bonm;->manager:Lcom/jianghe/cwblal/Bonm;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jianghe/cwblal/Bonm;->location:I

    iput v0, p0, Lcom/jianghe/cwblal/Bonm;->type:I

    iput-object p1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/jianghe/cwblal/Bonm;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/jianghe/cwblal/Bonm;
    .locals 2

    const-class v1, Lcom/jianghe/cwblal/Bonm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jianghe/cwblal/Bonm;->manager:Lcom/jianghe/cwblal/Bonm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/cwblal/Bonm;

    invoke-direct {v0, p0}, Lcom/jianghe/cwblal/Bonm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jianghe/cwblal/Bonm;->manager:Lcom/jianghe/cwblal/Bonm;

    :cond_0
    sget-object v0, Lcom/jianghe/cwblal/Bonm;->manager:Lcom/jianghe/cwblal/Bonm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    iget v0, p0, Lcom/jianghe/cwblal/Bonm;->location:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jianghe/cwblal/Bonm;->type:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    iget v1, p0, Lcom/jianghe/cwblal/Bonm;->type:I

    iget v2, p0, Lcom/jianghe/cwblal/Bonm;->location:I

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/i;->a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/cwblal/i;->b()V

    :cond_0
    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jianghe/cwblal/c/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public show(II)V
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/cwblal/c/b;->bi:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/cwblal/c/b;->bj:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/jianghe/cwblal/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/jianghe/cwblal/e;-><init>(Lcom/jianghe/cwblal/Bonm;II)V

    iput p2, p0, Lcom/jianghe/cwblal/Bonm;->location:I

    iput p1, p0, Lcom/jianghe/cwblal/Bonm;->type:I

    iget-object v1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;I)V

    new-instance v1, Lcom/jianghe/cwblal/a/k;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/jianghe/cwblal/a/k;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jianghe/cwblal/Bonm;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jianghe/cwblal/a/c;

    invoke-direct {v1}, Lcom/jianghe/cwblal/a/c;-><init>()V

    sget-object v2, Lcom/jianghe/cwblal/c/b;->bB:Ljava/lang/String;

    sget-object v3, Lcom/jianghe/cwblal/c/b;->bA:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/jianghe/cwblal/a/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method
