.class Lcom/google/firebase/messaging/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/firebase/messaging/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/v;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/v;

    return-void
.end method

.method private a(Landroidx/core/app/NotificationCompat$d;Lcom/google/firebase/messaging/s;)V
    .locals 4
    .param p2    # Lcom/google/firebase/messaging/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/s;->j()Le/i/b/b/d/h;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-static {v0, v2, v3, v1}, Le/i/b/b/d/k;->a(Le/i/b/b/d/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 12
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$d;

    .line 13
    new-instance v1, Landroidx/core/app/NotificationCompat$a;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$a;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$a;->b(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$a;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$a;

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$d;->a(Landroidx/core/app/NotificationCompat$g;)Landroidx/core/app/NotificationCompat$d;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :catch_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/s;->close()V

    return-void

    .line 15
    :catch_1
    invoke-virtual {p2}, Lcom/google/firebase/messaging/s;->close()V

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1a

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to download image: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/firebase/messaging/a$a;)V
    .locals 3

    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 8
    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v1, "notification"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Lcom/google/firebase/messaging/a$a;->b:Ljava/lang/String;

    iget v2, p1, Lcom/google/firebase/messaging/a$a;->c:I

    iget-object p1, p1, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/NotificationCompat$d;

    .line 10
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$d;->a()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private b()Z
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/o;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v2, 0xa

    .line 4
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    const-string v3, "activity"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 7
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_2

    .line 10
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private c()Lcom/google/firebase/messaging/s;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/v;

    const-string v1, "gcm.n.image"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/v;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/messaging/s;->b(Ljava/lang/String;)Lcom/google/firebase/messaging/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/c;->a:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/s;->a(Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/v;

    const-string v1, "gcm.n.noui"

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/v;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/c;->c()Lcom/google/firebase/messaging/s;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/messaging/c;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/messaging/c;->c:Lcom/google/firebase/messaging/v;

    .line 4
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/a;->b(Landroid/content/Context;Lcom/google/firebase/messaging/v;)Lcom/google/firebase/messaging/a$a;

    move-result-object v2

    iget-object v3, v2, Lcom/google/firebase/messaging/a$a;->a:Landroidx/core/app/NotificationCompat$d;

    .line 5
    invoke-direct {p0, v3, v0}, Lcom/google/firebase/messaging/c;->a(Landroidx/core/app/NotificationCompat$d;Lcom/google/firebase/messaging/s;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/google/firebase/messaging/c;->a(Lcom/google/firebase/messaging/a$a;)V

    return v1
.end method
