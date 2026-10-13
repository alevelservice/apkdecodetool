.class public final Lkotlinx/coroutines/f2/h;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/f2/j;


# static fields
.field private static final e:Lkotlinx/coroutines/f2/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lkotlinx/coroutines/f2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/f2/h;

    invoke-direct {v0}, Lkotlinx/coroutines/f2/h;-><init>()V

    sput-object v0, Lkotlinx/coroutines/f2/h;->f:Lkotlinx/coroutines/f2/h;

    .line 2
    sget-object v0, Lkotlinx/coroutines/f2/l;->NON_BLOCKING:Lkotlinx/coroutines/f2/l;

    sput-object v0, Lkotlinx/coroutines/f2/h;->e:Lkotlinx/coroutines/f2/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 0

    return-void
.end method

.method public m()Lkotlinx/coroutines/f2/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/f2/h;->e:Lkotlinx/coroutines/f2/l;

    return-object v0
.end method
