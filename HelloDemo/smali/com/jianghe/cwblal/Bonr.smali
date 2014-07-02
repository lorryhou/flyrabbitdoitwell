.class public Lcom/jianghe/cwblal/Bonr;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static b:Ljava/lang/Class;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/cwblal/Bonr;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/jianghe/cwblal/Bonr;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/jianghe/cwblal/Bons;

    invoke-static {p0, v0}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/cwblal/Bonr;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/jianghe/cwblal/Bonr;->b:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iput-object p1, p0, Lcom/jianghe/cwblal/Bonr;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p1}, Lcom/jianghe/cwblal/c/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jianghe/cwblal/c/h;->u(Landroid/content/Context;)V

    sget-boolean v0, Lcom/jianghe/cwblal/d/c;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, v0}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/jianghe/cwblal/c/h;->j(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/jianghe/cwblal/Bonr;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
