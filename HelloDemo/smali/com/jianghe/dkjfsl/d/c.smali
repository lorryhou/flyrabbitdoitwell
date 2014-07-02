.class public Lcom/jianghe/dkjfsl/d/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/os/Handler;

.field private static b:Landroid/app/Activity;

.field private static c:Lcom/jianghe/dkjfsl/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/dkjfsl/d/c;->b:Landroid/app/Activity;

    sput-object v0, Lcom/jianghe/dkjfsl/d/c;->c:Lcom/jianghe/dkjfsl/d/e;

    new-instance v0, Lcom/jianghe/dkjfsl/d/d;

    invoke-direct {v0}, Lcom/jianghe/dkjfsl/d/d;-><init>()V

    sput-object v0, Lcom/jianghe/dkjfsl/d/c;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/d/c;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/jianghe/dkjfsl/d/c;->b:Landroid/app/Activity;

    return-void
.end method

.method public static a(Lcom/jianghe/dkjfsl/d/e;)V
    .locals 0

    sput-object p0, Lcom/jianghe/dkjfsl/d/c;->c:Lcom/jianghe/dkjfsl/d/e;

    return-void
.end method

.method static synthetic b()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/d/c;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c()Lcom/jianghe/dkjfsl/d/e;
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/d/c;->c:Lcom/jianghe/dkjfsl/d/e;

    return-object v0
.end method
