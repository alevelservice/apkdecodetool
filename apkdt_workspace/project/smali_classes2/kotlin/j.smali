.class Lkotlin/j;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static a(Lkotlin/jvm/c/a;)Lkotlin/h;
    .locals 3
    .param p0    # Lkotlin/jvm/c/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/c/a<",
            "+TT;>;)",
            "Lkotlin/h<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/p;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/p;-><init>(Lkotlin/jvm/c/a;Ljava/lang/Object;ILkotlin/jvm/d/e;)V

    return-object v0
.end method
