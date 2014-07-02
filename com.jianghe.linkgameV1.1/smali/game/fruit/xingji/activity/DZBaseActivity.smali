.class public abstract Lgame/fruit/xingji/activity/DZBaseActivity;
.super Landroid/app/Activity;
.source "DZBaseActivity.java"

# interfaces
.implements Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mHandler:Lgame/fruit/xingji/activity/DZBaseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lgame/fruit/xingji/activity/DZBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgame/fruit/xingji/activity/DZBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lgame/fruit/xingji/activity/DZBaseHandler;

    invoke-direct {v0, p0}, Lgame/fruit/xingji/activity/DZBaseHandler;-><init>(Lgame/fruit/xingji/activity/DZBaseActivity;)V

    iput-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mHandler:Lgame/fruit/xingji/activity/DZBaseHandler;

    .line 41
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/DZBaseActivity;->onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 43
    invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V

    .line 44
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 100
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 102
    .local v3, "framelayout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v2, "framelayout":Landroid/widget/FrameLayout;
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 108
    const/4 v6, -0x2

    .line 107
    invoke-direct {v1, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 109
    .local v1, "edittext_layout_params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditText;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxEditText;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "edittext":Lorg/cocos2dx/lib/Cocos2dxEditText;
    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v4, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v4, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v4, "gLSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-direct {v6}, Lorg/cocos2dx/lib/Cocos2dxRenderer;-><init>()V

    invoke-virtual {v4, v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxRenderer(Lorg/cocos2dx/lib/Cocos2dxRenderer;)V

    .line 122
    invoke-virtual {v4, v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setCocos2dxEditText(Lorg/cocos2dx/lib/Cocos2dxEditText;)V

    .line 126
    const v6, 0x7f050002

    invoke-virtual {p0, v6}, Lgame/fruit/xingji/activity/DZBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 127
    .local v5, "llContent":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    return-object v4
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 66
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onPause()V

    .line 67
    iget-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onResume()V

    .line 59
    iget-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 60
    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 88
    iget-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 73
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 74
    new-instance v1, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;

    invoke-direct {v1, p1, p2}, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mHandler:Lgame/fruit/xingji/activity/DZBaseHandler;

    invoke-virtual {v1, v0}, Lgame/fruit/xingji/activity/DZBaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 8
    .param p1, "pTitle"    # Ljava/lang/String;
    .param p2, "pContent"    # Ljava/lang/String;
    .param p3, "pInputMode"    # I
    .param p4, "pInputFlag"    # I
    .param p5, "pReturnType"    # I
    .param p6, "pMaxLength"    # I

    .prologue
    .line 80
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 81
    .local v7, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    .line 82
    new-instance v0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lgame/fruit/xingji/activity/DZBaseActivity;->mHandler:Lgame/fruit/xingji/activity/DZBaseHandler;

    invoke-virtual {v0, v7}, Lgame/fruit/xingji/activity/DZBaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    return-void
.end method
