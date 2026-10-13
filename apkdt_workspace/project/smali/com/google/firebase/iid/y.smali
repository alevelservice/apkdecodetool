.class Lcom/google/firebase/iid/y;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/y$a;
    }
.end annotation


# instance fields
.field private final e:J

.field private final f:Landroid/os/PowerManager$WakeLock;

.field private final g:Lcom/google/firebase/iid/FirebaseInstanceId;

.field h:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;J)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/h;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/y;->h:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-wide p2, p0, Lcom/google/firebase/iid/y;->e:J

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string p3, "fiid-sync"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/y;->f:Landroid/os/PowerManager$WakeLock;

    iget-object p1, p0, Lcom/google/firebase/iid/y;->f:Landroid/os/PowerManager$WakeLock;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/iid/y;)Lcom/google/firebase/iid/FirebaseInstanceId;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 4
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invoking onNewToken for app: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NEW_TOKEN"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "token"

    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Lcom/google/firebase/iid/f;

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/iid/y;->h:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v1, v2}, Lcom/google/firebase/iid/f;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/iid/f;->a(Landroid/content/Intent;)Le/i/b/b/d/h;

    :cond_2
    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/c;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method c()Z
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->g()Lcom/google/firebase/iid/x$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Lcom/google/firebase/iid/x$a;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 3
    invoke-virtual {v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    const-string v4, "FirebaseInstanceId"

    const/4 v5, 0x3

    .line 4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/google/firebase/iid/x$a;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/firebase/iid/y;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v2

    :catch_0
    return v1

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/iid/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x34

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Token retrieval failed: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Will retry token retrieval"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    .line 10
    :cond_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    .line 11
    :cond_5
    throw v0
.end method

.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/y;->f:Landroid/os/PowerManager$WakeLock;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V

    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/y;->f:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/w;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->b()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/google/firebase/iid/y$a;

    .line 10
    invoke-direct {v1, p0}, Lcom/google/firebase/iid/y$a;-><init>(Lcom/google/firebase/iid/y;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/firebase/iid/y$a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 13
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-wide v2, p0, Lcom/google/firebase/iid/y;->e:J

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_1
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 18
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Topic sync or token retrieval failed on hard failure exceptions: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Won\'t retry the operation."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/google/firebase/iid/y;->g:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    return-void

    :goto_2
    invoke-static {}, Lcom/google/firebase/iid/w;->b()Lcom/google/firebase/iid/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/iid/y;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/w;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    .line 22
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/iid/y;->f:Landroid/os/PowerManager$WakeLock;

    .line 23
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 24
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
