.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$2;
.super Landroid/os/Handler;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->initialize(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$2;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->updateLocation()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$200(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    .line 504
    return-void
.end method
