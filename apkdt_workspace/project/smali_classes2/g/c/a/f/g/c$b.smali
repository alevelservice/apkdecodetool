.class final Lg/c/a/f/g/c$b;
.super Lg/c/a/b/g$b;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final e:Lg/c/a/c/a;

.field private final f:Lg/c/a/f/g/c$a;

.field private final g:Lg/c/a/f/g/c$c;

.field final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lg/c/a/f/g/c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g$b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lg/c/a/f/g/c$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lg/c/a/f/g/c$b;->f:Lg/c/a/f/g/c$a;

    .line 4
    new-instance v0, Lg/c/a/c/a;

    invoke-direct {v0}, Lg/c/a/c/a;-><init>()V

    iput-object v0, p0, Lg/c/a/f/g/c$b;->e:Lg/c/a/c/a;

    .line 5
    invoke-virtual {p1}, Lg/c/a/f/g/c$a;->a()Lg/c/a/f/g/c$c;

    move-result-object p1

    iput-object p1, p0, Lg/c/a/f/g/c$b;->g:Lg/c/a/f/g/c$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lg/c/a/c/c;
    .locals 6
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

    .line 1
    iget-object v0, p0, Lg/c/a/f/g/c$b;->e:Lg/c/a/c/a;

    invoke-virtual {v0}, Lg/c/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lg/c/a/f/g/c$b;->g:Lg/c/a/f/g/c$c;

    iget-object v5, p0, Lg/c/a/f/g/c$b;->e:Lg/c/a/c/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lg/c/a/f/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lg/c/a/c/d;)Lg/c/a/f/g/i;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/c/a/f/g/c$b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/c/a/f/g/c$b;->e:Lg/c/a/c/a;

    invoke-virtual {v0}, Lg/c/a/c/a;->dispose()V

    .line 3
    iget-object v0, p0, Lg/c/a/f/g/c$b;->f:Lg/c/a/f/g/c$a;

    iget-object v1, p0, Lg/c/a/f/g/c$b;->g:Lg/c/a/f/g/c$c;

    invoke-virtual {v0, v1}, Lg/c/a/f/g/c$a;->a(Lg/c/a/f/g/c$c;)V

    :cond_0
    return-void
.end method
