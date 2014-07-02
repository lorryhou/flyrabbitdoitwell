.class public Lcom/jianghe/dkjfsl/Sorm;
.super Ljava/lang/Object;


# static fields
.field private static activity:Ljava/lang/Class;

.field private static mCtx:Landroid/content/Context;

.field private static manager:Lcom/jianghe/dkjfsl/Sorm;

.field private static receiver:Ljava/lang/Class;

.field private static service:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/dkjfsl/Sorm;->manager:Lcom/jianghe/dkjfsl/Sorm;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    const-class v0, Lcom/jianghe/dkjfsl/Sora;

    invoke-static {p1, v0}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/dkjfsl/Sorm;->activity:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->activity:Ljava/lang/Class;

    if-nez v0, :cond_0

    :cond_0
    const-class v0, Lcom/jianghe/dkjfsl/Sorr;

    invoke-static {p1, v0}, Lcom/jianghe/dkjfsl/c/t;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/dkjfsl/Sorm;->receiver:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->receiver:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_1
    const-class v0, Lcom/jianghe/dkjfsl/Sors;

    invoke-static {p1, v0}, Lcom/jianghe/dkjfsl/c/t;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/dkjfsl/Sorm;->service:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->service:Ljava/lang/Class;

    if-nez v0, :cond_2

    :cond_2
    return-void
.end method

.method public static clearup(J)V
    .locals 4

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->j(Landroid/content/Context;)J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->l(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;
    .locals 2

    const-class v1, Lcom/jianghe/dkjfsl/Sorm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->manager:Lcom/jianghe/dkjfsl/Sorm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/dkjfsl/Sorm;

    invoke-direct {v0, p0}, Lcom/jianghe/dkjfsl/Sorm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jianghe/dkjfsl/Sorm;->manager:Lcom/jianghe/dkjfsl/Sorm;

    :cond_0
    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->manager:Lcom/jianghe/dkjfsl/Sorm;
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
.method public create()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->br:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    sget-object v1, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->bs:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/dkjfsl/Sorm;->activity:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/jianghe/dkjfsl/c/i;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setChannelId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/jianghe/dkjfsl/c/t;->d(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/Sorm;->mCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jianghe/dkjfsl/c/t;->c(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
