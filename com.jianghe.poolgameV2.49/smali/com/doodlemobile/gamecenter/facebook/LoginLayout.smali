.class public Lcom/doodlemobile/gamecenter/facebook/LoginLayout;
.super Landroid/widget/RelativeLayout;
.source "LoginLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;,
        Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;,
        Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFb:Lcom/facebook/android/Facebook;

.field private mHandler:Landroid/os/Handler;

.field private mPermissions:[Ljava/lang/String;

.field private mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mFb:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;Lcom/facebook/android/Facebook;)V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "friends_education_history"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "friends_photos"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->init(Landroid/app/Activity;Lcom/facebook/android/Facebook;[Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/facebook/android/Facebook;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mFb:Lcom/facebook/android/Facebook;

    .line 60
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mPermissions:[Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mHandler:Landroid/os/Handler;

    .line 68
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addAuthListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;)V

    .line 69
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mSessionListener:Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addLogoutListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;)V

    .line 70
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;

    invoke-direct {v0, p0, p2}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/facebook/android/Facebook;)V

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method
