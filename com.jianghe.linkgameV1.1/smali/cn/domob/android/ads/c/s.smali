.class public Lcn/domob/android/ads/c/s;
.super Lcn/domob/android/ads/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/c/s$k;,
        Lcn/domob/android/ads/c/s$d;,
        Lcn/domob/android/ads/c/s$b;,
        Lcn/domob/android/ads/c/s$l;,
        Lcn/domob/android/ads/c/s$c;,
        Lcn/domob/android/ads/c/s$a;,
        Lcn/domob/android/ads/c/s$i;,
        Lcn/domob/android/ads/c/s$e;,
        Lcn/domob/android/ads/c/s$h;,
        Lcn/domob/android/ads/c/s$j;,
        Lcn/domob/android/ads/c/s$f;,
        Lcn/domob/android/ads/c/s$g;
    }
.end annotation


# static fields
.field public static final e:I = 0x64

.field public static final f:I = 0x65

.field public static final g:I = 0x66

.field private static h:Lcn/domob/android/ads/d/e;


# instance fields
.field d:Lcn/domob/android/ads/c/s$a;

.field private i:Lcn/domob/android/ads/c/l;

.field private final j:Lcn/domob/android/ads/c/s$k;

.field private k:Lcn/domob/android/ads/c/s$c;

.field private l:Lcn/domob/android/ads/a/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/c/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c/s;->h:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcn/domob/android/ads/c/s$b;->a:Lcn/domob/android/ads/c/s$b;

    sget-object v1, Lcn/domob/android/ads/c/s$d;->c:Lcn/domob/android/ads/c/s$d;

    sget-object v2, Lcn/domob/android/ads/c/s$k;->a:Lcn/domob/android/ads/c/s$k;

    invoke-direct {p0, p1, v0, v1, v2}, Lcn/domob/android/ads/c/s;-><init>(Landroid/content/Context;Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;Lcn/domob/android/ads/c/s$k;)V

    .line 112
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;Lcn/domob/android/ads/c/s$k;)V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/ads/a;-><init>(Landroid/content/Context;I)V

    .line 117
    iput-object p4, p0, Lcn/domob/android/ads/c/s;->j:Lcn/domob/android/ads/c/s$k;

    .line 118
    invoke-direct {p0, p2, p3}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;)V

    .line 119
    return-void
.end method

.method private a(Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->setScrollContainer(Z)V

    .line 123
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->setBackgroundColor(I)V

    .line 125
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->setVerticalScrollBarEnabled(Z)V

    .line 126
    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->setHorizontalScrollBarEnabled(Z)V

    .line 128
    new-instance v0, Lcn/domob/android/ads/c/s$1;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/c/s$1;-><init>(Lcn/domob/android/ads/c/s;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    invoke-virtual {p0}, Lcn/domob/android/ads/c/s;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    new-instance v0, Lcn/domob/android/ads/c/l;

    invoke-direct {v0, p0, p1, p2}, Lcn/domob/android/ads/c/l;-><init>(Lcn/domob/android/ads/c/s;Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;)V

    iput-object v0, p0, Lcn/domob/android/ads/c/s;->i:Lcn/domob/android/ads/c/l;

    .line 145
    new-instance v0, Lcn/domob/android/ads/c/s$c;

    invoke-direct {v0}, Lcn/domob/android/ads/c/s$c;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    .line 146
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "domob.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mraid.js"

    aput-object v2, v0, v1

    .line 151
    invoke-super {p0, p1, v0}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/domob/android/ads/a/d$b;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcn/domob/android/ads/c/s;->l:Lcn/domob/android/ads/a/d$b;

    .line 226
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/p;)V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/android/ads/c/p;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;)V

    .line 248
    sget-object v1, Lcn/domob/android/ads/c/s;->h:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fire change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public a(Lcn/domob/android/ads/c/s$a;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcn/domob/android/ads/c/s;->d:Lcn/domob/android/ads/c/s$a;

    .line 217
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$e;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$e;)Lcn/domob/android/ads/c/s$e;

    .line 201
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$f;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$f;)Lcn/domob/android/ads/c/s$f;

    .line 177
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$g;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$g;)Lcn/domob/android/ads/c/s$g;

    .line 169
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$h;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$h;)Lcn/domob/android/ads/c/s$h;

    .line 193
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$i;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$i;)Lcn/domob/android/ads/c/s$i;

    .line 209
    return-void
.end method

.method protected a(Lcn/domob/android/ads/c/s$j;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0, p1}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;Lcn/domob/android/ads/c/s$j;)Lcn/domob/android/ads/c/s$j;

    .line 185
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/android/ads/c/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcn/domob/android/ads/c/s;->h:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fire changes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/net/URI;)Z
    .locals 5

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 281
    sget-object v0, Lcn/domob/android/ads/c/s;->h:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command type is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 282
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 283
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 285
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {v1, v2, p0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;Ljava/util/Map;Lcn/domob/android/ads/c/s;)Lcn/domob/android/ads/c/b;

    move-result-object v0

    .line 289
    if-nez v0, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c/s;->b(Ljava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_1
    return v0

    .line 293
    :cond_1
    invoke-virtual {v0}, Lcn/domob/android/ads/c/b;->a()V

    .line 294
    invoke-virtual {p0, v1}, Lcn/domob/android/ads/c/s;->b(Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected b()Lcn/domob/android/ads/c/l;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->i:Lcn/domob/android/ads/c/l;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.fireErrorEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected c()Lcn/domob/android/ads/c/s$g;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->a(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$g;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcn/domob/android/ads/c/s$f;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->b(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$f;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->i:Lcn/domob/android/ads/c/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/l;->a()V

    .line 157
    invoke-super {p0}, Lcn/domob/android/ads/a;->destroy()V

    .line 158
    return-void
.end method

.method protected e()Lcn/domob/android/ads/c/s$j;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->c(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$j;

    move-result-object v0

    return-object v0
.end method

.method protected f()Lcn/domob/android/ads/c/s$h;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->d(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$h;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcn/domob/android/ads/c/s$e;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->e(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$e;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcn/domob/android/ads/c/s$i;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->k:Lcn/domob/android/ads/c/s$c;

    invoke-static {v0}, Lcn/domob/android/ads/c/s$c;->f(Lcn/domob/android/ads/c/s$c;)Lcn/domob/android/ads/c/s$i;

    move-result-object v0

    return-object v0
.end method

.method protected i()Lcn/domob/android/ads/c/s$a;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->d:Lcn/domob/android/ads/c/s$a;

    return-object v0
.end method

.method protected j()Lcn/domob/android/ads/a/d$b;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->l:Lcn/domob/android/ads/a/d$b;

    return-object v0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->i:Lcn/domob/android/ads/c/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/l;->b()V

    .line 237
    iget-object v0, p0, Lcn/domob/android/ads/c/s;->j:Lcn/domob/android/ads/c/s$k;

    invoke-static {v0}, Lcn/domob/android/ads/c/o;->a(Lcn/domob/android/ads/c/s$k;)Lcn/domob/android/ads/c/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    .line 238
    invoke-virtual {p0}, Lcn/domob/android/ads/c/s;->l()V

    .line 239
    invoke-virtual {p0}, Lcn/domob/android/ads/c/s;->e()Lcn/domob/android/ads/c/s$j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcn/domob/android/ads/c/s;->e()Lcn/domob/android/ads/c/s$j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcn/domob/android/ads/c/s$j;->a(Lcn/domob/android/ads/c/s;)V

    .line 242
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 1

    .prologue
    .line 266
    const-string v0, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;)V

    .line 267
    return-void
.end method
