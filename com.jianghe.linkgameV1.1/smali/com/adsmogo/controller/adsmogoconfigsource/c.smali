.class final Lcom/adsmogo/controller/adsmogoconfigsource/c;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/c;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-static {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    return-void
.end method
