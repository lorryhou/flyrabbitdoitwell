.class Lcom/jianghe/aitswl/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/Pda;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/Pda;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/al;->a:Lcom/jianghe/aitswl/Pda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/al;->a:Lcom/jianghe/aitswl/Pda;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/Pda;->a()Landroid/view/View;

    return-void
.end method
