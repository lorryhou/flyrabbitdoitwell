.class Lcom/miaozhen/mzmonitor/MZMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZMonitor$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miaozhen/mzmonitor/MZMonitor$1;->b:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/miaozhen/mzmonitor/MZRequestHandler;

    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZMonitor$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZMonitor$1;->b:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/miaozhen/mzmonitor/MZRequestHandler;-><init>(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    .line 75
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a()V

    .line 76
    return-void
.end method
