.class Lcom/jianghe/cwblal/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/Bona;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/Bona;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/a;->a:Lcom/jianghe/cwblal/Bona;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/a;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
