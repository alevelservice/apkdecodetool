.class final Lkotlinx/coroutines/c1;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# instance fields
.field public final a:Lkotlinx/coroutines/b1;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b1;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c1;->a:Lkotlinx/coroutines/b1;

    return-void
.end method
