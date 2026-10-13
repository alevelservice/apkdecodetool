.class public final Lkotlinx/coroutines/s0;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field private static final a:Lkotlinx/coroutines/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/z;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/s0;

    invoke-direct {v0}, Lkotlinx/coroutines/s0;-><init>()V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/y;->a()Lkotlinx/coroutines/z;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/s0;->a:Lkotlinx/coroutines/z;

    .line 3
    sget-object v0, Lkotlinx/coroutines/d2;->e:Lkotlinx/coroutines/d2;

    .line 4
    sget-object v0, Lkotlinx/coroutines/f2/c;->k:Lkotlinx/coroutines/f2/c;

    invoke-virtual {v0}, Lkotlinx/coroutines/f2/c;->o()Lkotlinx/coroutines/z;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/s0;->b:Lkotlinx/coroutines/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/z;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/s0;->a:Lkotlinx/coroutines/z;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/z;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/s0;->b:Lkotlinx/coroutines/z;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/r1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/n;->a:Lkotlinx/coroutines/r1;

    return-object v0
.end method
