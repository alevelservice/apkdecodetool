.class final Lg/c/a/b/g$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lg/c/a/c/c;
.implements Ljava/lang/Runnable;
.implements Lg/c/a/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final e:Ljava/lang/Runnable;
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation
.end field

.field final f:Lg/c/a/b/g$b;
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation
.end field

.field g:Ljava/lang/Thread;
    .annotation build Lio/reactivex/rxjava3/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lg/c/a/b/g$b;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/c/a/b/g$b;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/b/g$a;->e:Ljava/lang/Runnable;

    .line 3
    iput-object p2, p0, Lg/c/a/b/g$a;->f:Lg/c/a/b/g$b;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/c/a/b/g$a;->g:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/c/a/b/g$a;->f:Lg/c/a/b/g$b;

    instance-of v1, v0, Lg/c/a/f/g/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lg/c/a/f/g/e;

    invoke-virtual {v0}, Lg/c/a/f/g/e;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/c/a/b/g$a;->f:Lg/c/a/b/g$b;

    invoke-interface {v0}, Lg/c/a/c/c;->dispose()V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lg/c/a/b/g$a;->g:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/c/a/b/g$a;->e:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lg/c/a/b/g$a;->dispose()V

    .line 4
    iput-object v0, p0, Lg/c/a/b/g$a;->g:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {p0}, Lg/c/a/b/g$a;->dispose()V

    .line 6
    iput-object v0, p0, Lg/c/a/b/g$a;->g:Ljava/lang/Thread;

    .line 7
    throw v1
.end method
