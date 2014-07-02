.class public Lcom/jianghe/dkjfsl/Sorr;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/jianghe/dkjfsl/Sorr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/dkjfsl/Sorr;->a:Lcom/jianghe/dkjfsl/Sorr;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/jianghe/dkjfsl/Sorr;
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/Sorr;->a:Lcom/jianghe/dkjfsl/Sorr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/dkjfsl/Sorr;

    invoke-direct {v0}, Lcom/jianghe/dkjfsl/Sorr;-><init>()V

    sput-object v0, Lcom/jianghe/dkjfsl/Sorr;->a:Lcom/jianghe/dkjfsl/Sorr;

    :cond_0
    sget-object v0, Lcom/jianghe/dkjfsl/Sorr;->a:Lcom/jianghe/dkjfsl/Sorr;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "home"

    invoke-static {v1}, Lcom/jianghe/dkjfsl/c/o;->a(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->bJ:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/jianghe/dkjfsl/c/h;->bK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/jianghe/dkjfsl/c/s;->d:Z

    sput-boolean v3, Lcom/jianghe/dkjfsl/c/c;->a:Z

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->r(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/i;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ""

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/i;->c(Landroid/content/Context;)V

    :cond_2
    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->s(Landroid/content/Context;)V

    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->x(Landroid/content/Context;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/i;->a(Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/jianghe/dkjfsl/c/t;->a(Landroid/content/Context;J)V

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/t;->r(Landroid/content/Context;)V

    const-string v0, ""

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->D:Ljava/lang/String;

    invoke-virtual {p1, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/jianghe/dkjfsl/c/h;->E:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/jianghe/dkjfsl/c;->a()Lcom/jianghe/dkjfsl/c;

    move-result-object v0

    const/16 v1, -0x3e9

    invoke-virtual {v0, p1, v1, v6}, Lcom/jianghe/dkjfsl/c;->a(Landroid/content/Context;II)V

    :cond_4
    return-void
.end method
