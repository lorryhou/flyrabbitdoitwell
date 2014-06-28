.class Lcom/forthblue/pool/Main$MyHandler;
.super Landroid/os/Handler;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/Main;


# direct methods
.method private constructor <init>(Lcom/forthblue/pool/Main;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/forthblue/pool/Main$MyHandler;->this$0:Lcom/forthblue/pool/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/forthblue/pool/Main;Lcom/forthblue/pool/Main$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/forthblue/pool/Main;
    .param p2, "x1"    # Lcom/forthblue/pool/Main$1;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/forthblue/pool/Main$MyHandler;-><init>(Lcom/forthblue/pool/Main;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 164
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/Main$MyHandler;->removeMessages(I)V

    .line 165
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v1, p0, Lcom/forthblue/pool/Main$MyHandler;->this$0:Lcom/forthblue/pool/Main;

    sget-object v2, Lcom/forthblue/pool/Main;->coin_ids:[Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x186a1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    # invokes: Lcom/forthblue/pool/Main;->callBilling(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/forthblue/pool/Main;->access$400(Lcom/forthblue/pool/Main;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
