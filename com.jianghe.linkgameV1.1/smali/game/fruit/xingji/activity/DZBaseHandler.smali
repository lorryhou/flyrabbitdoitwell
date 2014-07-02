.class public Lgame/fruit/xingji/activity/DZBaseHandler;
.super Landroid/os/Handler;
.source "DZBaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;,
        Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x2


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lgame/fruit/xingji/activity/DZBaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgame/fruit/xingji/activity/DZBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lgame/fruit/xingji/activity/DZBaseActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgame/fruit/xingji/activity/DZBaseHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget-object v2, p0, Lgame/fruit/xingji/activity/DZBaseHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgame/fruit/xingji/activity/DZBaseActivity;

    .line 56
    .local v1, "theActivity":Lgame/fruit/xingji/activity/DZBaseActivity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;

    .line 57
    .local v0, "dialogMessage":Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    iget-object v3, v0, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;->titile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 59
    iget-object v3, v0, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 60
    const-string v3, "Ok"

    .line 61
    new-instance v4, Lgame/fruit/xingji/activity/DZBaseHandler$1;

    invoke-direct {v4, p0}, Lgame/fruit/xingji/activity/DZBaseHandler$1;-><init>(Lgame/fruit/xingji/activity/DZBaseHandler;)V

    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 69
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;

    .line 73
    .local v8, "editBoxMessage":Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    iget-object v1, p0, Lgame/fruit/xingji/activity/DZBaseHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 74
    iget-object v2, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 75
    iget-object v3, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 76
    iget v4, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->inputMode:I

    .line 77
    iget v5, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->inputFlag:I

    .line 78
    iget v6, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->returnType:I

    .line 79
    iget v7, v8, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->maxLength:I

    .line 73
    invoke-direct/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 79
    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;->show()V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-direct {p0, p1}, Lgame/fruit/xingji/activity/DZBaseHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-direct {p0, p1}, Lgame/fruit/xingji/activity/DZBaseHandler;->showEditBoxDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
