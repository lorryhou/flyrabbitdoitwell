.class final Lcom/adsmogo/splash/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Ration;

.field private synthetic b:Lcom/adsmogo/splash/i;


# direct methods
.method public constructor <init>(Lcom/adsmogo/splash/i;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/j;->b:Lcom/adsmogo/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/splash/j;->a:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/splash/j;->b:Lcom/adsmogo/splash/i;

    iget-object v1, p0, Lcom/adsmogo/splash/j;->a:Lcom/adsmogo/model/obj/Ration;

    invoke-static {v0, v1}, Lcom/adsmogo/splash/i;->a(Lcom/adsmogo/splash/i;Lcom/adsmogo/model/obj/Ration;)V

    return-void
.end method
