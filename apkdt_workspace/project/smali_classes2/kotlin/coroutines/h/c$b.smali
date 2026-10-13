.class public final Lkotlin/coroutines/h/c$b;
.super Lkotlin/coroutines/jvm/internal/d;
.source "IntrinsicsJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/h/c;->a(Lkotlin/jvm/c/b;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completion:Lkotlin/coroutines/c;

.field final synthetic $context:Lkotlin/coroutines/f;

.field final synthetic $this_createCoroutineUnintercepted$inlined:Lkotlin/jvm/c/b;

.field private label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/c;Lkotlin/coroutines/f;Lkotlin/coroutines/c;Lkotlin/coroutines/f;Lkotlin/jvm/c/b;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/h/c$b;->$completion:Lkotlin/coroutines/c;

    iput-object p2, p0, Lkotlin/coroutines/h/c$b;->$context:Lkotlin/coroutines/f;

    iput-object p5, p0, Lkotlin/coroutines/h/c$b;->$this_createCoroutineUnintercepted$inlined:Lkotlin/jvm/c/b;

    .line 1
    invoke-direct {p0, p3, p4}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/c;Lkotlin/coroutines/f;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/coroutines/h/c$b;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkotlin/coroutines/h/c$b;->label:I

    .line 3
    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput v1, p0, Lkotlin/coroutines/h/c$b;->label:I

    .line 6
    invoke-static {p1}, Lkotlin/o;->a(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lkotlin/coroutines/h/c$b;->$this_createCoroutineUnintercepted$inlined:Lkotlin/jvm/c/b;

    if-eqz p1, :cond_2

    invoke-static {p1, v1}, Lkotlin/jvm/d/p;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/c/b;

    invoke-interface {p1, p0}, Lkotlin/jvm/c/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw p1
.end method
