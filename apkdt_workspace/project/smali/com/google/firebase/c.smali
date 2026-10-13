.class public Lcom/google/firebase/c;
.super Ljava/lang/Object;
.source "FirebaseApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/c$d;,
        Lcom/google/firebase/c$c;,
        Lcom/google/firebase/c$e;,
        Lcom/google/firebase/c$b;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/util/concurrent/Executor;

.field static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/c;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "LOCK"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/firebase/j;

.field private final d:Lcom/google/firebase/components/n;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lcom/google/firebase/components/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/w<",
            "Lcom/google/firebase/q/a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/firebase/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/c$d;-><init>(Lcom/google/firebase/c$a;)V

    sput-object v0, Lcom/google/firebase/c;->k:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, La/e/a;

    invoke-direct {v0}, La/e/a;-><init>()V

    sput-object v0, Lcom/google/firebase/c;->l:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/c;->h:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/c;->i:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/firebase/c;->a:Landroid/content/Context;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/m;->b(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p3

    check-cast p2, Lcom/google/firebase/j;

    iput-object p2, p0, Lcom/google/firebase/c;->c:Lcom/google/firebase/j;

    .line 9
    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 10
    invoke-static {p1, p2}, Lcom/google/firebase/components/g;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/g;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/firebase/components/g;->a()Ljava/util/List;

    move-result-object p2

    .line 12
    sget-object v0, Lcom/google/firebase/c;->k:Ljava/util/concurrent/Executor;

    .line 13
    invoke-static {v0}, Lcom/google/firebase/components/n;->a(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/n$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Lcom/google/firebase/components/n$b;->a(Ljava/util/Collection;)Lcom/google/firebase/components/n$b;

    new-instance p2, Lcom/google/firebase/FirebaseCommonRegistrar;

    invoke-direct {p2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 15
    invoke-virtual {v0, p2}, Lcom/google/firebase/components/n$b;->a(Lcom/google/firebase/components/i;)Lcom/google/firebase/components/n$b;

    const-class p2, Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Class;

    .line 16
    invoke-static {p1, p2, v2}, Lcom/google/firebase/components/d;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/n$b;->a(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/n$b;

    const-class p2, Lcom/google/firebase/c;

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    invoke-static {p0, p2, v2}, Lcom/google/firebase/components/d;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/n$b;->a(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/n$b;

    const-class p2, Lcom/google/firebase/j;

    new-array v1, v1, [Ljava/lang/Class;

    .line 18
    invoke-static {p3, p2, v1}, Lcom/google/firebase/components/d;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/components/n$b;->a(Lcom/google/firebase/components/d;)Lcom/google/firebase/components/n$b;

    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/components/n$b;->a()Lcom/google/firebase/components/n;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/c;->d:Lcom/google/firebase/components/n;

    .line 20
    new-instance p2, Lcom/google/firebase/components/w;

    invoke-static {p0, p1}, Lcom/google/firebase/b;->a(Lcom/google/firebase/c;Landroid/content/Context;)Lcom/google/firebase/p/b;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/components/w;-><init>(Lcom/google/firebase/p/b;)V

    iput-object p2, p0, Lcom/google/firebase/c;->g:Lcom/google/firebase/components/w;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/j;)Lcom/google/firebase/c;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "[DEFAULT]"

    .line 16
    invoke-static {p0, p1, v0}, Lcom/google/firebase/c;->a(Landroid/content/Context;Lcom/google/firebase/j;Ljava/lang/String;)Lcom/google/firebase/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/firebase/j;Ljava/lang/String;)Lcom/google/firebase/c;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/google/firebase/c$c;->a(Landroid/content/Context;)V

    .line 18
    invoke-static {p2}, Lcom/google/firebase/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 21
    :goto_0
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    .line 23
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirebaseApp name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/m;->b(ZLjava/lang/Object;)V

    const-string v1, "Application context cannot be null."

    .line 25
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Lcom/google/firebase/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/firebase/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/j;)V

    .line 27
    sget-object p0, Lcom/google/firebase/c;->l:Ljava/util/Map;

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-direct {v1}, Lcom/google/firebase/c;->l()V

    return-object v1

    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/firebase/c;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/firebase/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/c;

    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/firebase/c;->j()Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 11
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available app names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 12
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    .line 13
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/google/firebase/c;Landroid/content/Context;)Lcom/google/firebase/q/a;
    .locals 3

    .line 47
    new-instance v0, Lcom/google/firebase/q/a;

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/c;->e()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/firebase/c;->d:Lcom/google/firebase/components/n;

    const-class v2, Lcom/google/firebase/n/c;

    .line 49
    invoke-virtual {p0, v2}, Lcom/google/firebase/components/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/n/c;

    invoke-direct {v0, p1, v1, p0}, Lcom/google/firebase/q/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/n/c;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/c;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object p0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/firebase/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/c;->l()V

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/c;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/c;->c(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/firebase/c;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/firebase/c;->k()Lcom/google/firebase/c;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/j;->a(Landroid/content/Context;)Lcom/google/firebase/j;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    .line 8
    monitor-exit v0

    return-object p0

    .line 9
    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/c;->a(Landroid/content/Context;Lcom/google/firebase/j;)Lcom/google/firebase/c;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/firebase/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/firebase/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/c$b;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/firebase/c$b;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic h()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/m;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method private static j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/google/firebase/c;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/c;

    .line 4
    invoke-virtual {v3}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static k()Lcom/google/firebase/c;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/c;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/c;->a:Landroid/content/Context;

    invoke-static {v0}, La/i/k/c;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/google/firebase/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/c$e;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device unlocked: initializing all Firebase APIs for app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/c;->d:Lcom/google/firebase/components/n;

    invoke-virtual {p0}, Lcom/google/firebase/c;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/components/n;->a(Z)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/d;

    .line 2
    iget-object v2, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/c;->c:Lcom/google/firebase/j;

    invoke-interface {v1, v2, v3}, Lcom/google/firebase/d;->a(Ljava/lang/String;Lcom/google/firebase/j;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 38
    iget-object v0, p0, Lcom/google/firebase/c;->d:Lcom/google/firebase/components/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/google/firebase/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/google/firebase/c;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/google/firebase/c;->l:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/c;->m()V

    return-void

    :catchall_0
    move-exception v1

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 46
    iget-object v0, p0, Lcom/google/firebase/c;->g:Lcom/google/firebase/components/w;

    invoke-virtual {v0}, Lcom/google/firebase/components/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/q/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/q/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 40
    iget-object v0, p0, Lcom/google/firebase/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    .line 41
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->b()Lcom/google/android/gms/common/api/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c;->a()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/firebase/c;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/firebase/c;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 3
    iget-object v0, p0, Lcom/google/firebase/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/c;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/firebase/j;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/c;->c:Lcom/google/firebase/j;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/c;->d()Lcom/google/firebase/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/util/c;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/firebase/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/c;

    invoke-virtual {p1}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/c;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/c;->g:Lcom/google/firebase/components/w;

    invoke-virtual {v0}, Lcom/google/firebase/components/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/q/a;

    invoke-virtual {v0}, Lcom/google/firebase/q/a;->a()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[DEFAULT]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/c;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    iget-object v1, p0, Lcom/google/firebase/c;->c:Lcom/google/firebase/j;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/k$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/k$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
