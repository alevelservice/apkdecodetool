.class public final Lkotlinx/coroutines/p0;
.super Lkotlinx/coroutines/r0;
.source "Dispatched.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/e;
.implements Lkotlin/coroutines/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/r0<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/e;",
        "Lkotlin/coroutines/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final i:Lkotlin/coroutines/jvm/internal/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlinx/coroutines/z;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/z;Lkotlin/coroutines/c;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/z;",
            "Lkotlin/coroutines/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/r0;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    iput-object p2, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    instance-of p2, p1, Lkotlin/coroutines/jvm/internal/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlin/coroutines/jvm/internal/e;

    iput-object p1, p0, Lkotlinx/coroutines/p0;->i:Lkotlin/coroutines/jvm/internal/e;

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Lkotlin/coroutines/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lkotlinx/coroutines/q0;->a()Lkotlinx/coroutines/internal/t;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/p0;->i:Lkotlin/coroutines/jvm/internal/e;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    invoke-interface {v0}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lkotlinx/coroutines/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/z;->b(Lkotlin/coroutines/f;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 5
    iput v3, p0, Lkotlinx/coroutines/r0;->g:I

    .line 6
    iget-object p1, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/z;->a(Lkotlin/coroutines/f;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Lkotlinx/coroutines/a2;->b:Lkotlinx/coroutines/a2;

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->a()Lkotlinx/coroutines/w0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object v1, p0, Lkotlinx/coroutines/p0;->h:Ljava/lang/Object;

    .line 10
    iput v3, p0, Lkotlinx/coroutines/r0;->g:I

    .line 11
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/w0;->a(Lkotlinx/coroutines/r0;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->b(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/p0;->getContext()Lkotlin/coroutines/f;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/p0;->j:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->b(Lkotlin/coroutines/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v4, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    invoke-interface {v4, p1}, Lkotlin/coroutines/c;->resumeWith(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lkotlin/t;->a:Lkotlin/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/w0;->r()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/x;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    .line 20
    :try_start_3
    invoke-virtual {p0, p1, v2}, Lkotlinx/coroutines/r0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/w0;->a(Z)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/p0;->k:Lkotlinx/coroutines/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/p0;->l:Lkotlin/coroutines/c;

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
