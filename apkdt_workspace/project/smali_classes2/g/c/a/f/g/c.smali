.class public final Lg/c/a/f/g/c;
.super Lg/c/a/b/g;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/g/c$c;,
        Lg/c/a/f/g/c$b;,
        Lg/c/a/f/g/c$a;
    }
.end annotation


# static fields
.field static final c:Lg/c/a/f/g/g;

.field static final d:Lg/c/a/f/g/g;

.field private static final e:J

.field private static final f:Ljava/util/concurrent/TimeUnit;

.field static final g:Lg/c/a/f/g/c$c;

.field static final h:Lg/c/a/f/g/c$a;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lg/c/a/f/g/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lg/c/a/f/g/c;->f:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx3.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    .line 2
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lg/c/a/f/g/c;->e:J

    .line 3
    new-instance v0, Lg/c/a/f/g/c$c;

    new-instance v1, Lg/c/a/f/g/g;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg/c/a/f/g/c$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg/c/a/f/g/c;->g:Lg/c/a/f/g/c$c;

    .line 4
    sget-object v0, Lg/c/a/f/g/c;->g:Lg/c/a/f/g/c$c;

    invoke-virtual {v0}, Lg/c/a/f/g/e;->dispose()V

    const-string v0, "rx3.io-priority"

    const/4 v1, 0x5

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    new-instance v1, Lg/c/a/f/g/g;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/c/a/f/g/c;->c:Lg/c/a/f/g/g;

    .line 8
    new-instance v1, Lg/c/a/f/g/g;

    const-string v2, "RxCachedWorkerPoolEvictor"

    invoke-direct {v1, v2, v0}, Lg/c/a/f/g/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg/c/a/f/g/c;->d:Lg/c/a/f/g/g;

    .line 9
    new-instance v0, Lg/c/a/f/g/c$a;

    sget-object v1, Lg/c/a/f/g/c;->c:Lg/c/a/f/g/g;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lg/c/a/f/g/c$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg/c/a/f/g/c;->h:Lg/c/a/f/g/c$a;

    .line 10
    sget-object v0, Lg/c/a/f/g/c;->h:Lg/c/a/f/g/c$a;

    invoke-virtual {v0}, Lg/c/a/f/g/c$a;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/g/c;->c:Lg/c/a/f/g/g;

    invoke-direct {p0, v0}, Lg/c/a/f/g/c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lg/c/a/b/g;-><init>()V

    .line 3
    iput-object p1, p0, Lg/c/a/f/g/c;->a:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lg/c/a/f/g/c;->h:Lg/c/a/f/g/c$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lg/c/a/f/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lg/c/a/f/g/c;->b()V

    return-void
.end method


# virtual methods
.method public a()Lg/c/a/b/g$b;
    .locals 2
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lg/c/a/f/g/c$b;

    iget-object v1, p0, Lg/c/a/f/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/c/a/f/g/c$a;

    invoke-direct {v0, v1}, Lg/c/a/f/g/c$b;-><init>(Lg/c/a/f/g/c$a;)V

    return-object v0
.end method

.method public b()V
    .locals 5

    .line 1
    new-instance v0, Lg/c/a/f/g/c$a;

    sget-wide v1, Lg/c/a/f/g/c;->e:J

    sget-object v3, Lg/c/a/f/g/c;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lg/c/a/f/g/c;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lg/c/a/f/g/c$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lg/c/a/f/g/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lg/c/a/f/g/c;->h:Lg/c/a/f/g/c$a;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lg/c/a/f/g/c$a;->b()V

    :cond_0
    return-void
.end method
