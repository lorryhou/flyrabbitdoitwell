.class public Lcom/jianghe/cwblal/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/os/Handler;

.field static b:Landroid/os/Handler;

.field private static c:Landroid/content/Context;

.field private static d:Lcom/jianghe/cwblal/i;

.field private static e:Ljava/util/List;

.field private static g:Lcom/jianghe/cwblal/d/c;


# instance fields
.field private f:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/cwblal/i;->d:Lcom/jianghe/cwblal/i;

    sput-object v0, Lcom/jianghe/cwblal/i;->e:Ljava/util/List;

    sput-object v0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    new-instance v0, Lcom/jianghe/cwblal/k;

    invoke-direct {v0}, Lcom/jianghe/cwblal/k;-><init>()V

    sput-object v0, Lcom/jianghe/cwblal/i;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/jianghe/cwblal/i;->c:Landroid/content/Context;

    iput p2, p0, Lcom/jianghe/cwblal/i;->f:I

    iput p3, p0, Lcom/jianghe/cwblal/i;->h:I

    sget-object v0, Lcom/jianghe/cwblal/i;->b:Landroid/os/Handler;

    sput-object v0, Lcom/jianghe/cwblal/i;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/cwblal/d/c;)Lcom/jianghe/cwblal/d/c;
    .locals 0

    sput-object p0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;
    .locals 2

    const-class v1, Lcom/jianghe/cwblal/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jianghe/cwblal/i;->d:Lcom/jianghe/cwblal/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/cwblal/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/jianghe/cwblal/i;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/jianghe/cwblal/i;->d:Lcom/jianghe/cwblal/i;

    :cond_0
    sget-object v0, Lcom/jianghe/cwblal/i;->d:Lcom/jianghe/cwblal/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/jianghe/cwblal/i;->e:Ljava/util/List;

    return-object p0
.end method

.method public static a()V
    .locals 1

    new-instance v0, Lcom/jianghe/cwblal/j;

    invoke-direct {v0}, Lcom/jianghe/cwblal/j;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/i;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Lcom/jianghe/cwblal/d/c;
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    return-object v0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/i;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/c;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/cwblal/i;->g:Lcom/jianghe/cwblal/d/c;

    :cond_0
    return-void
.end method
