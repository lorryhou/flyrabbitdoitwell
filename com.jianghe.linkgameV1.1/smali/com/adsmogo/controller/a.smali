.class final Lcom/adsmogo/controller/a;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/AdsMogoCore;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/AdsMogoCore;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/a;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/a;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-static {v0}, Lcom/adsmogo/controller/AdsMogoCore;->a(Lcom/adsmogo/controller/AdsMogoCore;)V

    return-void
.end method
