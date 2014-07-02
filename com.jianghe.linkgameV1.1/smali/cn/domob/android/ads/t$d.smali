.class Lcn/domob/android/ads/t$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcn/domob/android/ads/t$c;

.field private i:Lcn/domob/android/ads/t$b;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput v2, p0, Lcn/domob/android/ads/t$d;->b:I

    .line 177
    iput v2, p0, Lcn/domob/android/ads/t$d;->c:I

    .line 178
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->d:Z

    .line 179
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->e:Z

    .line 180
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->f:Z

    .line 181
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->g:Z

    .line 184
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->j:Z

    .line 185
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->k:Z

    .line 186
    iput v1, p0, Lcn/domob/android/ads/t$d;->l:I

    .line 187
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->m:Z

    .line 188
    iput v1, p0, Lcn/domob/android/ads/t$d;->n:I

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/t$d;->o:Z

    .line 190
    iput-boolean v1, p0, Lcn/domob/android/ads/t$d;->p:Z

    .line 191
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/t$d;->q:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/t$d;->r:Landroid/graphics/drawable/Drawable;

    .line 193
    iput v2, p0, Lcn/domob/android/ads/t$d;->s:I

    .line 194
    iput v2, p0, Lcn/domob/android/ads/t$d;->t:I

    .line 197
    iput-object p1, p0, Lcn/domob/android/ads/t$d;->a:Landroid/content/Context;

    .line 198
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->b:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcn/domob/android/ads/t$d;->r:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcn/domob/android/ads/t$d;->q:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$b;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcn/domob/android/ads/t$d;->i:Lcn/domob/android/ads/t$b;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;Lcn/domob/android/ads/t$c;)Lcn/domob/android/ads/t$c;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcn/domob/android/ads/t$d;->h:Lcn/domob/android/ads/t$c;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->j:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->b:I

    return v0
.end method

.method static synthetic b(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->c:I

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->k:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->c:I

    return v0
.end method

.method static synthetic c(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->l:I

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->m:Z

    return p1
.end method

.method static synthetic d(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->n:I

    return p1
.end method

.method static synthetic d(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->p:Z

    return v0
.end method

.method static synthetic d(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->o:Z

    return p1
.end method

.method static synthetic e(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->s:I

    return p1
.end method

.method static synthetic e(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$c;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$d;->h:Lcn/domob/android/ads/t$c;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->f:Z

    return p1
.end method

.method static synthetic f(Lcn/domob/android/ads/t$d;I)I
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcn/domob/android/ads/t$d;->t:I

    return p1
.end method

.method static synthetic f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$d;->i:Lcn/domob/android/ads/t$b;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->d:Z

    return p1
.end method

.method static synthetic g(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->o:Z

    return v0
.end method

.method static synthetic g(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->g:Z

    return p1
.end method

.method static synthetic h(Lcn/domob/android/ads/t$d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$d;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->e:Z

    return p1
.end method

.method static synthetic i(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->s:I

    return v0
.end method

.method static synthetic i(Lcn/domob/android/ads/t$d;Z)Z
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcn/domob/android/ads/t$d;->p:Z

    return p1
.end method

.method static synthetic j(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->t:I

    return v0
.end method

.method static synthetic k(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/DomobInterstitialAd$BorderType;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/t$d;->q:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->f:Z

    return v0
.end method

.method static synthetic m(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->d:Z

    return v0
.end method

.method static synthetic n(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->g:Z

    return v0
.end method

.method static synthetic o(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->e:Z

    return v0
.end method

.method static synthetic p(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->j:Z

    return v0
.end method

.method static synthetic q(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->l:I

    return v0
.end method

.method static synthetic r(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->k:Z

    return v0
.end method

.method static synthetic s(Lcn/domob/android/ads/t$d;)Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcn/domob/android/ads/t$d;->m:Z

    return v0
.end method

.method static synthetic t(Lcn/domob/android/ads/t$d;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/android/ads/t$d;->n:I

    return v0
.end method
