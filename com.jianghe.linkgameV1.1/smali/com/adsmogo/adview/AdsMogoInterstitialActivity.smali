.class public Lcom/adsmogo/adview/AdsMogoInterstitialActivity;
.super Landroid/app/Activity;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/adsmogo/model/obj/S2sEntity;

.field private c:Lcom/adsmogo/adview/A;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->h:Z

    const-string v0, "[\\u4e00-\\u9fa5]"

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Lcom/adsmogo/adview/A;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f:Z

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method private b()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    const/16 v4, 0x64

    const/16 v5, 0x80

    const/16 v6, 0x9b

    const/16 v7, 0xad

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getVideoClosable()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "/com/adsmogo/assets/adsmogo_fullad_close.png"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "adsmogo_fullad_close.png"

    invoke-static {p0, v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    new-instance v4, Lcom/adsmogo/adview/a;

    invoke-direct {v4, p0}, Lcom/adsmogo/adview/a;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v1, Lcom/adsmogo/adview/A;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/A;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/MediaController;

    invoke-direct {v4, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/widget/MediaController;->hide()V

    iget-object v4, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getVideoExt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/io/File;

    const-string v5, "/sdcard/MOGO_VIDEO"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/MOGO_VIDEO/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/S2sEntity;->getVideoExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v4, v3}, Lcom/adsmogo/adview/A;->setVideoURI(Landroid/net/Uri;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/adsmogo/adview/h;

    iget-object v5, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    invoke-direct {v4, p0, v0, v5}, Lcom/adsmogo/adview/h;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adview/b;

    invoke-direct {v3, p0}, Lcom/adsmogo/adview/b;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adview/d;

    invoke-direct {v3, p0}, Lcom/adsmogo/adview/d;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adview/e;

    invoke-direct {v3, p0}, Lcom/adsmogo/adview/e;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adview/f;

    invoke-direct {v3, p0}, Lcom/adsmogo/adview/f;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2, v10, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v1, v3, :cond_0

    :try_start_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setVideoURI(Landroid/net/Uri;)V

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Lcom/adsmogo/adview/A;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->h:Z

    return-void
.end method

.method static synthetic d(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->j:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->f:Z

    new-instance v0, Lcom/adsmogo/adview/g;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/g;-><init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;)V

    invoke-virtual {v0}, Lcom/adsmogo/adview/g;->start()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->start()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    const-string v1, "s2s"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/S2sEntity;

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adsMogoInterstitialSendCount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->finish()V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitialActivity s2s:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and adsMogoInterstitialSendCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AdsMogoInterstitialActivity getS2s err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/adsmogo/interstitial/k;->a()Lcom/adsmogo/interstitial/k;

    invoke-static {}, Lcom/adsmogo/interstitial/k;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    iget v1, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/A;->seekTo(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->start()V

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->h:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->g:I

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->c:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->pause()V

    goto :goto_0
.end method
