.class public abstract Lcn/domob/android/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/j$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcn/domob/android/ads/i;

.field protected c:Lcn/domob/android/ads/h;

.field protected d:Lcn/domob/android/ads/e;

.field protected e:Lcn/domob/android/ads/j$a;

.field protected f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/domob/android/ads/j;->a:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcn/domob/android/ads/j;->b:Lcn/domob/android/ads/i;

    .line 69
    iput-object p3, p0, Lcn/domob/android/ads/j;->c:Lcn/domob/android/ads/h;

    .line 70
    iput-object p4, p0, Lcn/domob/android/ads/j;->d:Lcn/domob/android/ads/e;

    .line 71
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/j$a;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method

.method public a(Lcn/domob/android/ads/j$a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    .line 75
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/domob/android/ads/j;->f:Landroid/view/View;

    return-object v0
.end method

.method public c()Lcn/domob/android/ads/h;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/domob/android/ads/j;->c:Lcn/domob/android/ads/h;

    return-object v0
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/j$a;->b(Lcn/domob/android/ads/j;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->C()V

    .line 127
    :cond_0
    return-void
.end method

.method protected i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->D()Landroid/content/Context;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/j;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->E()V

    .line 141
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->F()V

    .line 147
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->G()V

    .line 153
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/domob/android/ads/j;->e:Lcn/domob/android/ads/j$a;

    invoke-interface {v0}, Lcn/domob/android/ads/j$a;->H()V

    .line 159
    :cond_0
    return-void
.end method
