.class Lcom/MoreGames/API/MoreGames$1;
.super Landroid/webkit/WebViewClient;
.source "MoreGames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MoreGames/API/MoreGames;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MoreGames/API/MoreGames;


# direct methods
.method constructor <init>(Lcom/MoreGames/API/MoreGames;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MoreGames/API/MoreGames$1;->this$0:Lcom/MoreGames/API/MoreGames;

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/MoreGames/API/MoreGames$1;->this$0:Lcom/MoreGames/API/MoreGames;

    invoke-virtual {v0, p2}, Lcom/MoreGames/API/MoreGames;->geUrlType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v0, p0, Lcom/MoreGames/API/MoreGames$1;->this$0:Lcom/MoreGames/API/MoreGames;

    invoke-virtual {v0, p1, p2}, Lcom/MoreGames/API/MoreGames;->loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 96
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/MoreGames/API/MoreGames$1;->this$0:Lcom/MoreGames/API/MoreGames;

    invoke-virtual {v0, p2}, Lcom/MoreGames/API/MoreGames;->loadmarket(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
