.class public abstract Lkotlinx/coroutines/a;
.super Lkotlinx/coroutines/n1;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/g1;
.implements Lkotlin/coroutines/c;
.implements Lkotlinx/coroutines/e0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/n1;",
        "Lkotlinx/coroutines/g1;",
        "Lkotlin/coroutines/c<",
        "TT;>;",
        "Lkotlinx/coroutines/e0;"
    }
.end annotation

.annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
.end annotation


# instance fields
.field private final f:Lkotlin/coroutines/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected final g:Lkotlin/coroutines/f;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Z)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/n1;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/a;->g:Lkotlin/coroutines/f;

    .line 2
    iget-object p1, p0, Lkotlinx/coroutines/a;->g:Lkotlin/coroutines/f;

    invoke-interface {p1, p0}, Lkotlin/coroutines/f;->plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/f;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/f;

    return-object v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/r;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lkotlinx/coroutines/r;

    iget-object v0, p1, Lkotlinx/coroutines/r;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lkotlinx/coroutines/r;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/a;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/a;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "cause"

    invoke-static {p1, p2}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/h0;Ljava/lang/Object;Lkotlin/jvm/c/c;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/h0;",
            "TR;",
            "Lkotlin/jvm/c/c<",
            "-TR;-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->n()V

    .line 6
    invoke-virtual {p1, p3, p2, p0}, Lkotlinx/coroutines/h0;->invoke(Lkotlin/jvm/c/c;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/f;

    invoke-static {v0, p1}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/f;

    invoke-static {v0}, Lkotlinx/coroutines/y;->a(Lkotlin/coroutines/f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lkotlinx/coroutines/n1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lkotlinx/coroutines/n1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->f:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public final h()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->o()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/n1;->i()Z

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/a;->g:Lkotlin/coroutines/f;

    sget-object v1, Lkotlinx/coroutines/g1;->d:Lkotlinx/coroutines/g1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/g1;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/g1;)V

    return-void
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/a;->m()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/n1;->b(Ljava/lang/Object;I)Z

    return-void
.end method
