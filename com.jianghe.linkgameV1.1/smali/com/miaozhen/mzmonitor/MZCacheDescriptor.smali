.class public Lcom/miaozhen/mzmonitor/MZCacheDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d:J

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e:I

    .line 69
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d:J

    .line 61
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e:I

    return v0
.end method

.method public f()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v1, "url"

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "times"

    iget v2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v1, "panelId"

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "userId"

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", panelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c:Ljava/lang/String;

    goto :goto_1
.end method
