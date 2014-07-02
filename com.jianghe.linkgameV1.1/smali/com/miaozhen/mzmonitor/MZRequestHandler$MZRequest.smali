.class Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaozhen/mzmonitor/MZRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MZRequest"
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "UTF-8"

.field private static final c:Ljava/lang/String; = "mn"

.field private static final d:Ljava/lang/String; = "mp"

.field private static final e:Ljava/lang/String; = "m2"

.field private static final f:Ljava/lang/String; = "mt"

.field private static final g:Ljava/lang/String; = "mr"

.field private static final h:Ljava/lang/String; = "m1"

.field private static final i:Ljava/lang/String; = "mw"

.field private static final j:Ljava/lang/String; = "mu"

.field private static final k:Ljava/lang/String; = "md"

.field private static final l:Ljava/lang/String; = "x"

.field private static final m:Ljava/lang/String; = "y"

.field private static final n:Ljava/lang/String; = "mv"

.field private static final o:Ljava/lang/String; = "mc"

.field private static final p:Ljava/lang/String; = "mj"

.field private static final q:Ljava/lang/String; = "mg"

.field private static final r:I = 0x1388

.field private static final s:I = 0x2710

.field private static final t:Ljava/lang/String; = "X-MZ-UIC"


# instance fields
.field final synthetic a:Lcom/miaozhen/mzmonitor/MZRequestHandler;


# direct methods
.method constructor <init>(Lcom/miaozhen/mzmonitor/MZRequestHandler;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/net/URL;
    .locals 9

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a()Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v0, ""

    .line 137
    const-string v4, "&o="

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const-string v0, "&o="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v4, 0x0

    const-string v5, "&o="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v4}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    move-result-object v4

    .line 143
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&mn="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&mp="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&m1="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&m2="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&mw="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->g()Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_1

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "&mj="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-8"

    invoke-static {v1, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "&md="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mv="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "a2.0"

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mt="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v5}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mr="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v5}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mc="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v5}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v4, "UNKNOWN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&mg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e()I

    move-result v1

    if-lez v1, :cond_5

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mu="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v5

    iget-object v7, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v7}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&x="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v4}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&y="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v4}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "MZSDK:20130601"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 185
    :goto_1
    return-object v0

    .line 167
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "&mu="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-direct {p0}, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->b()Ljava/net/URL;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 115
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a:Lcom/miaozhen/mzmonitor/MZRequestHandler;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/16 v1, 0x1388

    .line 123
    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 125
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 126
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 127
    const-string v1, "X-MZ-UIC"

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miaozhen/mzmonitor/MZUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0

    .line 120
    :cond_0
    const/16 v1, 0x2710

    goto :goto_0
.end method
