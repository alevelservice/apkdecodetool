.class public abstract Lcom/google/common/util/concurrent/a;
.super Lcom/google/common/util/concurrent/l/a;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/e;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$a;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a$h;,
        Lcom/google/common/util/concurrent/a$f;,
        Lcom/google/common/util/concurrent/a$k;,
        Lcom/google/common/util/concurrent/a$b;,
        Lcom/google/common/util/concurrent/a$g;,
        Lcom/google/common/util/concurrent/a$c;,
        Lcom/google/common/util/concurrent/a$d;,
        Lcom/google/common/util/concurrent/a$e;,
        Lcom/google/common/util/concurrent/a$l;,
        Lcom/google/common/util/concurrent/a$j;,
        Lcom/google/common/util/concurrent/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/l/a;",
        "Lcom/google/common/util/concurrent/e<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final h:Z

.field private static final i:Ljava/util/logging/Logger;

.field private static final j:Lcom/google/common/util/concurrent/a$b;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile f:Lcom/google/common/util/concurrent/a$e;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile g:Lcom/google/common/util/concurrent/a$l;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/a$l;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/util/concurrent/a;->h:Z

    .line 4
    const-class v1, Lcom/google/common/util/concurrent/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/a;->i:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/a$k;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/a$k;-><init>(Lcom/google/common/util/concurrent/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_1
    new-instance v9, Lcom/google/common/util/concurrent/a$f;

    const-class v3, Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "a"

    .line 7
    :try_start_2
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "b"

    .line 8
    :try_start_3
    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/common/util/concurrent/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "g"

    .line 9
    :try_start_4
    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/common/util/concurrent/a;

    const-class v3, Lcom/google/common/util/concurrent/a$e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, "f"

    .line 10
    :try_start_5
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/common/util/concurrent/a;

    const-class v3, Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v8, "e"

    .line 11
    :try_start_6
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/common/util/concurrent/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v2

    move-object v2, v9

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 12
    new-instance v3, Lcom/google/common/util/concurrent/a$h;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/a$h;-><init>(Lcom/google/common/util/concurrent/a$a;)V

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    .line 13
    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    .line 14
    const-class v2, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_0

    .line 15
    sget-object v2, Lcom/google/common/util/concurrent/a;->i:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    sget-object v0, Lcom/google/common/util/concurrent/a;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/l/a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 4

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$e;

    .line 39
    sget-object v1, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    sget-object v2, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    .line 40
    iget-object v1, p1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 41
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$e;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/e;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->b(Lcom/google/common/util/concurrent/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 33
    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 47
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private a(Lcom/google/common/util/concurrent/a$l;)V
    .locals 4

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 8
    sget-object v1, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_4

    .line 9
    iget-object v2, p1, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    .line 10
    iget-object v3, p1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    move-object v1, p1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    iput-object v2, v1, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    .line 12
    iget-object p1, v1, Lcom/google/common/util/concurrent/a$l;->a:Ljava/lang/Thread;

    if-nez p1, :cond_3

    goto :goto_0

    .line 13
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_1
    const-string v0, "CANCELLED"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static b(Lcom/google/common/util/concurrent/e;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/e<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 7
    instance-of v1, p0, Lcom/google/common/util/concurrent/a$i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    check-cast p0, Lcom/google/common/util/concurrent/a;

    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    .line 9
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$c;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    .line 11
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/a$c;->a:Z

    if-eqz v1, :cond_1

    .line 12
    iget-object p0, v0, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/common/util/concurrent/a$c;

    invoke-direct {v0, v2, p0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    :cond_1
    :goto_0
    return-object p0

    .line 13
    :cond_2
    instance-of v1, p0, Lcom/google/common/util/concurrent/l/a;

    if-eqz v1, :cond_3

    .line 14
    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/l/a;

    .line 15
    invoke-static {v1}, Lcom/google/common/util/concurrent/l/b;->a(Lcom/google/common/util/concurrent/l/a;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 17
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 18
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->h:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 19
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    return-object p0

    .line 20
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 21
    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 22
    sget-object v3, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 24
    new-instance v1, Lcom/google/common/util/concurrent/a$d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 25
    :cond_7
    new-instance p0, Lcom/google/common/util/concurrent/a$c;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 26
    new-instance v1, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 27
    :cond_8
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$c;

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$d;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/a$d;

    iget-object p1, p1, Lcom/google/common/util/concurrent/a$d;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_2
    check-cast p1, Lcom/google/common/util/concurrent/a$c;

    iget-object p1, p1, Lcom/google/common/util/concurrent/a$c;->b:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->e(Lcom/google/common/util/concurrent/a;)V

    return-void
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 28
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lcom/google/common/util/concurrent/a;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    return-object p0
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-ne p1, p0, :cond_0

    const-string p1, "this future"

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$e;

    return-object p0
.end method

.method static synthetic e()Lcom/google/common/util/concurrent/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    return-object v0
.end method

.method private static e(Lcom/google/common/util/concurrent/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->g()V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->b()V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 6
    iget-object v1, p0, Lcom/google/common/util/concurrent/a$e;->a:Ljava/lang/Runnable;

    .line 7
    instance-of v2, v1, Lcom/google/common/util/concurrent/a$g;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lcom/google/common/util/concurrent/a$g;

    .line 9
    iget-object p0, v1, Lcom/google/common/util/concurrent/a$g;->e:Lcom/google/common/util/concurrent/a;

    .line 10
    iget-object v2, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    if-ne v2, v1, :cond_1

    .line 11
    iget-object v2, v1, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/e;

    invoke-static {v2}, Lcom/google/common/util/concurrent/a;->b(Lcom/google/common/util/concurrent/e;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    sget-object v3, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/a$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/common/util/concurrent/a;->h:Z

    return v0
.end method

.method private g()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 2
    sget-object v1, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    sget-object v2, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a$l;->a()V

    .line 4
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$l;->b:Lcom/google/common/util/concurrent/a$l;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 34
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$i;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    .line 36
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$d;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Lcom/google/common/util/concurrent/a$d;

    iget-object v0, v0, Lcom/google/common/util/concurrent/a$d;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 14
    invoke-static {p1, v0}, Le/i/c/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 15
    invoke-static {p2, v0}, Le/i/c/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$e;

    .line 18
    sget-object v1, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    if-eq v0, v1, :cond_2

    .line 19
    new-instance v1, Lcom/google/common/util/concurrent/a$e;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 20
    :cond_0
    iput-object v0, v1, Lcom/google/common/util/concurrent/a$e;->c:Lcom/google/common/util/concurrent/a$e;

    .line 21
    sget-object v2, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->f:Lcom/google/common/util/concurrent/a$e;

    .line 23
    sget-object v2, Lcom/google/common/util/concurrent/a$e;->d:Lcom/google/common/util/concurrent/a$e;

    if-ne v0, v2, :cond_0

    .line 24
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 25
    sget-object p1, Lcom/google/common/util/concurrent/a;->k:Ljava/lang/Object;

    .line 26
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->e(Lcom/google/common/util/concurrent/a;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 28
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 29
    sget-object p1, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->e(Lcom/google/common/util/concurrent/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public cancel(Z)Z
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 3
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->h:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/google/common/util/concurrent/a$c;->c:Lcom/google/common/util/concurrent/a$c;

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a$c;->d:Lcom/google/common/util/concurrent/a$c;

    :goto_1
    const/4 v5, 0x0

    move-object v4, v0

    move-object v0, p0

    .line 4
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v6, v0, v4, v3}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a;->c()V

    .line 6
    :cond_4
    invoke-static {v0}, Lcom/google/common/util/concurrent/a;->e(Lcom/google/common/util/concurrent/a;)V

    .line 7
    instance-of v0, v4, Lcom/google/common/util/concurrent/a$g;

    if-eqz v0, :cond_9

    .line 8
    check-cast v4, Lcom/google/common/util/concurrent/a$g;

    iget-object v0, v4, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/e;

    .line 9
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$i;

    if-eqz v4, :cond_6

    .line 10
    check-cast v0, Lcom/google/common/util/concurrent/a;

    .line 11
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    if-nez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 12
    :goto_3
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    .line 13
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 14
    :cond_7
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    .line 15
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    return v1
.end method

.method protected d()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$g;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lcom/google/common/util/concurrent/a$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/a$g;->f:Lcom/google/common/util/concurrent/e;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remaining delay=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 48
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 50
    sget-object v3, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-eq v0, v3, :cond_7

    .line 51
    new-instance v3, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 52
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 53
    sget-object v4, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_1
    instance-of v5, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 58
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 62
    sget-object v4, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne v0, v4, :cond_2

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    .line 3
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    instance-of v10, v6, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 5
    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    .line 7
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 8
    sget-object v15, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-eq v6, v15, :cond_9

    .line 9
    new-instance v15, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v15}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v15, v6}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 11
    sget-object v7, Lcom/google/common/util/concurrent/a;->j:Lcom/google/common/util/concurrent/a$b;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 12
    :cond_4
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_2
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 16
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 17
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 18
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a$l;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->a(Lcom/google/common/util/concurrent/a$l;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_8
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->g:Lcom/google/common/util/concurrent/a$l;

    .line 22
    sget-object v7, Lcom/google/common/util/concurrent/a$l;->c:Lcom/google/common/util/concurrent/a$l;

    if-ne v6, v7, :cond_3

    .line 23
    :cond_9
    iget-object v1, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 24
    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 25
    :goto_4
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 26
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 27
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 29
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 30
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Waited "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 33
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (plus "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 34
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 35
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v3, v4, v13

    if-lez v3, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    const/16 v16, 0x1

    :goto_6
    cmp-long v3, v11, v9

    if-lez v3, :cond_12

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but future completed as timeout expired"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$c;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->d()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PENDING, info=["

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_3
    const-string v1, "PENDING"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
