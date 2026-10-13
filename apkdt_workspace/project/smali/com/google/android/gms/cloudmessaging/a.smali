.class public Lcom/google/android/gms/cloudmessaging/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field private static h:I

.field private static i:Landroid/app/PendingIntent;

.field private static final j:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Ljava/lang/String;",
            "Le/i/b/b/d/i<",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "responseCallbacks"
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/cloudmessaging/r;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Landroid/os/Messenger;

.field private f:Landroid/os/Messenger;

.field private g:Lcom/google/android/gms/cloudmessaging/zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/cloudmessaging/z;->e:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/google/android/gms/cloudmessaging/a;->j:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/g;

    invoke-direct {v0}, La/e/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/google/android/gms/cloudmessaging/r;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->c:Lcom/google/android/gms/cloudmessaging/r;

    .line 5
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/google/android/gms/cloudmessaging/y;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cloudmessaging/y;-><init>(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->e:Landroid/os/Messenger;

    .line 7
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 8
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {p1, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static final synthetic a(Le/i/b/b/d/h;)Landroid/os/Bundle;
    .locals 3

    .line 77
    invoke-virtual {p0}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "Rpc"

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error making request: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p0

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static declared-synchronized a()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/gms/cloudmessaging/a;

    monitor-enter v0

    .line 66
    :try_start_0
    sget v1, Lcom/google/android/gms/cloudmessaging/a;->h:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/gms/cloudmessaging/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/cloudmessaging/a;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cloudmessaging/a;->i:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.google.example.invalidpackage"

    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 47
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/cloudmessaging/a;->i:Landroid/app/PendingIntent;

    :cond_0
    const-string p0, "app"

    .line 48
    sget-object v1, Lcom/google/android/gms/cloudmessaging/a;->i:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final a(Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_13

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_13

    .line 2
    check-cast v0, Landroid/content/Intent;

    .line 3
    new-instance v1, Lcom/google/android/gms/cloudmessaging/zza$a;

    invoke-direct {v1}, Lcom/google/android/gms/cloudmessaging/zza$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "google.messenger"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "google.messenger"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/android/gms/cloudmessaging/zza;

    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/cloudmessaging/zza;

    iput-object v1, p0, Lcom/google/android/gms/cloudmessaging/a;->g:Lcom/google/android/gms/cloudmessaging/zza;

    .line 8
    :cond_0
    instance-of v1, v0, Landroid/os/Messenger;

    if-eqz v1, :cond_1

    .line 9
    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->f:Landroid/os/Messenger;

    .line 10
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_4

    const-string p1, "Rpc"

    .line 13
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Unexpected response action: "

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "registration_id"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "unregistered"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_f

    const-string v0, "error"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected response, no error or registration id "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_6
    const-string v4, "Rpc"

    .line 19
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Received InstanceID error "

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_8
    :goto_1
    const-string v4, "|"

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "\\|"

    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 23
    array-length v5, v4

    if-le v5, v1, :cond_b

    aget-object v5, v4, v3

    const-string v6, "ID"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 24
    :cond_9
    aget-object v0, v4, v1

    .line 25
    aget-object v1, v4, v2

    const-string v2, ":"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_a
    const-string v2, "error"

    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_b
    :goto_2
    const-string p1, "Unexpected structured response "

    .line 29
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 30
    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    monitor-enter v4

    const/4 v0, 0x0

    .line 31
    :goto_4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    invoke-virtual {v1}, La/e/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    invoke-virtual {v1, v0}, La/e/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/cloudmessaging/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 33
    :cond_e
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_f
    const-string v4, "\\|ID\\|([^|]+)\\|:?+(.*)"

    .line 34
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_12

    const-string p1, "Rpc"

    .line 37
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "Unexpected response string: "

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_11
    :goto_5
    return-void

    .line 39
    :cond_12
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_13

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "registration_id"

    .line 42
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Message;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method static final synthetic a(Le/i/b/b/d/i;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    move-result p0

    return-void
.end method

.method private final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    invoke-virtual {v1, p1}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/i/b/b/d/i;

    if-nez v1, :cond_1

    const-string p2, "Missing callback for "

    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 53
    :goto_0
    monitor-exit v0

    return-void

    .line 54
    :cond_1
    invoke-virtual {v1, p2}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    .line 55
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static final synthetic b(Landroid/os/Bundle;)Le/i/b/b/d/h;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/cloudmessaging/a;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "google.messenger"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final d(Landroid/os/Bundle;)Le/i/b/b/d/h;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Le/i/b/b/d/h<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/cloudmessaging/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Le/i/b/b/d/i;

    invoke-direct {v1}, Le/i/b/b/d/i;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    invoke-virtual {v3, v0, v1}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.google.android.gms"

    .line 7
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/a;->c:Lcom/google/android/gms/cloudmessaging/r;

    invoke-virtual {v3}, Lcom/google/android/gms/cloudmessaging/r;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "com.google.iid.TOKEN_REQUEST"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->b:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/google/android/gms/cloudmessaging/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "|ID|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "kid"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    const-string v3, "Rpc"

    .line 14
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Sending "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/a;->e:Landroid/os/Messenger;

    const-string v5, "google.messenger"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/a;->f:Landroid/os/Messenger;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/cloudmessaging/a;->g:Lcom/google/android/gms/cloudmessaging/zza;

    if-eqz v3, :cond_4

    .line 18
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 19
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/a;->f:Landroid/os/Messenger;

    if-eqz v5, :cond_3

    .line 21
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/a;->f:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/cloudmessaging/a;->g:Lcom/google/android/gms/cloudmessaging/zza;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/cloudmessaging/zza;->a(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    const-string v3, "Rpc"

    .line 23
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->c:Lcom/google/android/gms/cloudmessaging/r;

    invoke-virtual {p1}, Lcom/google/android/gms/cloudmessaging/r;->a()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/gms/cloudmessaging/u;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cloudmessaging/u;-><init>(Le/i/b/b/d/i;)V

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 29
    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/cloudmessaging/a;->j:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/cloudmessaging/x;

    invoke-direct {v4, p0, v0, p1}, Lcom/google/android/gms/cloudmessaging/x;-><init>(Lcom/google/android/gms/cloudmessaging/a;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V

    .line 30
    invoke-virtual {v2, v3, v4}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/c;)Le/i/b/b/d/h;

    .line 31
    invoke-virtual {v1}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Le/i/b/b/d/h;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Le/i/b/b/d/h<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->c:Lcom/google/android/gms/cloudmessaging/r;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/r;->b()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0xb71b00

    if-lt v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->b:Landroid/content/Context;

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/e;->a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/e;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/e;->b(ILandroid/os/Bundle;)Le/i/b/b/d/h;

    move-result-object p1

    .line 60
    sget-object v0, Lcom/google/android/gms/cloudmessaging/a;->j:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/google/android/gms/cloudmessaging/t;->a:Le/i/b/b/d/a;

    invoke-virtual {p1, v0, v1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->c:Lcom/google/android/gms/cloudmessaging/r;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/r;->a()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 63
    new-instance p1, Ljava/io/IOException;

    const-string v0, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Exception;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 64
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/a;->d(Landroid/os/Bundle;)Le/i/b/b/d/h;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/cloudmessaging/a;->j:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/cloudmessaging/v;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/cloudmessaging/v;-><init>(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {v0, v1, v2}, Le/i/b/b/d/h;->b(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Landroid/os/Bundle;Le/i/b/b/d/h;)Le/i/b/b/d/h;
    .locals 1

    .line 73
    invoke-virtual {p2}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 74
    :cond_0
    invoke-virtual {p2}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/a;->c(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 75
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/cloudmessaging/a;->d(Landroid/os/Bundle;)Le/i/b/b/d/h;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/cloudmessaging/a;->j:Ljava/util/concurrent/Executor;

    sget-object v0, Lcom/google/android/gms/cloudmessaging/w;->a:Le/i/b/b/d/g;

    .line 76
    invoke-virtual {p1, p2, v0}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Le/i/b/b/d/h;)V
    .locals 1

    .line 67
    iget-object p3, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    monitor-enter p3

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/a;->a:La/e/g;

    invoke-virtual {v0, p1}, La/e/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 70
    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 71
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
