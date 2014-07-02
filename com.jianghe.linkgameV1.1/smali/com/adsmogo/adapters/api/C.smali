.class final Lcom/adsmogo/adapters/api/C;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/C;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iput p2, p0, Lcom/adsmogo/adapters/api/C;->b:I

    iput p3, p0, Lcom/adsmogo/adapters/api/C;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/C;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->q(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x138

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adsmogo/adapters/api/C;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/adsmogo/adapters/api/C;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v3}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/adsmogo/adapters/api/C;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v3}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget-object v3, v3, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/adsmogo/adapters/api/C;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adsmogo/adapters/api/C;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v1, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;)I

    move-result v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tow Click url:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",StatusCode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
