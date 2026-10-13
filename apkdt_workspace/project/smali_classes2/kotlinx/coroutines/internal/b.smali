.class public Lkotlinx/coroutines/internal/b;
.super Ljava/lang/Object;
.source "ArrayQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    return-void
.end method

.method private final c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    .line 2
    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    array-length v3, v0

    iget v4, p0, Lkotlinx/coroutines/internal/b;->b:I

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    .line 4
    invoke-static {v0, v4, v2, v5, v3}, Lkotlinx/coroutines/internal/a;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    iget v4, p0, Lkotlinx/coroutines/internal/b;->b:I

    invoke-static {v0, v5, v2, v3, v4}, Lkotlinx/coroutines/internal/a;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 6
    iput-object v2, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    .line 7
    iput v5, p0, Lkotlinx/coroutines/internal/b;->b:I

    .line 8
    iput v1, p0, Lkotlinx/coroutines/internal/b;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/b;->c:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    iput p1, p0, Lkotlinx/coroutines/internal/b;->c:I

    .line 4
    iget p1, p0, Lkotlinx/coroutines/internal/b;->c:I

    iget v0, p0, Lkotlinx/coroutines/internal/b;->b:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/b;->c()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/b;->b:I

    iget v1, p0, Lkotlinx/coroutines/internal/b;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lkotlinx/coroutines/internal/b;->b:I

    iget v1, p0, Lkotlinx/coroutines/internal/b;->c:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/b;->a:[Ljava/lang/Object;

    aget-object v3, v1, v0

    .line 3
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/internal/b;->b:I

    if-eqz v3, :cond_1

    return-object v3

    .line 5
    :cond_1
    new-instance v0, Lkotlin/r;

    const-string v1, "null cannot be cast to non-null type T"

    invoke-direct {v0, v1}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    throw v0
.end method
