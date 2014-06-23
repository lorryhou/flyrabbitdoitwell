.class Lcom/MoreGames/API/MoreGames$2;
.super Ljava/lang/Thread;
.source "MoreGames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MoreGames/API/MoreGames;->loadurl(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/MoreGames/API/MoreGames;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/MoreGames/API/MoreGames;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MoreGames/API/MoreGames$2;->this$0:Lcom/MoreGames/API/MoreGames;

    iput-object p2, p0, Lcom/MoreGames/API/MoreGames$2;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/MoreGames/API/MoreGames$2;->val$url:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/MoreGames/API/MoreGames$2;->val$view:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/MoreGames/API/MoreGames$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    return-void
.end method
