.class final Lg/c/a/f/g/b$a;
.super Lg/c/a/b/g$b;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/c/a/f/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final e:Lg/c/a/f/a/c;

.field private final f:Lg/c/a/c/a;

.field private final g:Lg/c/a/f/a/c;

.field private final h:Lg/c/a/f/g/b$c;

.field volatile i:Z


# direct methods
.method constructor <init>(Lg/c/a/f/g/b$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/c/a/b/g$b;-><init>()V

    .line 2
    iput-object p1, p0, Lg/c/a/f/g/b$a;->h:Lg/c/a/f/g/b$c;

    .line 3
    new-instance p1, Lg/c/a/f/a/c;

    invoke-direct {p1}, Lg/c/a/f/a/c;-><init>()V

    iput-object p1, p0, Lg/c/a/f/g/b$a;->e:Lg/c/a/f/a/c;

    .line 4
    new-instance p1, Lg/c/a/c/a;

    invoke-direct {p1}, Lg/c/a/c/a;-><init>()V

    iput-object p1, p0, Lg/c/a/f/g/b$a;->f:Lg/c/a/c/a;

    .line 5
    new-instance p1, Lg/c/a/f/a/c;

    invoke-direct {p1}, Lg/c/a/f/a/c;-><init>()V

    iput-object p1, p0, Lg/c/a/f/g/b$a;->g:Lg/c/a/f/a/c;

    .line 6
    iget-object p1, p0, Lg/c/a/f/g/b$a;->g:Lg/c/a/f/a/c;

    iget-object v0, p0, Lg/c/a/f/g/b$a;->e:Lg/c/a/f/a/c;

    invoke-virtual {p1, v0}, Lg/c/a/f/a/c;->b(Lg/c/a/c/c;)Z

    .line 7
    iget-object p1, p0, Lg/c/a/f/g/b$a;->g:Lg/c/a/f/a/c;

    iget-object v0, p0, Lg/c/a/f/g/b$a;->f:Lg/c/a/c/a;

    invoke-virtual {p1, v0}, Lg/c/a/f/a/c;->b(Lg/c/a/c/c;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Lg/c/a/c/c;
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/g/b$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lg/c/a/f/g/b$a;->h:Lg/c/a/f/g/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lg/c/a/f/g/b$a;->e:Lg/c/a/f/a/c;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/c/a/f/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lg/c/a/c/d;)Lg/c/a/f/g/i;

    move-result-object p1

    return-object p1
.end method

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

    .line 4
    iget-boolean v0, p0, Lg/c/a/f/g/b$a;->i:Z

    if-eqz v0, :cond_0

    .line 5
    sget-object p1, Lg/c/a/f/a/b;->INSTANCE:Lg/c/a/f/a/b;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lg/c/a/f/g/b$a;->h:Lg/c/a/f/g/b$c;

    iget-object v5, p0, Lg/c/a/f/g/b$a;->f:Lg/c/a/c/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lg/c/a/f/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lg/c/a/c/d;)Lg/c/a/f/g/i;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/c/a/f/g/b$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg/c/a/f/g/b$a;->i:Z

    .line 3
    iget-object v0, p0, Lg/c/a/f/g/b$a;->g:Lg/c/a/f/a/c;

    invoke-virtual {v0}, Lg/c/a/f/a/c;->dispose()V

    :cond_0
    return-void
.end method
