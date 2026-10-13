.class final Lkotlinx/coroutines/internal/x$c;
.super Lkotlin/jvm/d/i;
.source "ThreadContext.kt"

# interfaces
.implements Lkotlin/jvm/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/d/i;",
        "Lkotlin/jvm/c/c<",
        "Lkotlinx/coroutines/internal/a0;",
        "Lkotlin/coroutines/f$b;",
        "Lkotlinx/coroutines/internal/a0;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/x$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/x$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/x$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/x$c;->INSTANCE:Lkotlinx/coroutines/internal/x$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/d/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/internal/a0;

    check-cast p2, Lkotlin/coroutines/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/x$c;->invoke(Lkotlinx/coroutines/internal/a0;Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/internal/a0;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/internal/a0;Lkotlin/coroutines/f$b;)Lkotlinx/coroutines/internal/a0;
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/z1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lkotlinx/coroutines/z1;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/a0;->a()Lkotlin/coroutines/f;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/a0;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/z1;->a(Lkotlin/coroutines/f;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
