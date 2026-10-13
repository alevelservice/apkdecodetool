.class public abstract Lkotlinx/coroutines/f2/i;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public f:Lkotlinx/coroutines/f2/j;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    sget-object v0, Lkotlinx/coroutines/f2/h;->f:Lkotlinx/coroutines/f2/h;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/f2/i;-><init>(JLkotlinx/coroutines/f2/j;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/f2/j;)V
    .locals 1
    .param p3    # Lkotlinx/coroutines/f2/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "taskContext"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/f2/i;->e:J

    iput-object p3, p0, Lkotlinx/coroutines/f2/i;->f:Lkotlinx/coroutines/f2/j;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/f2/l;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/f2/i;->f:Lkotlinx/coroutines/f2/j;

    invoke-interface {v0}, Lkotlinx/coroutines/f2/j;->m()Lkotlinx/coroutines/f2/l;

    move-result-object v0

    return-object v0
.end method
