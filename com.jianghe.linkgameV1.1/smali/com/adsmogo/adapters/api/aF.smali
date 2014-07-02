.class final Lcom/adsmogo/adapters/api/aF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adapters/api/aF;->c:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aF;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/aF;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/adsmogo/adapters/api/aF;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/aF;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/aF;->c:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/aF;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/aF;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
