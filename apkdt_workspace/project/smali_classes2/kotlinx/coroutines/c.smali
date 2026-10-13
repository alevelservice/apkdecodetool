.class public final Lkotlinx/coroutines/c;
.super Lkotlinx/coroutines/x0;
.source "EventLoop.kt"


# instance fields
.field private final j:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/x0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c;->j:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected s()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/c;->j:Ljava/lang/Thread;

    return-object v0
.end method
