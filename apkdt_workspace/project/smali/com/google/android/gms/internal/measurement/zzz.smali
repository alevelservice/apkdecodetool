.class public Lcom/google/android/gms/internal/measurement/zzz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzz$b;,
        Lcom/google/android/gms/internal/measurement/zzz$zza;,
        Lcom/google/android/gms/internal/measurement/zzz$zzd;,
        Lcom/google/android/gms/internal/measurement/zzz$a;
    }
.end annotation


# static fields
.field private static volatile j:Lcom/google/android/gms/internal/measurement/zzz; = null

.field private static k:Ljava/lang/Boolean; = null

.field private static l:Ljava/lang/Boolean; = null

.field private static m:Ljava/lang/String; = "use_dynamite_api"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static n:Ljava/lang/String; = "allow_remote_dynamite"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lcom/google/android/gms/common/util/e;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/google/android/gms/measurement/a/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/measurement/internal/n5;",
            "Lcom/google/android/gms/internal/measurement/zzz$zzd;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/internal/measurement/zzk;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "FA"

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->a:Ljava/lang/String;

    .line 5
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/h;->d()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->b:Lcom/google/android/gms/common/util/e;

    .line 7
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->c:Ljava/util/concurrent/ExecutorService;

    .line 9
    new-instance p2, Lcom/google/android/gms/measurement/a/a;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/a/a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->d:Lcom/google/android/gms/measurement/a/a;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzz;->b(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzz;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x1

    :goto_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzz;->h:Ljava/lang/String;

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzz;->g:Z

    return-void

    .line 13
    :cond_4
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/measurement/zzz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "fa"

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzz;->h:Ljava/lang/String;

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzz;->g:Z

    return-void

    :cond_5
    if-nez p3, :cond_6

    const/4 p2, 0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    :goto_4
    if-nez p4, :cond_7

    const/4 v0, 0x1

    :cond_7
    xor-int/2addr p2, v0

    goto :goto_5

    .line 16
    :cond_8
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzz;->h:Ljava/lang/String;

    .line 17
    :goto_5
    new-instance p2, Lcom/google/android/gms/internal/measurement/sb;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/sb;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_9

    return-void

    .line 19
    :cond_9
    new-instance p2, Lcom/google/android/gms/internal/measurement/zzz$b;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/zzz$b;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzk;)Lcom/google/android/gms/internal/measurement/zzk;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzz;->i:Lcom/google/android/gms/internal/measurement/zzk;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzz;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzz;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/zzz;
    .locals 8

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzz;->j:Lcom/google/android/gms/internal/measurement/zzz;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/google/android/gms/internal/measurement/zzz;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzz;->j:Lcom/google/android/gms/internal/measurement/zzz;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzz;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzz;->j:Lcom/google/android/gms/internal/measurement/zzz;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzz;->j:Lcom/google/android/gms/internal/measurement/zzz;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzz;->e:Ljava/util/List;

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/zzz$a;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzz;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzz$a;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Exception;ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzz;->a(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method private final a(Ljava/lang/Exception;ZZ)V
    .locals 7

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzz;->g:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzz;->g:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/4 v2, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "Error with data collection. Data lost."

    move-object v1, p0

    move-object v4, p1

    .line 17
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzz;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    .line 18
    new-instance v8, Lcom/google/android/gms/internal/measurement/o;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/o;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/measurement/q;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/q;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/o/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/o/b;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/o/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 51
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/google/android/gms/internal/measurement/zzz;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzz;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/measurement/zzz;)Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzz;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/h;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/api/internal/h;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzz;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzz;->i:Lcom/google/android/gms/internal/measurement/zzk;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)I
    .locals 1

    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 3

    .line 4
    const-class v0, Lcom/google/android/gms/internal/measurement/zzz;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->l:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    const-string v2, "app_measurement_internal_disable_startup_flags"

    .line 7
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/measurement/zzz;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzz;->k:Ljava/lang/Boolean;

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzz;->l:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_1
    :try_start_4
    const-string v2, "com.google.android.gms.measurement.prefs"

    .line 11
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->m:Ljava/lang/String;

    .line 13
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzz;->k:Ljava/lang/Boolean;

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->n:Ljava/lang/String;

    .line 15
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzz;->l:Ljava/lang/Boolean;

    .line 16
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 17
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->m:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzz;->n:Ljava/lang/String;

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 20
    :catch_0
    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzz;->k:Ljava/lang/Boolean;

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzz;->l:Ljava/lang/Boolean;

    .line 22
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method static synthetic f(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzz;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic g(Landroid/content/Context;)I
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzz;->d(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic h(Landroid/content/Context;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzz;->c(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static h()Z
    .locals 1

    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic i()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzz;->l:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x1f4

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zzb(J)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzl;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzz;->b:Lcom/google/android/gms/common/util/e;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzz;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzz;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 46
    new-instance v1, Lcom/google/android/gms/internal/measurement/n;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/n;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1388

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzl;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzk;
    .locals 1

    if-eqz p2, :cond_0

    .line 10
    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->l:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    goto :goto_0

    .line 11
    :cond_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->j:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    :goto_0
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 12
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzn;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/a;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 p1, 0x1388

    .line 25
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzl;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzl;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 35
    new-instance v7, Lcom/google/android/gms/internal/measurement/l;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/l;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 p1, 0x1388

    .line 36
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/zzl;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 42
    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    .line 43
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 44
    new-instance p1, Lcom/google/android/gms/internal/measurement/k;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/k;-><init>(Lcom/google/android/gms/internal/measurement/zzz;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/c;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/b;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/d;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzz;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/m;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x2710

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zzb(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzl;->zza(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/i;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/j;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x1f4

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/f;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/f;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x1f4

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzz;->d:Lcom/google/android/gms/measurement/a/a;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzl;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/h;-><init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/internal/measurement/zzl;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzz;->a(Lcom/google/android/gms/internal/measurement/zzz$a;)V

    const-wide/16 v1, 0x32

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzl;->zza(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
