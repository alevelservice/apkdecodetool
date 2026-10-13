.class final synthetic Lkotlinx/coroutines/e;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;)Lkotlinx/coroutines/m0;
    .locals 1
    .param p0    # Lkotlinx/coroutines/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/e0;",
            "Lkotlin/coroutines/f;",
            "Lkotlinx/coroutines/h0;",
            "Lkotlin/jvm/c/c<",
            "-",
            "Lkotlinx/coroutines/e0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/m0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$async"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/y;->a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lkotlinx/coroutines/h0;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lkotlinx/coroutines/p1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/p1;-><init>(Lkotlin/coroutines/f;Lkotlin/jvm/c/c;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lkotlinx/coroutines/n0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/n0;-><init>(Lkotlin/coroutines/f;Z)V

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->a(Lkotlinx/coroutines/h0;Ljava/lang/Object;Lkotlin/jvm/c/c;)V

    return-object p1
.end method

.method public static synthetic a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;ILjava/lang/Object;)Lkotlinx/coroutines/m0;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/g;->INSTANCE:Lkotlin/coroutines/g;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/h0;->DEFAULT:Lkotlinx/coroutines/h0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/d;->a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;)Lkotlinx/coroutines/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;)Lkotlinx/coroutines/g1;
    .locals 1
    .param p0    # Lkotlinx/coroutines/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/e0;",
            "Lkotlin/coroutines/f;",
            "Lkotlinx/coroutines/h0;",
            "Lkotlin/jvm/c/c<",
            "-",
            "Lkotlinx/coroutines/e0;",
            "-",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$launch"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "start"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/y;->a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lkotlinx/coroutines/h0;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lkotlinx/coroutines/q1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/q1;-><init>(Lkotlin/coroutines/f;Lkotlin/jvm/c/c;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lkotlinx/coroutines/y1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/y1;-><init>(Lkotlin/coroutines/f;Z)V

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lkotlinx/coroutines/a;->a(Lkotlinx/coroutines/h0;Ljava/lang/Object;Lkotlin/jvm/c/c;)V

    return-object p1
.end method

.method public static synthetic b(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;ILjava/lang/Object;)Lkotlinx/coroutines/g1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Lkotlin/coroutines/g;->INSTANCE:Lkotlin/coroutines/g;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lkotlinx/coroutines/h0;->DEFAULT:Lkotlinx/coroutines/h0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/d;->b(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;)Lkotlinx/coroutines/g1;

    move-result-object p0

    return-object p0
.end method
