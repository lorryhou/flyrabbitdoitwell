.class public Lcom/jianghe/dkjfsl/Sora;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jianghe/dkjfsl/c/c;->a:Z

    invoke-static {p0}, Lcom/jianghe/dkjfsl/c/t;->w(Landroid/content/Context;)V

    invoke-static {}, Lcom/jianghe/dkjfsl/d/c;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/jianghe/dkjfsl/d/c;->a(Landroid/app/Activity;)V

    :cond_0
    invoke-static {}, Lcom/jianghe/dkjfsl/c/c;->a()Lcom/jianghe/dkjfsl/c/c;

    move-result-object v0

    new-instance v1, Lcom/jianghe/dkjfsl/d/e;

    invoke-direct {v1, p0}, Lcom/jianghe/dkjfsl/d/e;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/jianghe/dkjfsl/d/e;->b()V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/jianghe/dkjfsl/d/c;->a(Lcom/jianghe/dkjfsl/d/e;)V

    invoke-virtual {v0, p0}, Lcom/jianghe/dkjfsl/c/c;->b(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/jianghe/dkjfsl/c/c;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/c/c;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/jianghe/dkjfsl/Sora;->requestWindowFeature(I)Z

    invoke-virtual {p0, v0}, Lcom/jianghe/dkjfsl/Sora;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/jianghe/dkjfsl/Sorr;->a()Lcom/jianghe/dkjfsl/Sorr;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/jianghe/dkjfsl/Sora;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/jianghe/dkjfsl/Sora;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lcom/jianghe/dkjfsl/Sorr;->a()Lcom/jianghe/dkjfsl/Sorr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jianghe/dkjfsl/Sora;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    sput-boolean v0, Lcom/jianghe/dkjfsl/c/s;->d:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/jianghe/dkjfsl/Sora;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/jianghe/dkjfsl/Sora;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/dkjfsl/c/q;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/jianghe/dkjfsl/c/q;->a(Landroid/content/Context;)Lcom/jianghe/dkjfsl/c/q;

    return-void
.end method

.method protected onStop()V
    .locals 1

    sget-boolean v0, Lcom/jianghe/dkjfsl/c/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jianghe/dkjfsl/Sora;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
