.class public abstract Lkotlin/coroutines/jvm/internal/d;
.super Lkotlin/coroutines/jvm/internal/a;
.source "ContinuationImpl.kt"


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final _context:Lkotlin/coroutines/f;

.field private transient e:Lkotlin/coroutines/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/coroutines/c;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/f;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/c;Lkotlin/coroutines/f;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Lkotlin/coroutines/c;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lkotlin/coroutines/f;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Lkotlin/coroutines/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final intercepted()Lkotlin/coroutines/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->e:Lkotlin/coroutines/c;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/d;->b:Lkotlin/coroutines/d$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lkotlin/coroutines/d;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 3
    :goto_0
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->e:Lkotlin/coroutines/c;

    :goto_1
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->e:Lkotlin/coroutines/c;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Lkotlin/coroutines/f;

    move-result-object v1

    sget-object v2, Lkotlin/coroutines/d;->b:Lkotlin/coroutines/d$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lkotlin/coroutines/d;

    invoke-interface {v1, v0}, Lkotlin/coroutines/d;->b(Lkotlin/coroutines/c;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/coroutines/jvm/internal/c;->e:Lkotlin/coroutines/jvm/internal/c;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->e:Lkotlin/coroutines/c;

    return-void
.end method
