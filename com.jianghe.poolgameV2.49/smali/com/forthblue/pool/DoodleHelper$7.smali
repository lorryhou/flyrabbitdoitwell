.class Lcom/forthblue/pool/DoodleHelper$7;
.super Ljava/lang/Object;
.source "DoodleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/DoodleHelper;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/DoodleHelper;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/DoodleHelper;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$7;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$7;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-virtual {v0}, Lcom/forthblue/pool/DoodleHelper;->_submitScore()V

    .line 226
    return-void
.end method
