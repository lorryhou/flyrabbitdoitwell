.class final Lcom/adsmogo/adapters/api/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ar;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ar;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ar;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ar;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    return-void
.end method
