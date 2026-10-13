.class public final Lg/c/a/f/g/m;
.super Lg/c/a/b/g;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/c/a/f/g/m$a;,
        Lg/c/a/f/g/m$b;,
        Lg/c/a/f/g/m$c;
    }
.end annotation


# static fields
.field private static final a:Lg/c/a/f/g/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/c/a/f/g/m;

    invoke-direct {v0}, Lg/c/a/f/g/m;-><init>()V

    sput-object v0, Lg/c/a/f/g/m;->a:Lg/c/a/f/g/m;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g;-><init>()V

    return-void
.end method

.method public static b()Lg/c/a/f/g/m;
    .locals 1

    .line 1
    sget-object v0, Lg/c/a/f/g/m;->a:Lg/c/a/f/g/m;

    return-object v0
.end method


# virtual methods
.method public a()Lg/c/a/b/g$b;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lg/c/a/f/g/m$c;

    invoke-direct {v0}, Lg/c/a/f/g/m$c;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Lg/c/a/c/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 4
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 5
    invoke-static {p1}, Lg/c/a/h/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 7
    invoke-static {p1}, Lg/c/a/h/a;->b(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1
.end method
