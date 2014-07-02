.class final Lcom/adsmogo/mriad/controller/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/controller/d;->a:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    iput-object p2, p0, Lcom/adsmogo/mriad/controller/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/adsmogo/mriad/controller/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/adsmogo/mriad/controller/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/adsmogo/mriad/controller/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/adsmogo/mriad/controller/d;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/adsmogo/mriad/controller/d;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/d;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iget-object v0, p0, Lcom/adsmogo/mriad/controller/d;->a:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    const-string v2, "ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/mriad/controller/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/mriad/controller/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/mriad/controller/d;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/adsmogo/mriad/controller/d;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/adsmogo/mriad/controller/d;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->a(Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
