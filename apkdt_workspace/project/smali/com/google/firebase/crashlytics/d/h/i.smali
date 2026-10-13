.class Lcom/google/firebase/crashlytics/d/h/i;
.super Ljava/lang/Object;
.source "CrashlyticsBackgroundWorker.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private b:Le/i/b/b/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->b:Le/i/b/b/d/h;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->d:Ljava/lang/ThreadLocal;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/i;->a:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/i$a;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/h/i$a;-><init>(Lcom/google/firebase/crashlytics/d/h/i;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Le/i/b/b/d/h;)Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/b/d/h<",
            "TT;>;)",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/i$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/d/h/i$d;-><init>(Lcom/google/firebase/crashlytics/d/h/i;)V

    invoke-virtual {p1, v0, v1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/d/h/i;)Ljava/lang/ThreadLocal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/d/h/i;->d:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method private c(Ljava/util/concurrent/Callable;)Le/i/b/b/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Le/i/b/b/d/a<",
            "Ljava/lang/Void;",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/i$c;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/h/i$c;-><init>(Lcom/google/firebase/crashlytics/d/h/i;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/i;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a(Ljava/lang/Runnable;)Le/i/b/b/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/firebase/crashlytics/d/h/i$b;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/h/i$b;-><init>(Lcom/google/firebase/crashlytics/d/h/i;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/h/i;->a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Le/i/b/b/d/h<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/i;->b:Le/i/b/b/d/h;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/i;->c(Ljava/util/concurrent/Callable;)Le/i/b/b/d/a;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/h/i;->b:Le/i/b/b/d/h;

    .line 9
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/h/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not running on background worker thread as intended."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/concurrent/Callable;)Le/i/b/b/d/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "Le/i/b/b/d/h<",
            "TT;>;>;)",
            "Le/i/b/b/d/h<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/i;->b:Le/i/b/b/d/h;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/i;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/i;->c(Ljava/util/concurrent/Callable;)Le/i/b/b/d/a;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Le/i/b/b/d/h;->b(Ljava/util/concurrent/Executor;Le/i/b/b/d/a;)Le/i/b/b/d/h;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/d/h/i;->a(Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/crashlytics/d/h/i;->b:Le/i/b/b/d/h;

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
