.class public Lcom/adsmogo/model/obj/MobFox;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClicktype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/MobFox;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getClickurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/MobFox;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/MobFox;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/MobFox;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setClicktype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/MobFox;->c:Ljava/lang/String;

    return-void
.end method

.method public setClickurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/MobFox;->d:Ljava/lang/String;

    return-void
.end method

.method public setHtmlString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/MobFox;->b:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/MobFox;->a:Ljava/lang/String;

    return-void
.end method
