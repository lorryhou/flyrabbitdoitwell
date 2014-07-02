.class public Lcom/jianghe/cwblal/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/jianghe/cwblal/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/cwblal/l;->a:Lcom/jianghe/cwblal/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/jianghe/cwblal/l;
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/l;->a:Lcom/jianghe/cwblal/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/cwblal/l;

    invoke-direct {v0}, Lcom/jianghe/cwblal/l;-><init>()V

    sput-object v0, Lcom/jianghe/cwblal/l;->a:Lcom/jianghe/cwblal/l;

    :cond_0
    sget-object v0, Lcom/jianghe/cwblal/l;->a:Lcom/jianghe/cwblal/l;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Lcom/jianghe/cwblal/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jianghe/cwblal/m;-><init>(Lcom/jianghe/cwblal/l;Landroid/content/Context;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/jianghe/cwblal/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
