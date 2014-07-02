.class Lcn/domob/android/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/a/b$a$b;,
        Lcn/domob/android/a/b$a$c;,
        Lcn/domob/android/a/b$a$a;
    }
.end annotation


# static fields
.field private static final a:Lcn/domob/android/a/b$a;

.field private static final e:J = 0x927c0L

.field private static final f:I = 0x1d4c0

.field private static final g:I = 0x124f80

.field private static final h:I = 0x1d4c0


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 668
    new-instance v0, Lcn/domob/android/a/b$a;

    invoke-direct {v0}, Lcn/domob/android/a/b$a;-><init>()V

    sput-object v0, Lcn/domob/android/a/b$a;->a:Lcn/domob/android/a/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/a/b$a;->c:I

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/a/b$a;->d:Z

    .line 773
    return-void
.end method

.method static synthetic a(Lcn/domob/android/a/b$a;)I
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lcn/domob/android/a/b$a;->d()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .locals 9

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 698
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/android/a/b$a;->c:I

    .line 700
    if-nez v2, :cond_0

    .line 701
    const/4 v0, 0x0

    .line 732
    :goto_0
    return-object v0

    .line 703
    :cond_0
    :try_start_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/ads/d/d;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v0}, Lcn/domob/android/ads/d/d;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 705
    :cond_1
    const-string v0, "location"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 706
    if-eqz v0, :cond_6

    .line 707
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 708
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 709
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 710
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 711
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 712
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    invoke-direct {p0, v1, v4}, Lcn/domob/android/a/b$a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    iput-object v1, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 729
    :catch_0
    move-exception v0

    .line 730
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 732
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    goto :goto_0

    .line 716
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x493e0

    add-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    .line 717
    :cond_5
    invoke-direct {p0, v0, v2}, Lcn/domob/android/a/b$a;->a(Landroid/location/LocationManager;Landroid/content/Context;)V

    .line 720
    :cond_6
    iget-object v1, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    if-nez v1, :cond_3

    .line 721
    if-eqz v0, :cond_7

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 723
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/a/b$a;->c:I

    goto :goto_2

    .line 727
    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/android/a/b$a;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic a(Lcn/domob/android/a/b$a;Landroid/content/Context;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcn/domob/android/a/b$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcn/domob/android/a/b$a;
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lcn/domob/android/a/b$a;->b()Lcn/domob/android/a/b$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 954
    const/4 v0, 0x0

    .line 955
    if-eqz p1, :cond_0

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-class v2, Lcn/domob/android/a/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/a/b$a;Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcn/domob/android/a/b$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 736
    monitor-enter p0

    if-nez p1, :cond_1

    .line 760
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 740
    :cond_1
    :try_start_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 741
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 742
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 743
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 744
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 746
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 747
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 748
    new-instance v5, Lcn/domob/android/a/b$a$b;

    invoke-direct {v5, p0, p1}, Lcn/domob/android/a/b$a$b;-><init>(Lcn/domob/android/a/b$a;Landroid/location/LocationManager;)V

    .line 749
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start to listener position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 750
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 751
    const-string v0, "network"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    const v0, 0x124f80

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/a/b$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    :try_start_1
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 753
    :cond_3
    :try_start_2
    const-string v0, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    const v0, 0x1d4c0

    invoke-direct {p0, p1, v5, v0, v1}, Lcn/domob/android/a/b$a;->a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/location/LocationManager;Landroid/location/LocationListener;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 763
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 764
    new-instance v1, Lcn/domob/android/a/b$a$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcn/domob/android/a/b$a$1;-><init>(Lcn/domob/android/a/b$a;Landroid/location/LocationManager;Landroid/location/LocationListener;Ljava/lang/String;)V

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 771
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 11

    .prologue
    const-wide/32 v9, 0x927c0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 819
    if-nez p2, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v1

    .line 824
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 826
    cmp-long v0, v3, v9

    if-gtz v0, :cond_2

    cmp-long v0, v5, v9

    if-gtz v0, :cond_0

    .line 829
    :cond_2
    cmp-long v0, v3, v9

    if-lez v0, :cond_3

    cmp-long v0, v5, v9

    if-gtz v0, :cond_3

    move v1, v2

    .line 830
    goto :goto_0

    .line 834
    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    .line 835
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move v3, v1

    .line 836
    :goto_1
    const-wide/32 v6, -0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    move v0, v1

    .line 837
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    move v5, v1

    .line 841
    :goto_3
    if-nez v3, :cond_0

    .line 844
    if-eqz v0, :cond_7

    move v1, v2

    .line 845
    goto :goto_0

    :cond_4
    move v3, v2

    .line 835
    goto :goto_1

    :cond_5
    move v0, v2

    .line 836
    goto :goto_2

    :cond_6
    move v5, v2

    .line 837
    goto :goto_3

    .line 849
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 850
    if-lez v0, :cond_a

    move v4, v1

    .line 851
    :goto_4
    if-gez v0, :cond_b

    move v3, v1

    .line 852
    :goto_5
    const/16 v6, 0xc8

    if-le v0, v6, :cond_c

    move v0, v1

    .line 855
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcn/domob/android/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 859
    if-nez v3, :cond_0

    .line 861
    if-eqz v5, :cond_8

    if-eqz v4, :cond_0

    .line 863
    :cond_8
    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    if-nez v6, :cond_0

    :cond_9
    move v1, v2

    .line 866
    goto :goto_0

    :cond_a
    move v4, v2

    .line 850
    goto :goto_4

    :cond_b
    move v3, v2

    .line 851
    goto :goto_5

    :cond_c
    move v0, v2

    .line 852
    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 871
    if-nez p1, :cond_2

    .line 872
    if-nez p2, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 872
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 874
    :cond_2
    if-eqz p2, :cond_0

    .line 875
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/a/b$a;)I
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lcn/domob/android/a/b$a;->c()I

    move-result v0

    return v0
.end method

.method private static b()Lcn/domob/android/a/b$a;
    .locals 1

    .prologue
    .line 693
    sget-object v0, Lcn/domob/android/a/b$a;->a:Lcn/domob/android/a/b$a;

    return-object v0
.end method

.method private c()I
    .locals 4

    .prologue
    .line 887
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 889
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This location is obtained via "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 890
    if-eqz v0, :cond_2

    .line 891
    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    .line 893
    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    const/4 v0, 0x0

    goto :goto_0

    .line 895
    :cond_1
    const-string v1, "passive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    const/4 v0, 0x2

    goto :goto_0

    .line 900
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic c(Lcn/domob/android/a/b$a;)I
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lcn/domob/android/a/b$a;->e()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 910
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 915
    :goto_0
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location accuracy is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " meters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 916
    return v0

    .line 913
    :cond_0
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic d(Lcn/domob/android/a/b$a;)J
    .locals 2

    .prologue
    .line 667
    invoke-direct {p0}, Lcn/domob/android/a/b$a;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 920
    iget v0, p0, Lcn/domob/android/a/b$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 933
    :goto_0
    iget v0, p0, Lcn/domob/android/a/b$a;->c:I

    return v0

    .line 922
    :pswitch_0
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Location can not be obtained due to USER_CLOSE"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :pswitch_1
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_PERSSION"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 928
    :pswitch_2
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Location can not be obtained due to NO_AVAILABLE_LOCATION"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()J
    .locals 13

    .prologue
    const-wide/16 v11, 0x3c

    .line 937
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcn/domob/android/a/b$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 940
    invoke-static {}, Lcn/domob/android/a/b;->h()Lcn/domob/android/ads/d/e;

    move-result-object v4

    const-class v5, Lcn/domob/android/a/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "The location is %s minutes %s seconds ago acquired"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    div-long v9, v2, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    rem-long/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
