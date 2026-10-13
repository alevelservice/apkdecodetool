.class final Lkotlinx/coroutines/n1$b;
.super Lkotlinx/coroutines/m1;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/m1<",
        "Lkotlinx/coroutines/g1;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Lkotlinx/coroutines/n1;

.field private final j:Lkotlinx/coroutines/n1$c;

.field private final k:Lkotlinx/coroutines/n;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/n1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/n1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p3, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p3, Lkotlinx/coroutines/n;->i:Lkotlinx/coroutines/o;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/m1;-><init>(Lkotlinx/coroutines/g1;)V

    iput-object p1, p0, Lkotlinx/coroutines/n1$b;->i:Lkotlinx/coroutines/n1;

    iput-object p2, p0, Lkotlinx/coroutines/n1$b;->j:Lkotlinx/coroutines/n1$c;

    iput-object p3, p0, Lkotlinx/coroutines/n1$b;->k:Lkotlinx/coroutines/n;

    iput-object p4, p0, Lkotlinx/coroutines/n1$b;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lkotlinx/coroutines/n1$b;->i:Lkotlinx/coroutines/n1;

    iget-object v0, p0, Lkotlinx/coroutines/n1$b;->j:Lkotlinx/coroutines/n1$c;

    iget-object v1, p0, Lkotlinx/coroutines/n1$b;->k:Lkotlinx/coroutines/n;

    iget-object v2, p0, Lkotlinx/coroutines/n1$b;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/n1;->a(Lkotlinx/coroutines/n1;Lkotlinx/coroutines/n1$c;Lkotlinx/coroutines/n;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/n1$b;->b(Ljava/lang/Throwable;)V

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

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/n1$b;->k:Lkotlinx/coroutines/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/n1$b;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
