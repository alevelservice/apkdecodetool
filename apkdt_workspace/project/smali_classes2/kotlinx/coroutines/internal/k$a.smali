.class public abstract Lkotlinx/coroutines/internal/k$a;
.super Lkotlinx/coroutines/internal/d;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/d<",
        "Lkotlinx/coroutines/internal/k;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/internal/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/internal/k;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/k;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newNode"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/d;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/k$a;->c:Lkotlinx/coroutines/internal/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/k;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/k$a;->a(Lkotlinx/coroutines/internal/k;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lkotlinx/coroutines/internal/k;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/k$a;->c:Lkotlinx/coroutines/internal/k;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/internal/k$a;->b:Lkotlinx/coroutines/internal/k;

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Lkotlinx/coroutines/internal/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Lkotlinx/coroutines/internal/k$a;->c:Lkotlinx/coroutines/internal/k;

    iget-object p2, p0, Lkotlinx/coroutines/internal/k$a;->b:Lkotlinx/coroutines/internal/k;

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/k;->a(Lkotlinx/coroutines/internal/k;Lkotlinx/coroutines/internal/k;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/jvm/d/h;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method
