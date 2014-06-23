.class public Lcom/jianghe/aitswl/Pdm;
.super Ljava/lang/Object;


# static fields
.field public static final APPTYPE:I = 0x0

.field public static final GAMETYPE:I = 0x1

.field public static final STYLE0:I = 0x0

.field public static final STYLE1:I = 0x1

.field private static activity:Ljava/lang/Class;

.field static id:Ljava/lang/String;

.field private static manager:Lcom/jianghe/aitswl/Pdm;

.field private static receiver:Ljava/lang/Class;

.field private static service:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->id:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/jianghe/aitswl/Pda;

    invoke-static {p1, v0}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->activity:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->activity:Ljava/lang/Class;

    if-nez v0, :cond_0

    :cond_0
    const-class v0, Lcom/jianghe/aitswl/Pdr;

    invoke-static {p1, v0}, Lcom/jianghe/aitswl/ay;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->receiver:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->receiver:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_1
    const-class v0, Lcom/jianghe/aitswl/Pds;

    invoke-static {p1, v0}, Lcom/jianghe/aitswl/ay;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->service:Ljava/lang/Class;

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->service:Ljava/lang/Class;

    if-nez v0, :cond_2

    :cond_2
    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->activity:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/jianghe/aitswl/Pda;

    invoke-static {p0, v0}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->activity:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/jianghe/aitswl/Pdm;->activity:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;
    .locals 1

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->manager:Lcom/jianghe/aitswl/Pdm;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/aitswl/Pdm;

    invoke-direct {v0, p0}, Lcom/jianghe/aitswl/Pdm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->manager:Lcom/jianghe/aitswl/Pdm;

    :cond_0
    sget-object v0, Lcom/jianghe/aitswl/Pdm;->manager:Lcom/jianghe/aitswl/Pdm;

    return-object v0
.end method

.method public static getReceiver(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->receiver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/jianghe/aitswl/Pdr;

    invoke-static {p0, v0}, Lcom/jianghe/aitswl/ay;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->receiver:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/jianghe/aitswl/Pdm;->receiver:Ljava/lang/Class;

    return-object v0
.end method

.method public static getService(Landroid/content/Context;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/jianghe/aitswl/Pdm;->service:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lcom/jianghe/aitswl/Pds;

    invoke-static {p0, v0}, Lcom/jianghe/aitswl/ay;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/jianghe/aitswl/Pdm;->service:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/jianghe/aitswl/Pdm;->service:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p1}, Lcom/jianghe/aitswl/ay;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/jianghe/aitswl/ay;->l(Landroid/content/Context;)Z

    invoke-static {}, Lcom/jianghe/aitswl/ay;->f()Z

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/jianghe/aitswl/Pds;->a(Landroid/content/Context;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/jianghe/aitswl/ay;->i(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public setId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/jianghe/aitswl/ay;->f(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
