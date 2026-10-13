.class public abstract Lg/c/a/b/g;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/b/g$a;,
        Lg/c/a/b/g$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx3.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 2
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lg/c/a/b/g$b;
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation
.end method

.method public a(Ljava/lang/Runnable;)Lg/c/a/c/c;
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lg/c/a/b/g;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lg/c/a/b/g;->a()Lg/c/a/b/g$b;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    new-instance v1, Lg/c/a/b/g$a;

    invoke-direct {v1, p1, v0}, Lg/c/a/b/g$a;-><init>(Ljava/lang/Runnable;Lg/c/a/b/g$b;)V

    .line 5
    invoke-virtual {v0, v1, p2, p3, p4}, Lg/c/a/b/g$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;

    return-object v1
.end method
