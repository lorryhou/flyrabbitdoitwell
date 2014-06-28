.class public Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogEvent"
.end annotation


# instance fields
.field event:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->event:Lorg/json/JSONObject;

    .line 624
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    :cond_0
    :try_start_0
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$400()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$500()I

    move-result v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_READY:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 631
    const/4 v0, 0x1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$402(Z)Z

    .line 633
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->fileCreated:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->OpenAnalyticsFile()Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$800(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    const/4 v0, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$402(Z)Z

    .line 667
    :goto_0
    return-void

    .line 639
    :cond_1
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->fileCreated:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->updateSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->currentFile:Ljava/io/File;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1000()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 647
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1100()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 648
    const-string v1, ","

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->event:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 650
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 652
    const-string v0, "DoodleMobileAnaylise"

    const-string v1, "write fos"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x1

    # += operator for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1112(I)I

    .line 655
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->numLinesWritten:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1100()I

    move-result v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->MC_MAX_EVENTS_PER_FILE:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1200()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 656
    const/4 v0, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->fileCreated:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$702(Z)Z

    .line 657
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$LogEvent;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->OpenAnalyticsFile()Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$800(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 662
    :cond_3
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$402(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 665
    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->loggingEvent:Z
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$402(Z)Z

    goto :goto_0

    .line 659
    :catch_1
    move-exception v0

    .line 660
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
