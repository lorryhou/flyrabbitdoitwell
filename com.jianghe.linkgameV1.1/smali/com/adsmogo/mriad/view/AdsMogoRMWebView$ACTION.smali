.class public final enum Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;
.super Ljava/lang/Enum;


# static fields
.field public static final enum PLAY_AUDIO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

.field public static final enum PLAY_VIDEO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

.field private static final synthetic a:[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    const-string v1, "PLAY_AUDIO"

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_AUDIO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    new-instance v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    const-string v1, "PLAY_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_VIDEO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_AUDIO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_VIDEO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->a:[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;
    .locals 1

    const-class v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->a:[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
