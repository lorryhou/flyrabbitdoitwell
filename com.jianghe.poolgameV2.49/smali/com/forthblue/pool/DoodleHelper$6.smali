.class Lcom/forthblue/pool/DoodleHelper$6;
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
    .line 215
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$6;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper$6;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v0, v0, Lcom/forthblue/pool/DoodleHelper;->featureIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void
.end method
