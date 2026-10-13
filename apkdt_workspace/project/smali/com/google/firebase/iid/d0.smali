.class public Lcom/google/firebase/iid/d0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/iid/d0$a;
    }
.end annotation


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Landroid/content/Intent;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/firebase/iid/d0$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/firebase/iid/WithinAppServiceBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/common/util/v/a;

    const-string v2, "Firebase-FirebaseInstanceIdServiceConnection"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/v/a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/iid/d0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/iid/d0;->j:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/d0;->e:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    .line 4
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/iid/d0;->e:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/d0;->f:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/iid/d0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a()V
    .locals 1
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    .line 1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/d0$a;

    invoke-virtual {v0}, Lcom/google/firebase/iid/d0$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FirebaseInstanceId"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/iid/d0;->i:Lcom/google/firebase/iid/WithinAppServiceBinder;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Binder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FirebaseInstanceId"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 7
    iget-object v0, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/iid/d0$a;

    iget-object v2, p0, Lcom/google/firebase/iid/d0;->i:Lcom/google/firebase/iid/WithinAppServiceBinder;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/firebase/iid/WithinAppServiceBinder;->send(Lcom/google/firebase/iid/d0$a;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private c()V
    .locals 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/iid/d0;->j:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    .line 2
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "binder is dead. start connection? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/d0;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/firebase/iid/d0;->j:Z

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/iid/d0;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/iid/d0;->f:Landroid/content/Intent;

    const/16 v3, 0x41

    .line 4
    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return-void

    :catch_0
    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/iid/d0;->j:Z

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->a()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 4
    new-instance v0, Lcom/google/firebase/iid/d0$a;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/firebase/iid/d0$a;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/google/firebase/iid/d0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/firebase/iid/d0$a;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object p1, p0, Lcom/google/firebase/iid/d0;->h:Ljava/util/Queue;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->b()V

    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/iid/d0$a;->b()Le/i/b/b/d/h;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onServiceConnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/iid/d0;->j:Z

    .line 3
    instance-of p1, p2, Lcom/google/firebase/iid/WithinAppServiceBinder;

    if-nez p1, :cond_1

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Invalid service connection: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    check-cast p2, Lcom/google/firebase/iid/WithinAppServiceBinder;

    iput-object p2, p0, Lcom/google/firebase/iid/d0;->i:Lcom/google/firebase/iid/WithinAppServiceBinder;

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "FirebaseInstanceId"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x17

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onServiceDisconnected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/iid/d0;->b()V

    return-void
.end method
