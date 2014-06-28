.class public Lcom/forthblue/pool/DoodleHelper;
.super Landroid/os/Handler;
.source "DoodleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;
    }
.end annotation


# static fields
.field private static final CHECK_POP_DIALOG:I = 0x7

.field private static final CHECK_POP_DIALOG_OR_FEATURE_GAMES:I = 0x8

.field public static final DIALOG_PROMOTE_DIALOG:I = 0xef422

.field private static final DISABLED:Z = false

.field private static final HIDE_FEATURE_GAMES:I = 0x3

.field private static final HIDE_FEATURE_ICON:I = 0x6

.field private static final HIDE_FEATURE_SCREEN:I = 0xc

.field private static final OPEN_LEADER_BOARDS:I = 0x1

.field private static final RATING_GAME:I = 0x9

.field private static final SHOW_FEATURE_GAMES:I = 0x2

.field private static final SHOW_FEATURE_ICON:I = 0x5

.field private static final SHOW_FEATURE_PROMOT_DIALOG:I = 0xa

.field private static final SHOW_FEATURE_SCREEN:I = 0xb

.field private static final SUBMIT_SCORE:I = 0x4

.field static handler:Lcom/forthblue/pool/DoodleHelper;

.field public static score:I

.field static started:Z


# instance fields
.field activity:Landroid/app/Activity;

.field bShowLeaderboardsAfterSubmit:Z

.field featureGames:Landroid/view/View;

.field featureIcon:Landroid/view/View;

.field private isSubmitScore:Z

.field private mInitDialog:Landroid/app/ProgressDialog;

.field private mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;

.field private mSubmitScoreTask:Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/forthblue/pool/DoodleHelper;->started:Z

    .line 282
    sput v0, Lcom/forthblue/pool/DoodleHelper;->score:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    iput-boolean v1, p0, Lcom/forthblue/pool/DoodleHelper;->bShowLeaderboardsAfterSubmit:Z

    .line 285
    iput-boolean v1, p0, Lcom/forthblue/pool/DoodleHelper;->isSubmitScore:Z

    .line 287
    iput-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;

    .line 289
    iput-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    .line 291
    iput-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mSubmitScoreTask:Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/forthblue/pool/DoodleHelper;)Lcom/doodlemobile/gamecenter/PromoteDialog;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/DoodleHelper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/forthblue/pool/DoodleHelper;Lcom/doodlemobile/gamecenter/PromoteDialog;)Lcom/doodlemobile/gamecenter/PromoteDialog;
    .locals 0
    .param p0, "x0"    # Lcom/forthblue/pool/DoodleHelper;
    .param p1, "x1"    # Lcom/doodlemobile/gamecenter/PromoteDialog;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper;->mPromoteDialog:Lcom/doodlemobile/gamecenter/PromoteDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/forthblue/pool/DoodleHelper;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/DoodleHelper;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/forthblue/pool/DoodleHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/forthblue/pool/DoodleHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/forthblue/pool/DoodleHelper;->isSubmitScore:Z

    return p1
.end method

.method public static checkPopDialog()V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method

.method public static checkPopDialogOrFeatureGames()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method

.method public static hideFeatureGame()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 96
    return-void
.end method

.method public static hideFeatureIcon()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method

.method public static hideFeatureScreen()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 129
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, -0x1

    .line 63
    const/4 v3, 0x1

    sput-boolean v3, Lcom/forthblue/pool/DoodleHelper;->started:Z

    .line 64
    sget-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    iget-object v3, v3, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    if-ne v3, p0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v3, Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {v3}, Lcom/forthblue/pool/DoodleHelper;-><init>()V

    sput-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    .line 73
    sget-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    iput-object p0, v3, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    .line 75
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const v4, 0x7f030021

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/forthblue/pool/DoodleHelper;->featureGames:Landroid/view/View;

    .line 78
    .local v0, "featureGames":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 79
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v3, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const v4, 0x7f030020

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/forthblue/pool/DoodleHelper;->featureIcon:Landroid/view/View;

    .line 82
    .local v1, "featureIcon":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 83
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static onStop()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/forthblue/pool/DoodleHelper;->started:Z

    .line 60
    return-void
.end method

.method public static openLeaderBoards()V
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 88
    return-void
.end method

.method public static ratingGame()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method

.method public static showFeatureDialog()V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 120
    return-void
.end method

.method public static showFeatureGame()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 92
    return-void
.end method

.method public static showFeatureIcon()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

.method public static showFeatureScreen()V
    .locals 4

    .prologue
    .line 123
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0xb

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/16 v1, 0xc

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/forthblue/pool/DoodleHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    return-void
.end method

.method public static submitScore(I)V
    .locals 4
    .param p0, "mScore"    # I

    .prologue
    const/4 v3, 0x0

    .line 134
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    sget-object v1, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0, v3}, Lcom/forthblue/pool/DoodleHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendMessage(Landroid/os/Message;)Z

    .line 135
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    iput-boolean v3, v0, Lcom/forthblue/pool/DoodleHelper;->bShowLeaderboardsAfterSubmit:Z

    .line 136
    sput p0, Lcom/forthblue/pool/DoodleHelper;->score:I

    .line 137
    return-void
.end method

.method public static submitScoreAndOpenLeaderBoards(I)V
    .locals 4
    .param p0, "mScore"    # I

    .prologue
    .line 140
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    sget-object v1, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/forthblue/pool/DoodleHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper;->sendMessage(Landroid/os/Message;)Z

    .line 141
    sget-object v0, Lcom/forthblue/pool/DoodleHelper;->handler:Lcom/forthblue/pool/DoodleHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/forthblue/pool/DoodleHelper;->bShowLeaderboardsAfterSubmit:Z

    .line 142
    sput p0, Lcom/forthblue/pool/DoodleHelper;->score:I

    .line 143
    return-void
.end method


# virtual methods
.method public _submitScore()V
    .locals 3

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/forthblue/pool/DoodleHelper;->isSubmitScore:Z

    if-nez v0, :cond_1

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/DoodleHelper;->isSubmitScore:Z

    .line 296
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    .line 298
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mInitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 301
    new-instance v0, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;-><init>(Lcom/forthblue/pool/DoodleHelper;Lcom/forthblue/pool/DoodleHelper$1;)V

    iput-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mSubmitScoreTask:Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;

    .line 302
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->mSubmitScoreTask:Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/DoodleHelper$SubmitScoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 304
    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$1;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$1;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$2;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$2;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$3;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$3;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$4;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$4;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 207
    :pswitch_4
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$5;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$5;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$6;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$6;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$7;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$7;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 231
    :pswitch_7
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$8;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$8;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 243
    :pswitch_8
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$9;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$9;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 256
    :pswitch_9
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/forthblue/pool/DoodleHelper$10;

    invoke-direct {v1, p0}, Lcom/forthblue/pool/DoodleHelper$10;-><init>(Lcom/forthblue/pool/DoodleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 272
    :pswitch_a
    iget-object v0, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const/high16 v1, 0x41200000

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->SetOnFeatureScreen(Landroid/content/Context;F)V

    goto :goto_0

    .line 276
    :pswitch_b
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setInactiveThisTime()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public submitScoreIntenal()I
    .locals 5

    .prologue
    .line 307
    new-instance v0, Lcom/doodlemobile/gamecenter/api/SubmitScore;

    iget-object v2, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/forthblue/pool/DoodleHelper;->score:I

    int-to-long v3, v3

    invoke-direct {v0, v2, v3, v4}, Lcom/doodlemobile/gamecenter/api/SubmitScore;-><init>(Landroid/content/Context;J)V

    .line 309
    .local v0, "getFeedsAPI":Lcom/doodlemobile/gamecenter/api/SubmitScore;
    iget-object v2, p0, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v1

    .line 310
    .local v1, "res":I
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v1, v2, :cond_1

    .line 311
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v2, v1, :cond_0

    .line 312
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    .line 318
    :goto_0
    return v2

    .line 314
    :cond_0
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    goto :goto_0

    .line 318
    :cond_1
    sget v2, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    goto :goto_0
.end method
