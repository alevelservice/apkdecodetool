.class public abstract Lkotlinx/coroutines/m1;
.super Lkotlinx/coroutines/v;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/t0;
.implements Lkotlinx/coroutines/b1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/g1;",
        ">",
        "Lkotlinx/coroutines/v;",
        "Lkotlinx/coroutines/t0;",
        "Lkotlinx/coroutines/b1;"
    }
.end annotation


# instance fields
.field public final h:Lkotlinx/coroutines/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
    invoke-direct {p0}, Lkotlinx/coroutines/v;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    return-void
.end method


# virtual methods
.method public a()Lkotlinx/coroutines/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/n1;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/m1;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/r;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
