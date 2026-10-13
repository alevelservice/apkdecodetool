.class final Lkotlinx/coroutines/internal/a0;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private final c:Lkotlin/coroutines/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;I)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/a0;->c:Lkotlin/coroutines/f;

    .line 2
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlinx/coroutines/internal/a0;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/a0;->c:Lkotlin/coroutines/f;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/internal/a0;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/a0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/a0;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lkotlinx/coroutines/internal/a0;->b:I

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/a0;->a:[Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/internal/a0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/a0;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method
