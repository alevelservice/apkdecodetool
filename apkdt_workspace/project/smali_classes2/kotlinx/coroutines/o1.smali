.class public final Lkotlinx/coroutines/o1;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/t;

.field private static final b:Lkotlinx/coroutines/v0;

.field private static final c:Lkotlinx/coroutines/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/t;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/o1;->a:Lkotlinx/coroutines/internal/t;

    .line 2
    new-instance v0, Lkotlinx/coroutines/v0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/v0;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/v0;

    .line 3
    new-instance v0, Lkotlinx/coroutines/v0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/v0;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/o1;->c:Lkotlinx/coroutines/v0;

    return-void
.end method

.method public static final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/o1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()Lkotlinx/coroutines/v0;
    .locals 1

    .line 2
    sget-object v0, Lkotlinx/coroutines/o1;->c:Lkotlinx/coroutines/v0;

    return-object v0
.end method

.method private static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/b1;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/c1;

    check-cast p0, Lkotlinx/coroutines/b1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/c1;-><init>(Lkotlinx/coroutines/b1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/v0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/v0;

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    instance-of v0, p0, Lkotlinx/coroutines/c1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/c1;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/c1;->a:Lkotlinx/coroutines/b1;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/o1;->a:Lkotlinx/coroutines/internal/t;

    return-object v0
.end method
