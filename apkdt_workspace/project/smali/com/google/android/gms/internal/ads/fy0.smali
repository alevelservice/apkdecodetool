.class public Lcom/google/android/gms/internal/ads/fy0;
.super Lcom/google/android/gms/internal/ads/j01;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/qz0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/fy0$i;,
        Lcom/google/android/gms/internal/ads/fy0$g;,
        Lcom/google/android/gms/internal/ads/fy0$j;,
        Lcom/google/android/gms/internal/ads/fy0$b;,
        Lcom/google/android/gms/internal/ads/fy0$f;,
        Lcom/google/android/gms/internal/ads/fy0$d;,
        Lcom/google/android/gms/internal/ads/fy0$c;,
        Lcom/google/android/gms/internal/ads/fy0$e;,
        Lcom/google/android/gms/internal/ads/fy0$l;,
        Lcom/google/android/gms/internal/ads/fy0$k;,
        Lcom/google/android/gms/internal/ads/fy0$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/j01;",
        "Lcom/google/android/gms/internal/ads/qz0<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final h:Z

.field private static final i:Ljava/util/logging/Logger;

.field private static final j:Lcom/google/android/gms/internal/ads/fy0$b;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile f:Lcom/google/android/gms/internal/ads/fy0$e;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private volatile g:Lcom/google/android/gms/internal/ads/fy0$l;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/fy0$l;

    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/fy0;->h:Z

    .line 4
    const-class v1, Lcom/google/android/gms/internal/ads/fy0;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/fy0;->i:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/fy0$j;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/fy0$j;-><init>(Lcom/google/android/gms/internal/ads/fy0$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v14, v8

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_1
    new-instance v9, Lcom/google/android/gms/internal/ads/fy0$g;

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

    const-class v3, Lcom/google/android/gms/internal/ads/fy0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v6, "g"

    .line 9
    :try_start_4
    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/android/gms/internal/ads/fy0;

    const-class v3, Lcom/google/android/gms/internal/ads/fy0$e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v7, "f"

    .line 10
    :try_start_5
    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/android/gms/internal/ads/fy0;

    const-class v3, Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v8, "e"

    .line 11
    :try_start_6
    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/fy0$g;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v8, v1

    move-object v14, v2

    move-object v2, v9

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/fy0$i;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/fy0$i;-><init>(Lcom/google/android/gms/internal/ads/fy0$a;)V

    move-object v8, v0

    move-object v14, v2

    move-object v2, v3

    .line 13
    :goto_0
    sput-object v2, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    if-eqz v8, :cond_0

    .line 14
    sget-object v9, Lcom/google/android/gms/internal/ads/fy0;->i:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v11, "com.google.common.util.concurrent.AbstractFuture"

    const-string v12, "<clinit>"

    const-string v13, "UnsafeAtomicHelper is broken!"

    invoke-virtual/range {v9 .. v14}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0;->i:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AbstractFuture"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fy0;->k:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/j01;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$e;)Lcom/google/android/gms/internal/ads/fy0$e;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy0;->f:Lcom/google/android/gms/internal/ads/fy0$e;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;)Lcom/google/android/gms/internal/ads/fy0$l;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/ads/fy0$l;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_5

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/fy0$l;->b:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    move-object v1, p1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/fy0$l;->b:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 7
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    if-nez p1, :cond_4

    goto :goto_0

    .line 8
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_4
    :goto_2
    move-object p1, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/fy0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fy0<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 42
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    sget-object v4, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v2, :cond_2

    .line 43
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 44
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/fy0$l;->a:Ljava/lang/Thread;

    .line 45
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 46
    :cond_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/fy0$l;->b:Lcom/google/android/gms/internal/ads/fy0$l;

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->b()V

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fy0;->f:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 49
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    sget-object v4, Lcom/google/android/gms/internal/ads/fy0$e;->d:Lcom/google/android/gms/internal/ads/fy0$e;

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$e;Lcom/google/android/gms/internal/ads/fy0$e;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move-object p0, v1

    move-object v1, v2

    if-eqz v1, :cond_4

    .line 50
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/fy0$e;->c:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 51
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/fy0$e;->c:Lcom/google/android/gms/internal/ads/fy0$e;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    .line 52
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fy0$e;->c:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fy0$e;->a:Ljava/lang/Runnable;

    .line 54
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/fy0$f;

    if-eqz v3, :cond_5

    .line 55
    check-cast v2, Lcom/google/android/gms/internal/ads/fy0$f;

    .line 56
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/fy0$f;->e:Lcom/google/android/gms/internal/ads/fy0;

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    if-ne v3, v2, :cond_6

    .line 58
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/fy0$f;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/fy0;->b(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    sget-object v4, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v4, p0, v2, v3}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 60
    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0$e;->b:Ljava/util/concurrent/Executor;

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_6
    :goto_3
    move-object p0, v1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "]"

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/fy0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_1
    const-string v0, "CANCELLED"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catch_2
    move-exception v1

    const-string v2, "FAILURE, cause=["

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/fy0;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 9
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/fy0$h;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 10
    check-cast p0, Lcom/google/android/gms/internal/ads/fy0;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 11
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/fy0$d;

    if-eqz v0, :cond_1

    .line 12
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/fy0$d;

    .line 13
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/fy0$d;->a:Z

    if-eqz v1, :cond_1

    .line 14
    iget-object p0, v0, Lcom/google/android/gms/internal/ads/fy0$d;->b:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/fy0$d;

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/ads/fy0$d;-><init>(ZLjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0

    .line 16
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/fy0$d;->d:Lcom/google/android/gms/internal/ads/fy0$d;

    :cond_1
    :goto_0
    return-object p0

    .line 17
    :cond_2
    instance-of v1, p0, Lcom/google/android/gms/internal/ads/j01;

    if-eqz v1, :cond_3

    .line 18
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/j01;

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/m01;->a(Lcom/google/android/gms/internal/ads/j01;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    new-instance p0, Lcom/google/android/gms/internal/ads/fy0$c;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 21
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    .line 22
    sget-boolean v3, Lcom/google/android/gms/internal/ads/fy0;->h:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 23
    sget-object p0, Lcom/google/android/gms/internal/ads/fy0$d;->d:Lcom/google/android/gms/internal/ads/fy0$d;

    return-object p0

    .line 24
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 25
    new-instance v3, Lcom/google/android/gms/internal/ads/fy0$d;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/fy0$d;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 26
    sget-object p0, Lcom/google/android/gms/internal/ads/fy0;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_6
    return-object v3

    :catchall_0
    move-exception p0

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/fy0$c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_0
    move-exception v0

    if-nez v1, :cond_7

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/fy0$c;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 29
    :cond_7
    new-instance p0, Lcom/google/android/gms/internal/ads/fy0$d;

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/ads/fy0$d;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 30
    new-instance v1, Lcom/google/android/gms/internal/ads/fy0$d;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/fy0$d;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    .line 31
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/fy0$c;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/fy0$d;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/fy0$c;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/fy0;->k:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p0, Lcom/google/android/gms/internal/ads/fy0$c;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0$c;->a:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_2
    check-cast p0, Lcom/google/android/gms/internal/ads/fy0$d;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0$d;->b:Ljava/lang/Throwable;

    .line 6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw v0
.end method

.method private static b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
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

    .line 32
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw p0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 35
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/fy0;->i:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x39

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "RuntimeException while executing runnable "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "com.google.common.util.concurrent.AbstractFuture"

    const-string v3, "executeListener"

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->b(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-ne p1, p0, :cond_0

    const-string p1, "this future"

    return-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/fy0;)V
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/fy0;)Lcom/google/android/gms/internal/ads/fy0$l;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    return-object p0
.end method

.method static synthetic e()Lcom/google/android/gms/internal/ads/fy0$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/fy0;)Lcom/google/android/gms/internal/ads/fy0$e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fy0;->f:Lcom/google/android/gms/internal/ads/fy0$e;

    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/fy0;->h:Z

    return v0
.end method


# virtual methods
.method protected final a()Ljava/lang/Throwable;
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 61
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/fy0$h;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 63
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/fy0$c;

    if-eqz v1, :cond_0

    .line 64
    check-cast v0, Lcom/google/android/gms/internal/ads/fy0$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fy0$c;->a:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    const-string v0, "Runnable was null."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    .line 10
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->f:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/fy0$e;->d:Lcom/google/android/gms/internal/ads/fy0$e;

    if-eq v0, v1, :cond_2

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/ads/fy0$e;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/fy0$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 15
    :cond_0
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/fy0$e;->c:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$e;Lcom/google/android/gms/internal/ads/fy0$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->f:Lcom/google/android/gms/internal/ads/fy0$e;

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/fy0$e;->d:Lcom/google/android/gms/internal/ads/fy0$e;

    if-ne v0, v2, :cond_0

    .line 19
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/qz0;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 28
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/fy0;->b(Lcom/google/android/gms/internal/ads/qz0;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;)V

    return v2

    :cond_0
    return v1

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/fy0$f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/fy0$f;-><init>(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/qz0;)V

    .line 33
    sget-object v4, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/xy0;->zzgqu:Lcom/google/android/gms/internal/ads/xy0;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/ads/fy0$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 36
    :catchall_1
    sget-object v1, Lcom/google/android/gms/internal/ads/fy0$c;->b:Lcom/google/android/gms/internal/ads/fy0$c;

    .line 37
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return v2

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 39
    :cond_3
    instance-of v2, v0, Lcom/google/android/gms/internal/ads/fy0$d;

    if-eqz v2, :cond_4

    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/fy0$d;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/fy0$d;->a:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    return v1
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/google/android/gms/internal/ads/fy0;->k:Ljava/lang/Object;

    .line 21
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Throwable;)Z
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/fy0$c;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uw0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/fy0$c;-><init>(Ljava/lang/Throwable;)V

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/fy0$f;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/fy0$f;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fy0$f;->f:Lcom/google/android/gms/internal/ads/qz0;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/fy0;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "setFuture=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/fy0$f;

    or-int/2addr v3, v4

    if-eqz v3, :cond_7

    .line 3
    sget-boolean v3, Lcom/google/android/gms/internal/ads/fy0;->h:Z

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Lcom/google/android/gms/internal/ads/fy0$d;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/internal/ads/fy0$d;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0$d;->c:Lcom/google/android/gms/internal/ads/fy0$d;

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0$d;->d:Lcom/google/android/gms/internal/ads/fy0$d;

    :goto_1
    const/4 v5, 0x0

    move-object v4, v0

    move-object v0, p0

    .line 7
    :cond_3
    :goto_2
    sget-object v6, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v6, v0, v4, v3}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0;)V

    .line 9
    instance-of v0, v4, Lcom/google/android/gms/internal/ads/fy0$f;

    if-eqz v0, :cond_8

    .line 10
    check-cast v4, Lcom/google/android/gms/internal/ads/fy0$f;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/fy0$f;->f:Lcom/google/android/gms/internal/ads/qz0;

    .line 11
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/fy0$h;

    if-eqz v4, :cond_5

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/fy0;

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    if-nez v4, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 14
    :goto_3
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/fy0$f;

    or-int/2addr v5, v6

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    .line 15
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 16
    :cond_6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 17
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/fy0$f;

    if-nez v6, :cond_3

    move v1, v5

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    return v1
.end method

.method protected final d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/fy0$d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/fy0$d;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/fy0$d;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 6
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 47
    :goto_0
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/fy0$f;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 50
    sget-object v3, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    if-eq v0, v3, :cond_7

    .line 51
    new-instance v3, Lcom/google/android/gms/internal/ads/fy0$l;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/fy0$l;-><init>()V

    .line 52
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/fy0$l;->a(Lcom/google/android/gms/internal/ads/fy0$l;)V

    .line 53
    sget-object v4, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)Z

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    :goto_1
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/fy0$f;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0$l;)V

    .line 60
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 61
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 62
    sget-object v4, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    if-ne v0, v4, :cond_2

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 4
    :goto_0
    instance-of v10, v6, Lcom/google/android/gms/internal/ads/fy0$f;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 8
    sget-object v15, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    if-eq v6, v15, :cond_9

    .line 9
    new-instance v15, Lcom/google/android/gms/internal/ads/fy0$l;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/fy0$l;-><init>()V

    .line 10
    :cond_3
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/fy0$l;->a(Lcom/google/android/gms/internal/ads/fy0$l;)V

    .line 11
    sget-object v7, Lcom/google/android/gms/internal/ads/fy0;->j:Lcom/google/android/gms/internal/ads/fy0$b;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/android/gms/internal/ads/fy0$b;->a(Lcom/google/android/gms/internal/ads/fy0;Lcom/google/android/gms/internal/ads/fy0$l;Lcom/google/android/gms/internal/ads/fy0$l;)Z

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
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 15
    :goto_2
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/fy0$f;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0$l;)V

    goto :goto_3

    .line 19
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/fy0;->a(Lcom/google/android/gms/internal/ads/fy0$l;)V

    .line 20
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 21
    :cond_8
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/fy0;->g:Lcom/google/android/gms/internal/ads/fy0$l;

    .line 22
    sget-object v7, Lcom/google/android/gms/internal/ads/fy0$l;->c:Lcom/google/android/gms/internal/ads/fy0$l;

    if-ne v6, v7, :cond_3

    .line 23
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    .line 24
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 25
    :goto_4
    instance-of v6, v4, Lcom/google/android/gms/internal/ads/fy0$f;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 26
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/fy0;->b(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fy0;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_14

    .line 33
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 37
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    :cond_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 42
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/fy0$d;

    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy0;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    instance-of v0, v0, Lcom/google/android/gms/internal/ads/fy0$f;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->isCancelled()Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_0

    const-string v1, "CANCELLED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/fy0;->a(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->c()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Exception thrown from implementation: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fy0;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/fy0;->a(Ljava/lang/StringBuilder;)V

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
