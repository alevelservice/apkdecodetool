.class public final Le/f/c/g/a;
.super Ljava/lang/Object;
.source "CloseableReference.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Le/f/c/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Le/f/c/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/c<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Le/f/c/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/f/c/g/a;

    sput-object v0, Le/f/c/g/a;->g:Ljava/lang/Class;

    .line 2
    new-instance v0, Le/f/c/g/a$a;

    invoke-direct {v0}, Le/f/c/g/a$a;-><init>()V

    sput-object v0, Le/f/c/g/a;->h:Le/f/c/g/c;

    return-void
.end method

.method private constructor <init>(Le/f/c/g/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/f/c/g/a;->e:Z

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Le/f/c/g/d;

    iput-object v0, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    .line 4
    invoke-virtual {p1}, Le/f/c/g/d;->a()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Le/f/c/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Le/f/c/g/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/f/c/g/a;->e:Z

    .line 7
    new-instance v0, Le/f/c/g/d;

    invoke-direct {v0, p1, p2}, Le/f/c/g/d;-><init>(Ljava/lang/Object;Le/f/c/g/c;)V

    iput-object v0, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    return-void
.end method

.method public static a(Le/f/c/g/a;)Le/f/c/g/a;
    .locals 0
    .param p0    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/c/g/a<",
            "TT;>;)",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/f/c/g/a;->z()Le/f/c/g/a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/io/Closeable;)Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Le/f/c/g/a;

    sget-object v1, Le/f/c/g/a;->h:Le/f/c/g/c;

    invoke-direct {v0, p0, v1}, Le/f/c/g/a;-><init>(Ljava/lang/Object;Le/f/c/g/c;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Le/f/c/g/c;)Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/f/c/g/c<",
            "TT;>;)",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Le/f/c/g/a;

    invoke-direct {v0, p0, p1}, Le/f/c/g/a;-><init>(Ljava/lang/Object;Le/f/c/g/c;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Le/f/c/g/a<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Le/f/c/g/a<",
            "TT;>;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/c/g/a;

    .line 6
    invoke-static {v1}, Le/f/c/g/a;->a(Le/f/c/g/a;)Le/f/c/g/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Le/f/c/g/a;)V
    .locals 0
    .param p0    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Le/f/c/g/a;->close()V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Iterable;)V
    .locals 1
    .param p0    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Le/f/c/g/a<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/c/g/a;

    .line 3
    invoke-static {v0}, Le/f/c/g/a;->b(Le/f/c/g/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Le/f/c/g/a;)Z
    .locals 0
    .param p0    # Le/f/c/g/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/c/g/a<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Le/f/c/g/a;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized A()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/f/c/g/a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 2
    iget-object v0, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    invoke-virtual {v0}, Le/f/c/g/d;->c()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/c/g/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    invoke-virtual {v0}, Le/f/c/g/d;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized C()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/f/c/g/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Le/f/c/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/f/c/g/a;->C()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 3
    new-instance v0, Le/f/c/g/a;

    iget-object v1, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    invoke-direct {v0, v1}, Le/f/c/g/a;-><init>(Le/f/c/g/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/f/c/g/a;->clone()Le/f/c/g/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Le/f/c/g/a;->e:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/f/c/g/a;->e:Z

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    invoke-virtual {v0}, Le/f/c/g/d;->b()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 5

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Le/f/c/g/a;->e:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 5
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :try_start_3
    sget-object v0, Le/f/c/g/a;->g:Ljava/lang/Class;

    const-string v1, "Finalized without closing: %x %x (type = %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    .line 8
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Le/f/c/g/a;->f:Le/f/c/g/d;

    .line 9
    invoke-virtual {v4}, Le/f/c/g/d;->c()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 10
    invoke-static {v0, v1, v2}, Le/f/c/d/a;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Le/f/c/g/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    throw v0
.end method

.method public declared-synchronized z()Le/f/c/g/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/c/g/a<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/c/g/a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/c/g/a;->clone()Le/f/c/g/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
