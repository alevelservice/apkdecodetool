.class public final Lcom/google/android/gms/internal/ads/n7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Z

.field private a:I

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:D

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private final u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->b(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->c(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n7;->q:Z

    const-string v2, "http://www.google.com"

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/n7;->r:Z

    .line 9
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/n7;->s:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/gd;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n7;->t:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->a(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n7;->u:Z

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->b(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n7;->v:Z

    .line 13
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/n7;->w:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n7;->x:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/n7;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n7;->B:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 18
    :cond_3
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->y:F

    .line 19
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->z:I

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/o7;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->b(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/n7;->c(Landroid/content/Context;)V

    .line 25
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n7;->o:Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n7;->p:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sw1;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->C:Z

    .line 29
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/o7;->a:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->q:Z

    .line 30
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/o7;->b:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->r:Z

    .line 31
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n7;->s:Ljava/lang/String;

    .line 32
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/o7;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->t:Z

    .line 33
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/o7;->e:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->u:Z

    .line 34
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/o7;->f:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->v:Z

    .line 35
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n7;->w:Ljava/lang/String;

    .line 36
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n7;->x:Ljava/lang/String;

    .line 37
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n7;->B:Ljava/lang/String;

    .line 38
    iget p1, p2, Lcom/google/android/gms/internal/ads/o7;->l:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->y:F

    .line 39
    iget p1, p2, Lcom/google/android/gms/internal/ads/o7;->m:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->z:I

    .line 40
    iget p1, p2, Lcom/google/android/gms/internal/ads/o7;->n:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->A:I

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 19
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object p1

    const-string v0, "DeviceInfo.getResolveInfo"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3

    const-string v0, "market://details?id=com.google.android.gms.ads"

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/n7;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 16
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_1

    return-object v0

    .line 17
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object p0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v0
.end method

.method private final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/n7;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/n7;->b:Z

    .line 4
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/n7;->c:Z

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/n7;->d:I

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/n7;->e:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object v1

    const-string v2, "DeviceInfo.gatherAudioInfo"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/ca;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, -0x2

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->a:I

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->b:Z

    .line 11
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->c:Z

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->d:I

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->e:I

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->f:I

    return-void
.end method

.method private final b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/n7;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/n7;->i:I

    .line 5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->j:I

    const/4 v0, -0x2

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->h:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n7;->k:Z

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->l:I

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 10
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/wa;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->h:I

    .line 13
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/n7;->l:I

    goto :goto_0

    .line 14
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/n7;->h:I

    .line 15
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n7;->k:Z

    :cond_1
    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    const-string v2, "status"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 4
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    .line 5
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v3

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    .line 6
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/n7;->m:D

    const/4 p1, 0x2

    if-eq v2, p1, :cond_0

    const/4 p1, 0x5

    if-ne v2, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n7;->n:Z

    return-void

    :cond_2
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/n7;->m:D

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n7;->n:Z

    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object p0

    const-string v1, "com.android.vending"

    const/16 v2, 0x80

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/o/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/o7;
    .locals 35

    move-object/from16 v0, p0

    .line 22
    new-instance v32, Lcom/google/android/gms/internal/ads/o7;

    move-object/from16 v1, v32

    iget v2, v0, Lcom/google/android/gms/internal/ads/n7;->a:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/n7;->q:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/n7;->r:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/n7;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/n7;->s:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/n7;->t:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/n7;->u:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/n7;->v:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/n7;->b:Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/n7;->c:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/n7;->w:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/n7;->x:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/n7;->B:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/gms/internal/ads/n7;->d:I

    move-object/from16 v33, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->h:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->i:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->j:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->e:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->f:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->y:F

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->z:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->A:I

    move/from16 v23, v1

    move/from16 v34, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/n7;->m:D

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n7;->n:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n7;->k:Z

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/n7;->l:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/n7;->o:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/n7;->C:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/n7;->p:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/internal/ads/o7;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v32
.end method
