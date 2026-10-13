.class public Le/a/a/a/k;
.super Ljava/lang/Object;
.source "TBus.java"

# interfaces
.implements Le/a/a/a/i/b;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:Le/a/a/a/j;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Le/a/a/a/a/d;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Le/a/a/a/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Le/a/a/a/h;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private g:Le/a/a/a/i/c;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Le/a/a/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Le/a/a/a/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Le/a/a/a/j;

    invoke-direct {v0}, Le/a/a/a/j;-><init>()V

    iput-object v0, p0, Le/a/a/a/k;->b:Le/a/a/a/j;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Le/a/a/a/k;->c:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Le/a/a/a/a/e;

    new-instance v1, Le/a/a/a/a/c;

    new-instance v2, Le/a/a/a/a/b;

    new-instance v3, Le/a/a/a/a/f;

    iget-object v4, p0, Le/a/a/a/k;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v5, 0x0

    invoke-direct {v3, v5, p0, v4}, Le/a/a/a/a/f;-><init>(Le/a/a/a/a/a;Le/a/a/a/k;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v2, v3}, Le/a/a/a/a/b;-><init>(Le/a/a/a/a/a;)V

    invoke-direct {v1, v2}, Le/a/a/a/a/c;-><init>(Le/a/a/a/a/a;)V

    invoke-direct {v0, v1}, Le/a/a/a/a/e;-><init>(Le/a/a/a/a/a;)V

    iput-object v0, p0, Le/a/a/a/k;->d:Le/a/a/a/a/d;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/a/a/a/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    new-instance v0, Le/a/a/a/i/a;

    invoke-direct {v0}, Le/a/a/a/i/a;-><init>()V

    iput-object v0, p0, Le/a/a/a/k;->g:Le/a/a/a/i/c;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Le/a/a/a/k;->h:Z

    .line 11
    iput-boolean v0, p0, Le/a/a/a/k;->i:Z

    .line 12
    iput-boolean v0, p0, Le/a/a/a/k;->j:Z

    .line 13
    new-instance v0, Le/a/a/a/l;

    invoke-direct {v0, p0}, Le/a/a/a/l;-><init>(Le/a/a/a/k;)V

    iput-object v0, p0, Le/a/a/a/k;->k:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private b()J
    .locals 2

    .line 21
    iget-object v0, p0, Le/a/a/a/k;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Le/a/a/a/c/a;Le/a/a/a/b;)Z
    .locals 7

    .line 9
    iget-object v0, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Le/a/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/a/h;

    .line 11
    invoke-virtual {v2}, Le/a/a/a/h;->f()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Le/a/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-static {v3}, Le/a/a/b/b/a/a;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    invoke-virtual {v2}, Le/a/a/a/h;->a()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Le/a/a/b/b/a/a;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    iget-object v3, p0, Le/a/a/a/k;->d:Le/a/a/a/a/d;

    invoke-interface {v3, p1, v2}, Le/a/a/a/a/d;->a(Le/a/a/a/c/a;Le/a/a/a/h;)Le/a/a/a/f;

    move-result-object v2

    .line 17
    sget-object v3, Le/a/a/a/f;->SUCCESS:Le/a/a/a/f;

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    .line 18
    :cond_3
    sget-object v3, Le/a/a/a/b;->FIRST_ONE:Le/a/a/a/b;

    if-ne p2, v3, :cond_0

    sget-object v3, Le/a/a/a/f;->ABORT:Le/a/a/a/f;

    if-eq v2, v3, :cond_0

    :cond_4
    if-nez v1, :cond_5

    .line 19
    iget-boolean p2, p0, Le/a/a/a/k;->i:Z

    if-eqz p2, :cond_5

    invoke-static {p1}, Le/a/a/a/c/d;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1}, Le/a/a/a/c/b;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 20
    new-instance p2, Le/a/a/a/c/d;

    invoke-direct {p2, p1}, Le/a/a/a/c/d;-><init>(Le/a/a/a/c/a;)V

    invoke-virtual {p0, p2}, Le/a/a/a/k;->a(Le/a/a/a/c/a;)V

    :cond_5
    return v1
.end method


# virtual methods
.method public a(Le/a/a/a/h;)Le/a/a/a/h;
    .locals 2

    .line 30
    invoke-direct {p0}, Le/a/a/a/k;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le/a/a/a/h;->a(J)V

    return-object p1
.end method

.method public a(Le/a/a/a/c/a;)V
    .locals 1

    .line 21
    sget-object v0, Le/a/a/a/b;->BROADCAST:Le/a/a/a/b;

    invoke-virtual {p0, p1, v0}, Le/a/a/a/k;->a(Le/a/a/a/c/a;Le/a/a/a/b;)V

    return-void
.end method

.method public a(Le/a/a/a/c/a;Le/a/a/a/b;)V
    .locals 2

    .line 22
    invoke-static {p1}, Le/a/a/b/b/b;->a(Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Le/a/a/a/k;->h:Z

    if-eqz v0, :cond_1

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le/a/a/a/c/a;->a(J)V

    .line 25
    iget-object v0, p0, Le/a/a/a/k;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/a/d;

    .line 26
    invoke-virtual {v0, p1}, Le/a/a/a/d;->a(Le/a/a/a/c/a;)V

    .line 27
    :cond_0
    :goto_0
    invoke-virtual {v0}, Le/a/a/a/d;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    invoke-virtual {v0}, Le/a/a/a/d;->a()Le/a/a/a/c/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    invoke-direct {p0, p1, p2}, Le/a/a/a/k;->b(Le/a/a/a/c/a;Le/a/a/a/b;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    .line 2
    iget-object v0, p0, Le/a/a/a/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/a/k;->g:Le/a/a/a/i/c;

    invoke-interface {v0, p1, p0}, Le/a/a/a/i/c;->a(Ljava/lang/Object;Le/a/a/a/i/b;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/a/a/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 8
    iget-object v2, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Le/a/a/b/a/c;

    iget-object v3, p0, Le/a/a/a/k;->b:Le/a/a/a/j;

    invoke-direct {v2, v3}, Le/a/a/b/a/c;-><init>(Ljava/util/Comparator;)V

    .line 10
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    iget-object v3, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/Object;Le/a/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0, p2}, Le/a/a/a/k;->a(Ljava/lang/Object;Ljava/lang/String;Le/a/a/a/b;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Le/a/a/a/b;)V
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 16
    new-instance v1, Le/a/a/a/c/a;

    invoke-direct {v1}, Le/a/a/a/c/a;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/a/a/a/c/a;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, p2}, Le/a/a/a/c/a;->b(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p1}, Le/a/a/a/c/a;->a(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, v1, p3}, Le/a/a/a/k;->a(Le/a/a/a/c/a;Le/a/a/a/b;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/a/k;->j:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/a/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/a/a/k;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/b;->BROADCAST:Le/a/a/a/b;

    invoke-virtual {p0, p1, v0}, Le/a/a/a/k;->a(Ljava/lang/Object;Le/a/a/a/b;)V

    return-void
.end method
