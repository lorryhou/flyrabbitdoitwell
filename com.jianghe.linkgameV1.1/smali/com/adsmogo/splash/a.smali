.class final Lcom/adsmogo/splash/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/model/obj/Ration;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/adsmogo/splash/AdsMogoSplash;


# direct methods
.method public constructor <init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/model/obj/Ration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/a;->c:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/splash/a;->a:Lcom/adsmogo/model/obj/Ration;

    iput-object p3, p0, Lcom/adsmogo/splash/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/splash/a;->c:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v1, p0, Lcom/adsmogo/splash/a;->a:Lcom/adsmogo/model/obj/Ration;

    iget-object v2, p0, Lcom/adsmogo/splash/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/model/obj/Ration;Ljava/lang/String;)V

    return-void
.end method
