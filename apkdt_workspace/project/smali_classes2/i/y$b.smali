.class final Li/y$b;
.super Li/g0/b;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final f:Li/f;

.field final synthetic g:Li/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/y;

    return-void
.end method

.method constructor <init>(Li/y;Li/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li/y$b;->g:Li/y;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Li/y;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Li/g0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Li/y$b;->f:Li/f;

    return-void
.end method


# virtual methods
.method a(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    iget-object p1, p0, Li/y$b;->g:Li/y;

    invoke-static {p1}, Li/y;->a(Li/y;)Li/p;

    move-result-object p1

    iget-object v1, p0, Li/y$b;->g:Li/y;

    invoke-virtual {p1, v1, v0}, Li/p;->a(Li/e;Ljava/io/IOException;)V

    .line 5
    iget-object p1, p0, Li/y$b;->f:Li/f;

    iget-object v1, p0, Li/y$b;->g:Li/y;

    invoke-interface {p1, v1, v0}, Li/f;->a(Li/e;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    iget-object p1, p0, Li/y$b;->g:Li/y;

    iget-object p1, p1, Li/y;->e:Li/w;

    invoke-virtual {p1}, Li/w;->h()Li/n;

    move-result-object p1

    invoke-virtual {p1, p0}, Li/n;->b(Li/y$b;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Li/y$b;->g:Li/y;

    iget-object v0, v0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->h()Li/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/n;->b(Li/y$b;)V

    throw p1
.end method

.method protected b()V
    .locals 5

    .line 1
    iget-object v0, p0, Li/y$b;->g:Li/y;

    iget-object v0, v0, Li/y;->g:Lj/a;

    invoke-virtual {v0}, Lj/a;->g()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Li/y$b;->g:Li/y;

    invoke-virtual {v1}, Li/y;->a()Li/b0;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 3
    :try_start_1
    iget-object v2, p0, Li/y$b;->f:Li/f;

    iget-object v3, p0, Li/y$b;->g:Li/y;

    invoke-interface {v2, v3, v0}, Li/f;->a(Li/e;Li/b0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Li/y$b;->g:Li/y;

    iget-object v0, v0, Li/y;->e:Li/w;

    invoke-virtual {v0}, Li/w;->h()Li/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/n;->b(Li/y$b;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v0, v1

    const/4 v1, 0x0

    .line 5
    :goto_1
    :try_start_2
    iget-object v2, p0, Li/y$b;->g:Li/y;

    invoke-virtual {v2, v0}, Li/y;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 6
    invoke-static {}, Lokhttp3/internal/platform/e;->c()Lokhttp3/internal/platform/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Li/y$b;->g:Li/y;

    invoke-virtual {v4}, Li/y;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Li/y$b;->g:Li/y;

    invoke-static {v1}, Li/y;->a(Li/y;)Li/p;

    move-result-object v1

    iget-object v2, p0, Li/y$b;->g:Li/y;

    invoke-virtual {v1, v2, v0}, Li/p;->a(Li/e;Ljava/io/IOException;)V

    .line 8
    iget-object v1, p0, Li/y$b;->f:Li/f;

    iget-object v2, p0, Li/y$b;->g:Li/y;

    invoke-interface {v1, v2, v0}, Li/f;->a(Li/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 9
    :goto_3
    iget-object v1, p0, Li/y$b;->g:Li/y;

    iget-object v1, v1, Li/y;->e:Li/w;

    invoke-virtual {v1}, Li/w;->h()Li/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Li/n;->b(Li/y$b;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method c()Li/y;
    .locals 1

    .line 1
    iget-object v0, p0, Li/y$b;->g:Li/y;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/y$b;->g:Li/y;

    iget-object v0, v0, Li/y;->i:Li/z;

    invoke-virtual {v0}, Li/z;->g()Li/s;

    move-result-object v0

    invoke-virtual {v0}, Li/s;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
