.class public abstract Lcom/google/firebase/messaging/EnhancedIntentService;
.super Landroid/app/Service;
.source "com.google.firebase:firebase-messaging@@21.0.1"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnwrappedWakefulBroadcastReceiver"
    }
.end annotation


# instance fields
.field private e:Landroid/os/Binder;

.field final executor:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/firebase/messaging/g;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->h:I

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/iid/z;->a(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->f:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->h:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->g:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/EnhancedIntentService;->stopSelfResultHook(I)Z

    .line 4
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->b(Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Intent;)Le/i/b/b/d/h;
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->handleIntentOnMainThread(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Le/i/b/b/d/i;

    invoke-direct {v0}, Le/i/b/b/d/i;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/firebase/messaging/d;

    .line 4
    invoke-direct {v2, p0, p1, v0}, Lcom/google/firebase/messaging/d;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Le/i/b/b/d/i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Le/i/b/b/d/i;->a()Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method

.method public abstract handleIntent(Landroid/content/Intent;)V
.end method

.method public handleIntentOnMainThread(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method final synthetic lambda$onStartCommand$1$EnhancedIntentService(Landroid/content/Intent;Le/i/b/b/d/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    return-void
.end method

.method final synthetic lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Le/i/b/b/d/i;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Le/i/b/b/d/i;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public final declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 2
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->e:Landroid/os/Binder;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/firebase/iid/WithinAppServiceBinder;

    new-instance v0, Lcom/google/firebase/messaging/EnhancedIntentService$a;

    invoke-direct {v0, p0}, Lcom/google/firebase/messaging/EnhancedIntentService$a;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;)V

    invoke-direct {p1, v0}, Lcom/google/firebase/iid/WithinAppServiceBinder;-><init>(Lcom/google/firebase/iid/WithinAppServiceBinder$a;)V

    iput-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->e:Landroid/os/Binder;

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->e:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    iget-object p2, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->f:Ljava/lang/Object;

    .line 1
    monitor-enter p2

    :try_start_0
    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->g:I

    iget p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->h:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->h:I

    .line 2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    return p3

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/firebase/messaging/EnhancedIntentService;->b(Landroid/content/Intent;)Le/i/b/b/d/h;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Le/i/b/b/d/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/EnhancedIntentService;->a(Landroid/content/Intent;)V

    return p3

    :cond_1
    sget-object p3, Lcom/google/firebase/messaging/e;->e:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v0, Lcom/google/firebase/messaging/f;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/messaging/f;-><init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;)V

    invoke-virtual {p2, p3, v0}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/c;)Le/i/b/b/d/h;

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method stopSelfResultHook(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
