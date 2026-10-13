.class public final Lkotlin/a0/b;
.super Lkotlin/a0/g;


# direct methods
.method public static bridge synthetic a(Lkotlin/a0/a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/c/b;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p8}, Lkotlin/a0/g;->a(Lkotlin/a0/a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/c/b;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic a(Lkotlin/a0/a;Lkotlin/jvm/c/b;)Lkotlin/a0/a;
    .locals 0
    .param p0    # Lkotlin/a0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/c/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/a0/a<",
            "+TT;>;",
            "Lkotlin/jvm/c/b<",
            "-TT;+TR;>;)",
            "Lkotlin/a0/a<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/a0/g;->a(Lkotlin/a0/a;Lkotlin/jvm/c/b;)Lkotlin/a0/a;

    move-result-object p0

    return-object p0
.end method
