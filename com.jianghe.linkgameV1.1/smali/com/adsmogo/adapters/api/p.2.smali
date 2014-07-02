.class final Lcom/adsmogo/adapters/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/o;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/o;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    iput-object p2, p0, Lcom/adsmogo/adapters/api/p;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAduu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reqid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getReqid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getAdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/p;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/p;->a:Lcom/adsmogo/adapters/api/o;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/o;->a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adsmogo not UpdateService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
