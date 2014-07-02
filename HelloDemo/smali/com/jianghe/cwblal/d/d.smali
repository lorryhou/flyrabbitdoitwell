.class Lcom/jianghe/cwblal/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/jianghe/cwblal/d/c;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/d/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d/d;->b:Lcom/jianghe/cwblal/d/c;

    iput-object p2, p0, Lcom/jianghe/cwblal/d/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/c/e;->b:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/d/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/e;->a(Landroid/content/Context;)Lcom/jianghe/cwblal/c/e;

    :cond_0
    return-void
.end method
