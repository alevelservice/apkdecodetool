.class public abstract Lkotlin/coroutines/jvm/internal/k;
.super Lkotlin/coroutines/jvm/internal/d;
.source "ContinuationImpl.kt"

# interfaces
.implements Lkotlin/jvm/d/f;
.implements Lkotlin/coroutines/jvm/internal/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/d;",
        "Lkotlin/jvm/d/f<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/coroutines/jvm/internal/j;"
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public constructor <init>(ILkotlin/coroutines/c;)V
    .locals 0
    .param p2    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/c;)V

    iput p1, p0, Lkotlin/coroutines/jvm/internal/k;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/coroutines/jvm/internal/k;->arity:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/a;->getCompletion()Lkotlin/coroutines/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lkotlin/jvm/d/n;->a(Lkotlin/jvm/d/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reflection.renderLambdaToString(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
