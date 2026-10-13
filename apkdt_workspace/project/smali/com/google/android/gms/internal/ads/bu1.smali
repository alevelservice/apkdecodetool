.class public final Lcom/google/android/gms/internal/ads/bu1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/internal/ads/a;

.field private final f:Lcom/google/android/gms/internal/ads/tn1;

.field private final g:Lcom/google/android/gms/internal/ads/b;

.field private final h:[Lcom/google/android/gms/internal/ads/sm1;

.field private i:Lcom/google/android/gms/internal/ads/m70;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ou1;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/yu1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;)V
    .locals 1

    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/bu1;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;I)V
    .locals 2

    .line 12
    new-instance p3, Lcom/google/android/gms/internal/ads/vj1;

    new-instance v0, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/vj1;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x4

    .line 14
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/bu1;-><init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;ILcom/google/android/gms/internal/ads/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/tn1;ILcom/google/android/gms/internal/ads/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->b:Ljava/util/Set;

    .line 4
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance p3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->j:Ljava/util/List;

    .line 7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bu1;->k:Ljava/util/List;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu1;->e:Lcom/google/android/gms/internal/ads/a;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bu1;->f:Lcom/google/android/gms/internal/ads/tn1;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/sm1;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bu1;->h:[Lcom/google/android/gms/internal/ads/sm1;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/uq1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "TT;>;"
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/uq1;->a(Lcom/google/android/gms/internal/ads/bu1;)Lcom/google/android/gms/internal/ads/uq1;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->b:Ljava/util/Set;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/uq1;->b(I)Lcom/google/android/gms/internal/ads/uq1;

    const-string v0, "add-to-queue"

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/uq1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bu1;->a(Lcom/google/android/gms/internal/ads/uq1;I)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uq1;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->i:Lcom/google/android/gms/internal/ads/m70;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/m70;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->h:[Lcom/google/android/gms/internal/ads/sm1;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/sm1;->a()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/m70;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bu1;->e:Lcom/google/android/gms/internal/ads/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/m70;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->i:Lcom/google/android/gms/internal/ads/m70;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->i:Lcom/google/android/gms/internal/ads/m70;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->h:[Lcom/google/android/gms/internal/ads/sm1;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/sm1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bu1;->f:Lcom/google/android/gms/internal/ads/tn1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bu1;->e:Lcom/google/android/gms/internal/ads/a;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bu1;->g:Lcom/google/android/gms/internal/ads/b;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/sm1;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/tn1;Lcom/google/android/gms/internal/ads/a;Lcom/google/android/gms/internal/ads/b;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->h:[Lcom/google/android/gms/internal/ads/sm1;

    aput-object v0, v1, v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/uq1;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "*>;I)V"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->k:Ljava/util/List;

    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/yu1;

    .line 25
    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/yu1;->a(Lcom/google/android/gms/internal/ads/uq1;I)V

    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final b(Lcom/google/android/gms/internal/ads/uq1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/uq1<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->b:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bu1;->j:Ljava/util/List;

    monitor-enter v1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bu1;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ou1;

    .line 6
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/ou1;->a(Lcom/google/android/gms/internal/ads/uq1;)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bu1;->a(Lcom/google/android/gms/internal/ads/uq1;I)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 10
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
