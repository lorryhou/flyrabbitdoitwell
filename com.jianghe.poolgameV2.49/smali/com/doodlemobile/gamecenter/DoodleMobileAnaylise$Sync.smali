.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v0, "DoodleMobileAnaylise"

    const-string v0, "UTF-8"

    .line 1049
    monitor-enter p0

    :cond_0
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_RUNNING:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2000()I

    move-result v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$502(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    :try_start_1
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2100()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1056
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_ANALYTICS_DIRECTORY:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1059
    const-string v0, "DoodleMobileAnaylise"

    const-string v2, "create files"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move v2, v3

    .line 1061
    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 1062
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1063
    const-string v3, "p=android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v3, "&a="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    const-string v3, "&m="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getMobclixVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1070
    const-string v3, "&d="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v4

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1073
    const-string v3, "&v="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->applicationVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1500(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    const-string v3, "&j="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1080
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1081
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1083
    :goto_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->available()I

    move-result v6

    if-eqz v6, :cond_2

    .line 1084
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1141
    :cond_1
    const/4 v0, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncContents:Ljava/lang/String;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 1142
    const/4 v0, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1102(I)I

    .line 1143
    const/4 v0, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->fileCreated:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$702(Z)Z

    .line 1145
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_READY:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$600()I

    move-result v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$502(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1146
    :goto_2
    monitor-exit p0

    return-void

    .line 1086
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 1087
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 1088
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1090
    const-string v3, "]}]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncContents:Ljava/lang/String;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 1093
    const-string v0, "DoodleMobileAnaylise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncContents: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncContents:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    :try_start_4
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->analyticsServer:Ljava/lang/String;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1101
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1102
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1104
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1107
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1108
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncContents:Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 1111
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 1113
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v7

    .line 1117
    :cond_3
    :goto_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1118
    if-nez v0, :cond_3

    move-object v0, v4

    .line 1120
    goto :goto_3

    .line 1123
    :cond_4
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1124
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_ERROR:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2500()I

    move-result v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$502(I)I

    .line 1126
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1132
    :goto_4
    :try_start_5
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$500()I

    move-result v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_ERROR:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2500()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 1133
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_READY:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$600()I

    move-result v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$502(I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1127
    :catch_1
    move-exception v0

    .line 1128
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1129
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_ERROR:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$2500()I

    move-result v0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$502(I)I

    goto :goto_4

    .line 1136
    :cond_6
    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1061
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0
.end method
