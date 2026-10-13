.class public abstract Lkotlinx/coroutines/i1;
.super Lkotlinx/coroutines/m1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/g1;",
        ">",
        "Lkotlinx/coroutines/m1<",
        "TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/g1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/g1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/m1;-><init>(Lkotlinx/coroutines/g1;)V

    return-void
.end method
