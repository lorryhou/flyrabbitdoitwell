.class public final enum Lcom/adsmogo/mriad/util/NavigationStringEnum;
.super Ljava/lang/Enum;


# static fields
.field public static final enum BACK:Lcom/adsmogo/mriad/util/NavigationStringEnum;

.field public static final enum CLOSE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

.field public static final enum FORWARD:Lcom/adsmogo/mriad/util/NavigationStringEnum;

.field public static final enum NONE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

.field public static final enum REFRESH:Lcom/adsmogo/mriad/util/NavigationStringEnum;

.field private static final synthetic b:[Lcom/adsmogo/mriad/util/NavigationStringEnum;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/adsmogo/mriad/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->NONE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    new-instance v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/adsmogo/mriad/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->CLOSE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    new-instance v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const-string v1, "BACK"

    const-string v2, "back"

    invoke-direct {v0, v1, v5, v2}, Lcom/adsmogo/mriad/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->BACK:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    new-instance v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const-string v1, "FORWARD"

    const-string v2, "forward"

    invoke-direct {v0, v1, v6, v2}, Lcom/adsmogo/mriad/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->FORWARD:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    new-instance v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const-string v1, "REFRESH"

    const-string v2, "refresh"

    invoke-direct {v0, v1, v7, v2}, Lcom/adsmogo/mriad/util/NavigationStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->REFRESH:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adsmogo/mriad/util/NavigationStringEnum;

    sget-object v1, Lcom/adsmogo/mriad/util/NavigationStringEnum;->NONE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsmogo/mriad/util/NavigationStringEnum;->CLOSE:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adsmogo/mriad/util/NavigationStringEnum;->BACK:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adsmogo/mriad/util/NavigationStringEnum;->FORWARD:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adsmogo/mriad/util/NavigationStringEnum;->REFRESH:Lcom/adsmogo/mriad/util/NavigationStringEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->b:[Lcom/adsmogo/mriad/util/NavigationStringEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->a:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/adsmogo/mriad/util/NavigationStringEnum;
    .locals 5

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/adsmogo/mriad/util/NavigationStringEnum;->values()[Lcom/adsmogo/mriad/util/NavigationStringEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsmogo/mriad/util/NavigationStringEnum;
    .locals 1

    const-class v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;

    return-object v0
.end method

.method public static values()[Lcom/adsmogo/mriad/util/NavigationStringEnum;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->b:[Lcom/adsmogo/mriad/util/NavigationStringEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsmogo/mriad/util/NavigationStringEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/util/NavigationStringEnum;->a:Ljava/lang/String;

    return-object v0
.end method
