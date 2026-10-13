.class Lkotlinx/coroutines/y1;
.super Lkotlinx/coroutines/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/a<",
        "Lkotlin/t;",
        ">;"
    }
.end annotation


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
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/f;Z)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/a;->getContext()Lkotlin/coroutines/f;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/b0;->a(Lkotlin/coroutines/f;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
