.class final Lkotlinx/coroutines/n0$a;
.super Lkotlin/coroutines/jvm/internal/d;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/n0;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.DeferredCoroutine"
    f = "Builders.common.kt"
    i = {
        0x0
    }
    l = {
        0x62
    }
    m = "await$suspendImpl"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/n0;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n0;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/n0$a;->this$0:Lkotlinx/coroutines/n0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/n0$a;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/n0$a;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/n0$a;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/n0$a;->this$0:Lkotlinx/coroutines/n0;

    invoke-static {p1, p0}, Lkotlinx/coroutines/n0;->a(Lkotlinx/coroutines/n0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
