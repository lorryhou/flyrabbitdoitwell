.class public Lcn/domob/android/ads/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/t;

.field private b:Lcn/domob/android/ads/t$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Init and config present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcn/domob/android/ads/t$d;

    invoke-direct {v0, p1}, Lcn/domob/android/ads/t$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    .line 65
    return-void
.end method


# virtual methods
.method public a(I)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;I)I

    .line 156
    return-object p0
.end method

.method public a(II)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;I)I

    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/t$d;->b(Lcn/domob/android/ads/t$d;I)I

    .line 70
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 151
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 146
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$b;

    .line 128
    return-object p0
.end method

.method public a(Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$c;

    .line 123
    return-object p0
.end method

.method public a(Z)Lcn/domob/android/ads/t$a;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Close button is needed for present dialog."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;Z)Z

    .line 79
    return-object p0
.end method

.method public a(ZF)Lcn/domob/android/ads/t$a;
    .locals 3

    .prologue
    .line 90
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force show is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->b(Lcn/domob/android/ads/t$d;Z)Z

    .line 93
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->c(Lcn/domob/android/ads/t$d;I)I

    .line 96
    :cond_0
    return-object p0
.end method

.method public a(ZZZZ)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;Z)Z

    .line 133
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p2}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;Z)Z

    .line 134
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p3}, Lcn/domob/android/ads/t$d;->g(Lcn/domob/android/ads/t$d;Z)Z

    .line 135
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p4}, Lcn/domob/android/ads/t$d;->h(Lcn/domob/android/ads/t$d;Z)Z

    .line 136
    return-object p0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    invoke-virtual {v0}, Lcn/domob/android/ads/t;->a()V

    .line 171
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcn/domob/android/ads/t;

    iget-object v1, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v1}, Lcn/domob/android/ads/t$d;->a(Lcn/domob/android/ads/t$d;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/t;-><init>(Landroid/content/Context;Lcn/domob/android/ads/t$1;)V

    iput-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->a:Lcn/domob/android/ads/t;

    iget-object v1, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1, v1}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;Landroid/view/View;Lcn/domob/android/ads/t$d;)V

    .line 167
    return-void
.end method

.method public b(I)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;I)I

    .line 161
    return-object p0
.end method

.method public b(Z)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;Z)Z

    .line 118
    return-object p0
.end method

.method public b(ZF)Lcn/domob/android/ads/t$a;
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto close is needed for present dialog with time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->c(Lcn/domob/android/ads/t$d;Z)Z

    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    float-to-int v1, p2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/android/ads/t$d;->d(Lcn/domob/android/ads/t$d;I)I

    .line 113
    :cond_0
    return-object p0
.end method

.method public c(Z)Lcn/domob/android/ads/t$a;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/android/ads/t$a;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0, p1}, Lcn/domob/android/ads/t$d;->i(Lcn/domob/android/ads/t$d;Z)Z

    .line 141
    return-object p0
.end method
