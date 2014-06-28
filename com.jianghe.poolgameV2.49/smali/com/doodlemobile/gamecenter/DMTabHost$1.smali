.class Lcom/doodlemobile/gamecenter/DMTabHost$1;
.super Ljava/lang/Object;
.source "DMTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$1;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 113
    sparse-switch p2, :sswitch_data_0

    .line 123
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$1;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 124
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$1;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 120
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
