.class public final Lkotlinx/coroutines/n;
.super Lkotlinx/coroutines/i1;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/i1<",
        "Lkotlinx/coroutines/n1;",
        ">;",
        "Lkotlinx/coroutines/m;"
    }
.end annotation


# instance fields
.field public final i:Lkotlinx/coroutines/o;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/o;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/n1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childJob"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/i1;-><init>(Lkotlinx/coroutines/g1;)V

    iput-object p2, p0, Lkotlinx/coroutines/n;->i:Lkotlinx/coroutines/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    check-cast v0, Lkotlinx/coroutines/n1;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/n1;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/n;->i:Lkotlinx/coroutines/o;

    iget-object v0, p0, Lkotlinx/coroutines/m1;->h:Lkotlinx/coroutines/g1;

    check-cast v0, Lkotlinx/coroutines/v1;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/o;->a(Lkotlinx/coroutines/v1;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n;->b(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/t;->a:Lkotlin/t;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/n;->i:Lkotlinx/coroutines/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
