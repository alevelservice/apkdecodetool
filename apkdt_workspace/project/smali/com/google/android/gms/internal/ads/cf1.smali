.class public Lcom/google/android/gms/internal/ads/cf1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cf1$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ldalvik/system/DexClassLoader;

.field private d:Lcom/google/android/gms/internal/ads/h31;

.field private e:[B

.field private volatile f:Lcom/google/android/gms/ads/l/a;

.field private volatile g:Z

.field private h:Ljava/util/concurrent/Future;

.field private i:Z

.field private volatile j:Lcom/google/android/gms/internal/ads/ev;

.field private k:Ljava/util/concurrent/Future;

.field private l:Lcom/google/android/gms/internal/ads/ax0;

.field protected m:Z

.field private n:Z

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/qg1;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Z

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Ljava/util/concurrent/Future;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->j:Lcom/google/android/gms/internal/ads/ev;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->k:Ljava/util/concurrent/Future;

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cf1;->m:Z

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cf1;->n:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cf1;->p:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->q:Z

    .line 11
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cf1;->r:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->i:Z

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->i:Z

    if-eqz v0, :cond_1

    move-object p1, v2

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf1;->o:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/cf1;
    .locals 9

    const-string v0, "%s/%s.dex"

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/cf1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cf1;-><init>(Landroid/content/Context;)V

    .line 2
    :try_start_0
    new-instance p0, Lcom/google/android/gms/internal/ads/gf1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gf1;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/cf1;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/cf1;->g:Z

    if-eqz p3, :cond_0

    .line 5
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/cf1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/ef1;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/ef1;-><init>(Lcom/google/android/gms/internal/ads/cf1;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/cf1;->h:Ljava/util/concurrent/Future;

    .line 6
    :cond_0
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/cf1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/hf1;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/hf1;-><init>(Lcom/google/android/gms/internal/ads/cf1;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_0 .. :try_end_0} :catch_5

    const/4 p0, 0x1

    const/4 p3, 0x0

    .line 7
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/d;->a()Lcom/google/android/gms/common/d;

    move-result-object v2

    .line 8
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/cf1;->m:Z

    .line 9
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/d;->b(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/cf1;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catchall_0
    :try_start_2
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/cf1;->a(IZ)V

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/kf1;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/aw1;->D1:Lcom/google/android/gms/internal/ads/pv1;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/ads/h31;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/h31;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_2 .. :try_end_2} :catch_5

    .line 17
    :try_start_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/h31;->a(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/cf1;->e:[B
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_3 .. :try_end_3} :catch_5

    .line 18
    :try_start_4
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_6

    .line 19
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>()V

    throw p0

    :cond_6
    :goto_3
    const-string v2, "1557357152169"

    .line 21
    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 23
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/cf1;->e:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/h31;->a([BLjava/lang/String;)[B

    move-result-object p2

    .line 24
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 25
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 26
    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 27
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 28
    :cond_7
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/cf1;->b(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_4 .. :try_end_4} :catch_5

    .line 29
    :try_start_5
    new-instance p2, Ldalvik/system/DexClassLoader;

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/cf1;->c:Ldalvik/system/DexClassLoader;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    :try_start_6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    .line 33
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_6 .. :try_end_6} :catch_5

    .line 34
    :try_start_7
    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/cf1;->r:Z

    if-nez p1, :cond_8

    .line 35
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/cf1$a;

    invoke-direct {p3, v1, v3}, Lcom/google/android/gms/internal/ads/cf1$a;-><init>(Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/gf1;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/cf1;->r:Z

    .line 40
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/ax0;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/ax0;-><init>(Lcom/google/android/gms/internal/ads/cf1;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/cf1;->l:Lcom/google/android/gms/internal/ads/ax0;

    .line 41
    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/cf1;->p:Z
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catchall_1
    move-exception p2

    .line 42
    :try_start_8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    .line 43
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    .line 44
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_8 .. :try_end_8} :catch_5

    :catch_0
    move-exception p0

    .line 45
    :try_start_9
    new-instance p1, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 46
    new-instance p1, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 47
    new-instance p1, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 48
    new-instance p1, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/bf1;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/bf1;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/bf1; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :goto_4
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cf1;Lcom/google/android/gms/internal/ads/ev;)Lcom/google/android/gms/internal/ads/ev;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cf1;->j:Lcom/google/android/gms/internal/ads/ev;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cf1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cf1;->o()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private final a(Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    const-string v0, "test"

    .line 51
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v3, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 55
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_2

    return-void

    :cond_2
    long-to-int p1, v5

    .line 56
    new-array p1, p1, [B

    const/4 v2, 0x0

    .line 57
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v6, :cond_3

    .line 59
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    return-void

    .line 61
    :cond_3
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 62
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 63
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/gv;->q()Lcom/google/android/gms/internal/ads/gv$a;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/gv$a;->d(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/gv$a;

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/gv$a;->c(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/gv$a;

    .line 67
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cf1;->e:[B

    invoke-virtual {p2, v6, p1}, Lcom/google/android/gms/internal/ads/h31;->a([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/gv$a;->a(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/gv$a;

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nf0;->a([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/t71;->zzy([B)Lcom/google/android/gms/internal/ads/t71;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gv$a;->b(Lcom/google/android/gms/internal/ads/t71;)Lcom/google/android/gms/internal/ads/gv$a;

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 71
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e91$a;->s()Lcom/google/android/gms/internal/ads/oa1;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/e91;

    check-cast p2, Lcom/google/android/gms/internal/ads/gv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/m71;->e()[B

    move-result-object p2

    .line 73
    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 74
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 76
    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 77
    :catch_2
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto :goto_0

    :catch_3
    move-object v2, p1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v5, v2

    :goto_0
    if-eqz v5, :cond_4

    .line 78
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    nop

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 79
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 80
    :catch_5
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    throw p2

    :catch_6
    move-object v5, v2

    :catch_7
    :goto_2
    if-eqz v5, :cond_6

    .line 81
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_3

    :catch_8
    nop

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 82
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 83
    :catch_9
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(ILcom/google/android/gms/internal/ads/ev;)Z
    .locals 4

    const/4 v0, 0x4

    if-ge p0, v0, :cond_3

    const/4 p0, 0x1

    if-nez p1, :cond_0

    return p0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ev;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ev;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ev;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ev;->o()Lcom/google/android/gms/internal/ads/hv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hv;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ev;->o()Lcom/google/android/gms/internal/ads/hv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hv;->m()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cf1;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cf1;->q:Z

    return p1
.end method

.method static synthetic b(ILcom/google/android/gms/internal/ads/ev;)Z
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/cf1;->a(ILcom/google/android/gms/internal/ads/ev;)Z

    move-result p0

    return p0
.end method

.method private final b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .line 2
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    .line 4
    :cond_0
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V

    return v3

    :cond_2
    long-to-int v1, v5

    .line 8
    new-array v1, v1, [B

    .line 9
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 10
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_3

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v3

    .line 13
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/q81;->c()Lcom/google/android/gms/internal/ads/q81;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/gv;->a([BLcom/google/android/gms/internal/ads/q81;)Lcom/google/android/gms/internal/ads/gv;

    move-result-object v1

    .line 14
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gv;->n()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gv;->m()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object p2

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gv;->k()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/nf0;->a([B)[B

    move-result-object v6

    .line 17
    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gv;->o()Lcom/google/android/gms/internal/ads/t71;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 19
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->e:[B

    new-instance v6, Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gv;->k()Lcom/google/android/gms/internal/ads/t71;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/t71;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/h31;->a([BLjava/lang/String;)[B

    move-result-object p2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 22
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 23
    :try_start_4
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 25
    :catch_1
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return v4

    :catchall_0
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_3
    move-object p1, v0

    goto :goto_3

    .line 26
    :cond_5
    :goto_0
    :try_start_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf1;->a(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/google/android/gms/internal/ads/l51; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 27
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    return v3

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v5, p1

    :goto_1
    if-eqz v5, :cond_6

    .line 28
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 29
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 30
    :catch_6
    :cond_7
    throw p2

    :catch_7
    move-object v5, p1

    :catch_8
    :goto_3
    if-eqz v5, :cond_8

    .line 31
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_4

    :catch_9
    nop

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 32
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    :catch_a
    :cond_9
    return v3
.end method

.method private final o()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->i:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/l/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/l/a;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/l/a;->c()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;
    :try_end_0
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    return-void
.end method

.method private final p()Lcom/google/android/gms/internal/ads/ev;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ov0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ev;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->o:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/qg1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/qg1;->a()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final a(IZ)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->b:Ljava/util/concurrent/ExecutorService;

    .line 95
    new-instance v1, Lcom/google/android/gms/internal/ads/if1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/if1;-><init>(Lcom/google/android/gms/internal/ads/cf1;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_1

    .line 96
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cf1;->k:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->o:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->o:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/qg1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qg1;-><init>(Lcom/google/android/gms/internal/ads/cf1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(IZ)Lcom/google/android/gms/internal/ads/ev;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    .line 33
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cf1;->p()Lcom/google/android/gms/internal/ads/ev;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->p:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->l:Lcom/google/android/gms/internal/ads/ax0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/ax0;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    return v0
.end method

.method public final d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final e()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->c:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/h31;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->d:Lcom/google/android/gms/internal/ads/h31;

    return-object v0
.end method

.method public final g()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->e:[B

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->m:Z

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/ax0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->l:Lcom/google/android/gms/internal/ads/ax0;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->n:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->q:Z

    return v0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/ev;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->j:Lcom/google/android/gms/internal/ads/ev;

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->k:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/ads/l/a;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cf1;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x7d0

    .line 5
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->h:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    :catch_1
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cf1;->f:Lcom/google/android/gms/ads/l/a;

    return-object v0
.end method
