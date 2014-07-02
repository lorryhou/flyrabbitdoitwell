.class final Lcom/adsmogo/mriad/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/e;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/e;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->close()V

    return-void
.end method
