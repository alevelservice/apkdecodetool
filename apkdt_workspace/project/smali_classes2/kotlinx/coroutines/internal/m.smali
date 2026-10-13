.class public final Lkotlinx/coroutines/internal/m;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/m$b;,
        Lkotlinx/coroutines/internal/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0000\u0018\u0000 5*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u000256B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J3\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000e2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\t\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J-\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u001b\"\u0004\u0008\u0001\u0010\u00182\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0019\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0013\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\"\u0010#J&\u0010%\u001a\u0004\u0018\u00010\u00012\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0019H\u0086\u0008\u00a2\u0006\u0004\u0008%\u0010&J3\u0010)\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000e2\u0006\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008)\u0010*R\u001e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010.R\u0013\u0010/\u001a\u00020\u00058F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u0013R\u0016\u00100\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010.R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u00101R\u0013\u00104\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\u00a8\u00067"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "",
        "E",
        "",
        "capacity",
        "",
        "singleConsumer",
        "<init>",
        "(IZ)V",
        "element",
        "addLast",
        "(Ljava/lang/Object;)I",
        "",
        "state",
        "Lkotlinx/coroutines/internal/Core;",
        "allocateNextCopy",
        "(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "allocateOrGetNextCopy",
        "close",
        "()Z",
        "index",
        "fillPlaceholder",
        "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "isClosed",
        "R",
        "Lkotlin/Function1;",
        "transform",
        "",
        "map",
        "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;",
        "markFrozen",
        "()J",
        "next",
        "()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "predicate",
        "removeFirstOrNullIf",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "oldHead",
        "newHead",
        "removeSlowPath",
        "(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "array",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "I",
        "isEmpty",
        "mask",
        "Z",
        "getSize",
        "()I",
        "size",
        "Companion",
        "Placeholder",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Lkotlinx/coroutines/internal/t;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lkotlinx/coroutines/internal/m$a;


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field public volatile synthetic _state$internal:J

.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/m;

    new-instance v1, Lkotlinx/coroutines/internal/m$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/m$a;-><init>(Lkotlin/jvm/d/e;)V

    sput-object v1, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    .line 1
    new-instance v1, Lkotlinx/coroutines/internal/t;

    const-string v2, "REMOVE_FROZEN"

    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkotlinx/coroutines/internal/m;->g:Lkotlinx/coroutines/internal/t;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/internal/m;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state$internal"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/m;->c:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/m;->d:Z

    .line 2
    iget p1, p0, Lkotlinx/coroutines/internal/m;->c:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/m;->a:I

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lkotlinx/coroutines/internal/m;->_next:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    .line 5
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    iget p1, p0, Lkotlinx/coroutines/internal/m;->a:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "Check failed."

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Lkotlinx/coroutines/internal/m;->c:I

    iget v2, p0, Lkotlinx/coroutines/internal/m;->a:I

    and-int/2addr p1, v2

    if-nez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/internal/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method private final a(II)Lkotlinx/coroutines/internal/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/internal/m<",
            "TE;>;"
        }
    .end annotation

    .line 21
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v6, v0

    if-ne v6, p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_3

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_2

    .line 22
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/m;->d()Lkotlinx/coroutines/internal/m;

    move-result-object p1

    return-object p1

    .line 23
    :cond_2
    sget-object v0, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    invoke-virtual {v1, v2, v3, p2}, Lkotlinx/coroutines/internal/m$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object p1, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p2, p0, Lkotlinx/coroutines/internal/m;->a:I

    and-int/2addr p2, v6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v0

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This queue can have only one consumer"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method private final a(ILjava/lang/Object;)Lkotlinx/coroutines/internal/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lkotlinx/coroutines/internal/m<",
            "TE;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/m;->a:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lkotlinx/coroutines/internal/m$b;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/m$b;

    iget v0, v0, Lkotlinx/coroutines/internal/m$b;->a:I

    if-ne v0, p1, :cond_0

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkotlinx/coroutines/internal/m;->a:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(J)Lkotlinx/coroutines/internal/m;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/m<",
            "TE;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lkotlinx/coroutines/internal/m;

    iget v1, p0, Lkotlinx/coroutines/internal/m;->c:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lkotlinx/coroutines/internal/m;->d:Z

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/internal/m;-><init>(IZ)V

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v2, v1

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v3, p1

    const/16 v1, 0x1e

    shr-long/2addr v3, v1

    long-to-int v1, v3

    .line 7
    :goto_0
    iget v3, p0, Lkotlinx/coroutines/internal/m;->a:I

    and-int v4, v2, v3

    and-int v5, v1, v3

    if-eq v4, v5, :cond_1

    .line 8
    iget-object v4, v0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, v0, Lkotlinx/coroutines/internal/m;->a:I

    and-int/2addr v5, v2

    iget-object v6, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lkotlinx/coroutines/internal/m$b;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/internal/m$b;-><init>(I)V

    :goto_1
    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v1, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    const-wide/high16 v2, 0x1000000000000000L

    invoke-virtual {v1, p1, p2, v2, v3}, Lkotlinx/coroutines/internal/m$a;->a(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    return-object v0
.end method

.method public static final synthetic a(Lkotlinx/coroutines/internal/m;II)Lkotlinx/coroutines/internal/m;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/m;->a(II)Lkotlinx/coroutines/internal/m;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/internal/m;)I
    .locals 0

    .line 1
    iget p0, p0, Lkotlinx/coroutines/internal/m;->a:I

    return p0
.end method

.method private final b(J)Lkotlinx/coroutines/internal/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/m<",
            "TE;>;"
        }
    .end annotation

    .line 3
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/m;->_next:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/m;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/m;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/m;->a(J)Lkotlinx/coroutines/internal/m;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/internal/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lkotlinx/coroutines/internal/m;->d:Z

    return p0
.end method

.method private final f()J
    .locals 9

    .line 1
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    return-wide v2

    :cond_1
    or-long v6, v2, v0

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v6
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-wide v3, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/high16 v0, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 13
    sget-object p1, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    invoke-virtual {p1, v3, v4}, Lkotlinx/coroutines/internal/m$a;->a(J)I

    move-result p1

    return p1

    :cond_1
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v3

    const/4 v9, 0x0

    shr-long/2addr v0, v9

    long-to-int v1, v0

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v0, 0x1e

    shr-long/2addr v5, v0

    long-to-int v0, v5

    .line 14
    iget v10, p0, Lkotlinx/coroutines/internal/m;->a:I

    add-int/lit8 v2, v0, 0x2

    and-int/2addr v2, v10

    and-int v5, v1, v10

    const/4 v6, 0x1

    if-ne v2, v5, :cond_2

    return v6

    .line 15
    :cond_2
    iget-boolean v2, p0, Lkotlinx/coroutines/internal/m;->d:Z

    const v5, 0x3fffffff    # 1.9999999f

    if-nez v2, :cond_4

    iget-object v2, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v11, v0, v10

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 16
    iget v2, p0, Lkotlinx/coroutines/internal/m;->c:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    sub-int/2addr v0, v1

    and-int/2addr v0, v5

    shr-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    :cond_3
    return v6

    :cond_4
    add-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v5

    .line 17
    sget-object v2, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v5, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    invoke-virtual {v5, v3, v4, v1}, Lkotlinx/coroutines/internal/m$a;->b(JI)J

    move-result-wide v5

    move-object v1, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    iget-object v1, p0, Lkotlinx/coroutines/internal/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v2, v0, v10

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, p0

    .line 19
    :goto_0
    iget-wide v2, v1, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v2, v4

    cmp-long v4, v2, v7

    if-nez v4, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/m;->d()Lkotlinx/coroutines/internal/m;

    move-result-object v1

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/internal/m;->a(ILjava/lang/Object;)Lkotlinx/coroutines/internal/m;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    return v9
.end method

.method public final a()Z
    .locals 10

    .line 10
    :cond_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_1

    return v6

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v9, v4, v7

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long v4, v2, v0

    .line 11
    sget-object v0, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6
.end method

.method public final b()I
    .locals 6

    .line 2
    iget-wide v0, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v4, 0xfffffffc0000000L

    and-long/2addr v0, v4

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    sub-int/2addr v1, v3

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final c()Z
    .locals 7

    .line 2
    iget-wide v0, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v3, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v2, 0x1e

    shr-long/2addr v0, v2

    long-to-int v1, v0

    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final d()Lkotlinx/coroutines/internal/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/m<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/m;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/m;->b(J)Lkotlinx/coroutines/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/internal/m;->_state$internal:J

    const-wide/high16 v0, 0x1000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v0, v4

    if-eqz v7, :cond_1

    .line 2
    sget-object v6, Lkotlinx/coroutines/internal/m;->g:Lkotlinx/coroutines/internal/t;

    goto/16 :goto_3

    :cond_1
    const-wide/32 v0, 0x3fffffff

    and-long/2addr v0, v2

    const/4 v4, 0x0

    shr-long/2addr v0, v4

    long-to-int v7, v0

    const-wide v0, 0xfffffffc0000000L

    and-long/2addr v0, v2

    const/16 v4, 0x1e

    shr-long/2addr v0, v4

    long-to-int v1, v0

    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->b(Lkotlinx/coroutines/internal/m;)I

    move-result v0

    and-int/2addr v0, v1

    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->b(Lkotlinx/coroutines/internal/m;)I

    move-result v1

    and-int/2addr v1, v7

    if-ne v0, v1, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->a(Lkotlinx/coroutines/internal/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->b(Lkotlinx/coroutines/internal/m;)I

    move-result v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 5
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->c(Lkotlinx/coroutines/internal/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6
    :cond_3
    instance-of v0, v8, Lkotlinx/coroutines/internal/m$b;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v7, 0x1

    const v1, 0x3fffffff    # 1.9999999f

    and-int v9, v0, v1

    .line 7
    sget-object v0, Lkotlinx/coroutines/internal/m;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v1, Lkotlinx/coroutines/internal/m;->h:Lkotlinx/coroutines/internal/m$a;

    invoke-virtual {v1, v2, v3, v9}, Lkotlinx/coroutines/internal/m$a;->a(JI)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->a(Lkotlinx/coroutines/internal/m;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->b(Lkotlinx/coroutines/internal/m;)I

    move-result v1

    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {p0}, Lkotlinx/coroutines/internal/m;->c(Lkotlinx/coroutines/internal/m;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, p0

    .line 10
    :goto_1
    invoke-static {v0, v7, v9}, Lkotlinx/coroutines/internal/m;->a(Lkotlinx/coroutines/internal/m;II)Lkotlinx/coroutines/internal/m;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    :goto_2
    move-object v6, v8

    :goto_3
    return-object v6
.end method
