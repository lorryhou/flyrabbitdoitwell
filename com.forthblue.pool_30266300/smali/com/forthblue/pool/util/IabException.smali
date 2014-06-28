.class public Lcom/forthblue/pool/util/IabException;
.super Ljava/lang/Exception;
.source "IabException.java"


# instance fields
.field mResult:Lcom/forthblue/pool/util/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/forthblue/pool/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/forthblue/pool/util/IabException;-><init>(Lcom/forthblue/pool/util/IabResult;)V

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 37
    new-instance v0, Lcom/forthblue/pool/util/IabResult;

    invoke-direct {v0, p1, p2}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/forthblue/pool/util/IabException;-><init>(Lcom/forthblue/pool/util/IabResult;Ljava/lang/Exception;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/forthblue/pool/util/IabResult;)V
    .locals 1
    .param p1, "r"    # Lcom/forthblue/pool/util/IabResult;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/forthblue/pool/util/IabException;-><init>(Lcom/forthblue/pool/util/IabResult;Ljava/lang/Exception;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/forthblue/pool/util/IabResult;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "r"    # Lcom/forthblue/pool/util/IabResult;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/forthblue/pool/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    iput-object p1, p0, Lcom/forthblue/pool/util/IabException;->mResult:Lcom/forthblue/pool/util/IabResult;

    .line 34
    return-void
.end method


# virtual methods
.method public getResult()Lcom/forthblue/pool/util/IabResult;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/forthblue/pool/util/IabException;->mResult:Lcom/forthblue/pool/util/IabResult;

    return-object v0
.end method
