.class public final Lcom/google/android/gms/cloudmessaging/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field private static e:Lcom/google/android/gms/cloudmessaging/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "MessengerIpcClient.class"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Lcom/google/android/gms/cloudmessaging/f;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cloudmessaging/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/f;-><init>(Lcom/google/android/gms/cloudmessaging/e;Lcom/google/android/gms/cloudmessaging/g;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Lcom/google/android/gms/cloudmessaging/f;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/cloudmessaging/e;->d:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/e;->a:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized a()I
    .locals 2

    monitor-enter p0

    .line 14
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/cloudmessaging/e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/cloudmessaging/e;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/cloudmessaging/e;)Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/e;
    .locals 6

    const-class v0, Lcom/google/android/gms/cloudmessaging/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/e;->e:Lcom/google/android/gms/cloudmessaging/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/android/gms/cloudmessaging/e;

    .line 3
    invoke-static {}, Le/i/b/b/b/a/a;->a()Le/i/b/b/b/a/b;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/google/android/gms/common/util/v/a;

    const-string v5, "MessengerIpcClient"

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/util/v/a;-><init>(Ljava/lang/String;)V

    sget v5, Le/i/b/b/b/a/f;->b:I

    .line 4
    invoke-interface {v2, v3, v4, v5}, Le/i/b/b/b/a/b;->a(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/cloudmessaging/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/google/android/gms/cloudmessaging/e;->e:Lcom/google/android/gms/cloudmessaging/e;

    .line 5
    :cond_0
    sget-object p0, Lcom/google/android/gms/cloudmessaging/e;->e:Lcom/google/android/gms/cloudmessaging/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/cloudmessaging/q;)Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/cloudmessaging/q<",
            "TT;>;)",
            "Le/i/b/b/d/h<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Lcom/google/android/gms/cloudmessaging/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/f;->a(Lcom/google/android/gms/cloudmessaging/q;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/google/android/gms/cloudmessaging/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/f;-><init>(Lcom/google/android/gms/cloudmessaging/e;Lcom/google/android/gms/cloudmessaging/g;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Lcom/google/android/gms/cloudmessaging/f;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/e;->c:Lcom/google/android/gms/cloudmessaging/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/f;->a(Lcom/google/android/gms/cloudmessaging/q;)Z

    .line 12
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/q;->b:Le/i/b/b/d/i;

    invoke-virtual {p1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/gms/cloudmessaging/e;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/cloudmessaging/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance p1, Lcom/google/android/gms/cloudmessaging/n;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/e;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/n;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/e;->a(Lcom/google/android/gms/cloudmessaging/q;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILandroid/os/Bundle;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Le/i/b/b/d/h<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/cloudmessaging/s;

    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/e;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/cloudmessaging/s;-><init>(IILandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/e;->a(Lcom/google/android/gms/cloudmessaging/q;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
