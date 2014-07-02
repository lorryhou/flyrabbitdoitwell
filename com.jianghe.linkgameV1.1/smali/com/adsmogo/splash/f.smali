.class final Lcom/adsmogo/splash/f;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/c;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/f;->a:Lcom/adsmogo/splash/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adsmogo/splash/f;->a:Lcom/adsmogo/splash/c;

    iget-object v1, v1, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
