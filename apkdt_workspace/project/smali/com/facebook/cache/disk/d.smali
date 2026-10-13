.class public Lcom/facebook/cache/disk/d;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/facebook/cache/disk/h;
.implements Le/f/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cache/disk/d$c;,
        Lcom/facebook/cache/disk/d$b;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final r:J

.field private static final s:J


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:J

.field private final e:Le/f/b/a/c;

.field final f:Ljava/util/Set;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private g:J

.field private final h:Le/f/c/h/a;

.field private final i:Lcom/facebook/cache/disk/c;

.field private final j:Lcom/facebook/cache/disk/g;

.field private final k:Le/f/b/a/a;

.field private final l:Z

.field private final m:Lcom/facebook/cache/disk/d$b;

.field private final n:Lcom/facebook/common/time/a;

.field private final o:Ljava/lang/Object;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/cache/disk/d;

    sput-object v0, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/d;->r:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/cache/disk/d;->s:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/d$c;Le/f/b/a/c;Le/f/b/a/a;Le/f/c/a/b;Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 2
    .param p6    # Le/f/c/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p7, Ljava/lang/Object;

    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    .line 3
    iget-wide v0, p3, Lcom/facebook/cache/disk/d$c;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->a:J

    .line 4
    iget-wide v0, p3, Lcom/facebook/cache/disk/d$c;->c:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->b:J

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    .line 6
    invoke-static {}, Le/f/c/h/a;->b()Le/f/c/h/a;

    move-result-object p7

    iput-object p7, p0, Lcom/facebook/cache/disk/d;->h:Le/f/c/h/a;

    .line 7
    iput-object p1, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    .line 8
    iput-object p2, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/g;

    const-wide/16 p1, -0x1

    .line 9
    iput-wide p1, p0, Lcom/facebook/cache/disk/d;->g:J

    .line 10
    iput-object p4, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    .line 11
    iget-wide p1, p3, Lcom/facebook/cache/disk/d$c;->a:J

    .line 12
    iput-object p5, p0, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    .line 13
    new-instance p1, Lcom/facebook/cache/disk/d$b;

    invoke-direct {p1}, Lcom/facebook/cache/disk/d$b;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    .line 14
    invoke-static {}, Lcom/facebook/common/time/c;->a()Lcom/facebook/common/time/c;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/common/time/a;

    .line 15
    iput-boolean p9, p0, Lcom/facebook/cache/disk/d;->l:Z

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    if-eqz p6, :cond_0

    .line 17
    invoke-interface {p6, p0}, Le/f/c/a/b;->a(Le/f/c/a/a;)V

    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/cache/disk/d;->l:Z

    if-eqz p1, :cond_1

    .line 19
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    .line 20
    new-instance p1, Lcom/facebook/cache/disk/d$a;

    invoke-direct {p1, p0}, Lcom/facebook/cache/disk/d$a;-><init>(Lcom/facebook/cache/disk/d;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 21
    :cond_1
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Le/f/b/a/d;)Lcom/facebook/cache/disk/c$b;
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->a()V

    .line 24
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v0, p1, p2}, Lcom/facebook/cache/disk/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/cache/disk/c$b;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/facebook/cache/disk/c$b;Le/f/b/a/d;Ljava/lang/String;)Le/f/a/a;
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    invoke-interface {p1, p2}, Lcom/facebook/cache/disk/c$b;->a(Ljava/lang/Object;)Le/f/a/a;

    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-interface {p1}, Le/f/a/a;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/facebook/cache/disk/d$b;->a(JJ)V

    .line 29
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/facebook/cache/disk/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/c$a;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/facebook/cache/disk/c$a;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/common/time/a;

    invoke-interface {v0}, Lcom/facebook/common/time/a;->now()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/cache/disk/d;->r:J

    add-long/2addr v0, v2

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/cache/disk/c$a;

    .line 90
    invoke-interface {v4}, Lcom/facebook/cache/disk/c$a;->j()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 91
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->j:Lcom/facebook/cache/disk/g;

    invoke-interface {p1}, Lcom/facebook/cache/disk/g;->get()Lcom/facebook/cache/disk/f;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private a()V
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->b()Z

    move-result v1

    .line 59
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->d()V

    .line 60
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/d$b;->b()J

    move-result-wide v2

    .line 61
    iget-wide v4, p0, Lcom/facebook/cache/disk/d;->d:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v1}, Lcom/facebook/cache/disk/d$b;->d()V

    .line 63
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->b()Z

    .line 64
    :cond_0
    iget-wide v4, p0, Lcom/facebook/cache/disk/d;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 65
    iget-wide v1, p0, Lcom/facebook/cache/disk/d;->d:J

    const-wide/16 v3, 0x9

    mul-long v1, v1, v3

    const-wide/16 v3, 0xa

    div-long/2addr v1, v3

    sget-object v3, Le/f/b/a/c$a;->CACHE_FULL:Le/f/b/a/c$a;

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/cache/disk/d;->a(JLe/f/b/a/c$a;)V

    .line 66
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(JLe/f/b/a/c$a;)V
    .locals 17
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 67
    :try_start_0
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/cache/disk/d;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    move-result-wide v4

    sub-long v6, v4, v2

    const/4 v8, 0x0

    .line 69
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/facebook/cache/disk/c$a;

    cmp-long v14, v11, v6

    if-lez v14, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v14, v1, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v14, v13}, Lcom/facebook/cache/disk/c;->a(Lcom/facebook/cache/disk/c$a;)J

    move-result-wide v14

    .line 71
    iget-object v9, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {v13}, Lcom/facebook/cache/disk/c$a;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    cmp-long v16, v14, v9

    if-lez v16, :cond_1

    add-int/lit8 v8, v8, 0x1

    add-long/2addr v11, v14

    .line 72
    invoke-static {}, Lcom/facebook/cache/disk/i;->b()Lcom/facebook/cache/disk/i;

    move-result-object v9

    .line 73
    invoke-interface {v13}, Lcom/facebook/cache/disk/c$a;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/facebook/cache/disk/i;->a(Ljava/lang/String;)Lcom/facebook/cache/disk/i;

    move-object/from16 v10, p3

    .line 74
    invoke-virtual {v9, v10}, Lcom/facebook/cache/disk/i;->a(Le/f/b/a/c$a;)Lcom/facebook/cache/disk/i;

    .line 75
    invoke-virtual {v9, v14, v15}, Lcom/facebook/cache/disk/i;->c(J)Lcom/facebook/cache/disk/i;

    sub-long v13, v4, v11

    .line 76
    invoke-virtual {v9, v13, v14}, Lcom/facebook/cache/disk/i;->b(J)Lcom/facebook/cache/disk/i;

    .line 77
    invoke-virtual {v9, v2, v3}, Lcom/facebook/cache/disk/i;->a(J)Lcom/facebook/cache/disk/i;

    .line 78
    iget-object v13, v1, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {v13, v9}, Le/f/b/a/c;->b(Le/f/b/a/b;)V

    .line 79
    invoke-virtual {v9}, Lcom/facebook/cache/disk/i;->a()V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p3

    goto :goto_0

    .line 80
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    neg-long v2, v11

    neg-int v4, v8

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/cache/disk/d$b;->a(JJ)V

    .line 81
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->b()V

    return-void

    :catch_0
    move-exception v0

    .line 82
    iget-object v2, v1, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    sget-object v3, Le/f/b/a/a$a;->EVICTION:Le/f/b/a/a$a;

    sget-object v4, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evictAboveSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-interface {v2, v3, v4, v5, v0}, Le/f/b/a/a;->a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/cache/disk/d;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/cache/disk/d;->p:Z

    return p1
.end method

.method private b()Z
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/common/time/a;

    invoke-interface {v0}, Lcom/facebook/common/time/a;->now()J

    move-result-wide v0

    .line 13
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v2}, Lcom/facebook/cache/disk/d$b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/facebook/cache/disk/d;->g:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/cache/disk/d;->s:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 14
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/cache/disk/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/cache/disk/d;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/d;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/d;->c:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private c()Z
    .locals 22
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    .line 2
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->n:Lcom/facebook/common/time/a;

    invoke-interface {v0}, Lcom/facebook/common/time/a;->now()J

    move-result-wide v2

    .line 3
    sget-wide v4, Lcom/facebook/cache/disk/d;->r:J

    add-long/2addr v4, v2

    .line 4
    iget-boolean v0, v1, Lcom/facebook/cache/disk/d;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, v1, Lcom/facebook/cache/disk/d;->l:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_0
    iget-object v8, v1, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v8}, Lcom/facebook/cache/disk/c;->c()Ljava/util/Collection;

    move-result-object v8

    .line 9
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-wide v6, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v11, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v17, 0x1

    if-eqz v16, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/facebook/cache/disk/c$a;

    add-int/lit8 v10, v10, 0x1

    .line 10
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$a;->i()J

    move-result-wide v18

    add-long v11, v11, v18

    .line 11
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$a;->j()J

    move-result-wide v18

    cmp-long v20, v18, v4

    if-lez v20, :cond_2

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v18, v4

    int-to-long v4, v14

    .line 12
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$a;->i()J

    move-result-wide v20

    add-long v4, v4, v20

    long-to-int v5, v4

    .line 13
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$a;->j()J

    move-result-wide v20

    move v9, v5

    sub-long v4, v20, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v6, v4

    move v14, v9

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v4

    .line 14
    iget-boolean v4, v1, Lcom/facebook/cache/disk/d;->l:Z

    if-eqz v4, :cond_3

    .line 15
    invoke-interface/range {v16 .. v16}, Lcom/facebook/cache/disk/c$a;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    move-wide/from16 v4, v18

    goto :goto_1

    :cond_4
    if-eqz v9, :cond_5

    .line 16
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    sget-object v5, Le/f/b/a/a$a;->READ_INVALID_ENTRY:Le/f/b/a/a$a;

    sget-object v8, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Future timestamp found in "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " files , with a total size of "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " bytes, and a maximum time delta of "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v5, v8, v6, v7}, Le/f/b/a/a;->a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_5
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->a()J

    move-result-wide v4

    int-to-long v6, v10

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    iget-object v4, v1, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    move-result-wide v4

    cmp-long v8, v4, v11

    if-eqz v8, :cond_8

    .line 18
    :cond_6
    iget-boolean v4, v1, Lcom/facebook/cache/disk/d;->l:Z

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    if-eq v4, v0, :cond_7

    .line 19
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 20
    iget-object v4, v1, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 21
    :cond_7
    iget-object v0, v1, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    invoke-virtual {v0, v11, v12, v6, v7}, Lcom/facebook/cache/disk/d$b;->b(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_8
    iput-wide v2, v1, Lcom/facebook/cache/disk/d;->g:J

    return v17

    :catch_0
    move-exception v0

    .line 23
    iget-object v2, v1, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    sget-object v3, Le/f/b/a/a$a;->GENERIC_IO:Le/f/b/a/a$a;

    sget-object v4, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcFileCacheSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-interface {v2, v3, v4, v5, v0}, Le/f/b/a/a;->a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    return v2
.end method

.method private d()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    .line 2
    invoke-interface {v0}, Lcom/facebook/cache/disk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Le/f/c/h/a$a;->EXTERNAL:Le/f/c/h/a$a;

    goto :goto_0

    :cond_0
    sget-object v0, Le/f/c/h/a$a;->INTERNAL:Le/f/c/h/a$a;

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->h:Le/f/c/h/a;

    iget-wide v2, p0, Lcom/facebook/cache/disk/d;->b:J

    iget-object v4, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    .line 4
    invoke-virtual {v4}, Lcom/facebook/cache/disk/d$b;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 5
    invoke-virtual {v1, v0, v2, v3}, Le/f/c/h/a;->a(Le/f/c/h/a$a;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/facebook/cache/disk/d;->a:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/facebook/cache/disk/d;->b:J

    iput-wide v0, p0, Lcom/facebook/cache/disk/d;->d:J

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Le/f/b/a/d;)Le/f/a/a;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {}, Lcom/facebook/cache/disk/i;->b()Lcom/facebook/cache/disk/i;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/i;->a(Le/f/b/a/d;)Lcom/facebook/cache/disk/i;

    const/4 v1, 0x0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-static {p1}, Le/f/b/a/e;->b(Le/f/b/a/d;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v5

    .line 7
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v5}, Lcom/facebook/cache/disk/i;->a(Ljava/lang/String;)Lcom/facebook/cache/disk/i;

    .line 10
    iget-object v6, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v6, v5, p1}, Lcom/facebook/cache/disk/c;->b(Ljava/lang/String;Ljava/lang/Object;)Le/f/a/a;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 11
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {p1, v0}, Le/f/b/a/c;->a(Le/f/b/a/b;)V

    .line 12
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {p1, v0}, Le/f/b/a/c;->d(Le/f/b/a/b;)V

    .line 14
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {v0}, Lcom/facebook/cache/disk/i;->a()V

    return-object v6

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18
    :try_start_4
    iget-object v2, p0, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    sget-object v3, Le/f/b/a/a$a;->GENERIC_IO:Le/f/b/a/a$a;

    sget-object v4, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    const-string v5, "getResource"

    invoke-interface {v2, v3, v4, v5, p1}, Le/f/b/a/a;->a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/i;->a(Ljava/io/IOException;)Lcom/facebook/cache/disk/i;

    .line 20
    iget-object p1, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {p1, v0}, Le/f/b/a/c;->f(Le/f/b/a/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 21
    invoke-virtual {v0}, Lcom/facebook/cache/disk/i;->a()V

    return-object v1

    :goto_3
    invoke-virtual {v0}, Lcom/facebook/cache/disk/i;->a()V

    .line 22
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Le/f/b/a/d;Le/f/b/a/j;)Le/f/a/a;
    .locals 4

    .line 31
    invoke-static {}, Lcom/facebook/cache/disk/i;->b()Lcom/facebook/cache/disk/i;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/i;->a(Le/f/b/a/d;)Lcom/facebook/cache/disk/i;

    .line 33
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {v1, v0}, Le/f/b/a/c;->g(Le/f/b/a/b;)V

    .line 34
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    invoke-static {p1}, Le/f/b/a/e;->a(Le/f/b/a/d;)Ljava/lang/String;

    move-result-object v2

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    invoke-virtual {v0, v2}, Lcom/facebook/cache/disk/i;->a(Ljava/lang/String;)Lcom/facebook/cache/disk/i;

    .line 38
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/facebook/cache/disk/d;->a(Ljava/lang/String;Le/f/b/a/d;)Lcom/facebook/cache/disk/c$b;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-interface {v1, p2, p1}, Lcom/facebook/cache/disk/c$b;->a(Le/f/b/a/j;Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0, v1, p1, v2}, Lcom/facebook/cache/disk/d;->a(Lcom/facebook/cache/disk/c$b;Le/f/b/a/d;Ljava/lang/String;)Le/f/a/a;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Le/f/a/a;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/i;->c(J)Lcom/facebook/cache/disk/i;

    iget-object p2, p0, Lcom/facebook/cache/disk/d;->m:Lcom/facebook/cache/disk/d$b;

    .line 42
    invoke-virtual {p2}, Lcom/facebook/cache/disk/d$b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/cache/disk/i;->b(J)Lcom/facebook/cache/disk/i;

    .line 43
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {p2, v0}, Le/f/b/a/c;->e(Le/f/b/a/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-interface {v1}, Lcom/facebook/cache/disk/c$b;->n()Z

    move-result p2

    if-nez p2, :cond_0

    .line 45
    sget-object p2, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/i;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 47
    :try_start_4
    invoke-interface {v1}, Lcom/facebook/cache/disk/c$b;->n()Z

    move-result p2

    if-nez p2, :cond_1

    .line 48
    sget-object p2, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    const-string v1, "Failed to delete temp file"

    invoke-static {p2, v1}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    :cond_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    :try_start_5
    invoke-virtual {v0, p1}, Lcom/facebook/cache/disk/i;->a(Ljava/io/IOException;)Lcom/facebook/cache/disk/i;

    .line 51
    iget-object p2, p0, Lcom/facebook/cache/disk/d;->e:Le/f/b/a/c;

    invoke-interface {p2, v0}, Le/f/b/a/c;->c(Le/f/b/a/b;)V

    .line 52
    sget-object p2, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    const-string v1, "Failed inserting a file into the cache"

    invoke-static {p2, v1, p1}, Le/f/c/d/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 54
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/cache/disk/i;->a()V

    .line 55
    throw p1

    :catchall_2
    move-exception p1

    .line 56
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public b(Le/f/b/a/d;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/facebook/cache/disk/d;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1}, Le/f/b/a/e;->b(Le/f/b/a/d;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/facebook/cache/disk/d;->i:Lcom/facebook/cache/disk/c;

    invoke-interface {v3, v2}, Lcom/facebook/cache/disk/c;->a(Ljava/lang/String;)J

    .line 7
    iget-object v3, p0, Lcom/facebook/cache/disk/d;->f:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/facebook/cache/disk/d;->k:Le/f/b/a/a;

    sget-object v2, Le/f/b/a/a$a;->DELETE_FILE:Le/f/b/a/a$a;

    sget-object v3, Lcom/facebook/cache/disk/d;->q:Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v1, v2, v3, v4, p1}, Le/f/b/a/a;->a(Le/f/b/a/a$a;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
