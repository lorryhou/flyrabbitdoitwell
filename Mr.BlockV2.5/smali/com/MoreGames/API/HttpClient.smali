.class public Lcom/MoreGames/API/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final doPost(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;
    .locals 8
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 92
    .local v3, "uc":Ljava/net/HttpURLConnection;
    const-string v5, "User-Agent"

    const-string v6, "Mozilla/5.0"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 95
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 96
    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 105
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 107
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 109
    .end local v3    # "uc":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v5

    .line 100
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v3    # "uc":Ljava/net/HttpURLConnection;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "key":Ljava/lang/String;
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "uc":Ljava/net/HttpURLConnection;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static final doRequest2Object(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/MoreGames/API/HttpClient;->doRequest2Object(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final doRequest2Object(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Object;
    .locals 5
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 65
    :try_start_0
    invoke-static {p0, p1}, Lcom/MoreGames/API/HttpClient;->doPost(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    .local v0, "content":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    .local v2, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 68
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .end local v3    # "object":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 70
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    .line 71
    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 73
    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 76
    goto :goto_0
.end method

.method public static final doRequest2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/MoreGames/API/HttpClient;->doRequest2String(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final doRequest2String(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .param p0, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 35
    :try_start_0
    invoke-static {p0, p1}, Lcom/MoreGames/API/HttpClient;->doPost(Ljava/lang/String;Ljava/util/HashMap;)Ljava/io/InputStream;

    move-result-object v0

    .line 36
    .local v0, "content":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 44
    .end local v0    # "content":Ljava/io/InputStream;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 43
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method
