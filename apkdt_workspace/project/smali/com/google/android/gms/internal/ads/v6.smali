.class public final Lcom/google/android/gms/internal/ads/v6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/z6;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;

.field private static g:Lcom/google/android/gms/internal/ads/z6;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static h:Lcom/google/android/gms/internal/ads/z6;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/google/android/gms/internal/ads/zzawv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/v6;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->j()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/v6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v6;->a:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v6;->c:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/fw0;->a()Lcom/google/android/gms/internal/ads/gw0;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/kw0;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gw0;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v6;->d:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v6;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/v6;->e:Lcom/google/android/gms/internal/ads/zzawv;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v6;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/o/b;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Error fetching instant app info"

    .line 51
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 52
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v6;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const-string v1, "Cannot obtain package name, proceeding."

    .line 53
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    const-string v1, "unknown"

    .line 54
    :goto_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "https"

    .line 55
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "//pagead2.googlesyndication.com/pagead/gen_204"

    .line 56
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "is_aia"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "gmob-apps-report-exception"

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os"

    .line 59
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api"

    .line 61
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 62
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 63
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const-string v2, "device"

    .line 65
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/v6;->e:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzawv;->e:Ljava/lang/String;

    const-string v3, "js"

    .line 66
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "appid"

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exceptiontype"

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "stacktrace"

    .line 69
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/aw1;->a()Ljava/util/List;

    move-result-object p2

    const-string v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "eids"

    .line 71
    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "exceptionkey"

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "cl"

    const-string p3, "257050558"

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "rc"

    const-string p3, "dev"

    .line 74
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->f()Ljava/lang/String;

    move-result-object p2

    const-string p3, "session_id"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 76
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sampling_rate"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/aw1;->q3:Lcom/google/android/gms/internal/ads/pv1;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p2

    .line 78
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "pb_tm"

    .line 79
    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/z6;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/v6;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/v6;->g:Lcom/google/android/gms/internal/ads/z6;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->e:Lcom/google/android/gms/internal/ads/pv1;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/v6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/v6;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/v6;->g:Lcom/google/android/gms/internal/ads/z6;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/y6;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/y6;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/v6;->g:Lcom/google/android/gms/internal/ads/z6;

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object p0, Lcom/google/android/gms/internal/ads/v6;->g:Lcom/google/android/gms/internal/ads/z6;

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/z6;
    .locals 4

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/v6;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/v6;->h:Lcom/google/android/gms/internal/ads/z6;

    if-nez v1, :cond_2

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->e:Lcom/google/android/gms/internal/ads/pv1;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/v6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/v6;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 18
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/v6;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v6;->c:Ljava/util/WeakHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    .line 22
    new-instance v2, Lcom/google/android/gms/internal/ads/w6;

    invoke-direct {v2, v1, p1}, Lcom/google/android/gms/internal/ads/w6;-><init>(Lcom/google/android/gms/internal/ads/v6;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 23
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 24
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/x6;

    invoke-direct {p1, v1, p0}, Lcom/google/android/gms/internal/ads/x6;-><init>(Lcom/google/android/gms/internal/ads/v6;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 26
    sput-object v1, Lcom/google/android/gms/internal/ads/v6;->h:Lcom/google/android/gms/internal/ads/z6;

    goto :goto_1

    .line 27
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/y6;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/y6;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/ads/v6;->h:Lcom/google/android/gms/internal/ads/z6;

    .line 28
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 29
    sget-object p0, Lcom/google/android/gms/internal/ads/v6;->h:Lcom/google/android/gms/internal/ads/z6;

    return-object p0

    :catchall_1
    move-exception p0

    .line 30
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method static final synthetic a(Lcom/google/android/gms/internal/ads/ud;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/ud;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    move-object v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 32
    array-length v5, v4

    move v6, v3

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v7, v4, v2

    .line 33
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/gd;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    .line 34
    :cond_0
    const-class v8, Lcom/google/android/gms/internal/ads/v6;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move v2, v3

    move v3, v6

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    const-string v0, ""

    .line 36
    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/v6;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/v6;->a(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;F)V
    .locals 8

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 41
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/f71;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    float-to-double v3, p3

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v1, v3

    if-gez v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p3

    float-to-int v6, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 44
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-direct {p0, v0, p1, p2, v6}, Lcom/google/android/gms/internal/ads/v6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v5, p1, :cond_3

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v5, v5, 0x1

    check-cast p2, Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/ud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ud;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/v6;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/android/gms/internal/ads/u6;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/u6;-><init>(Lcom/google/android/gms/internal/ads/ud;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void
.end method
