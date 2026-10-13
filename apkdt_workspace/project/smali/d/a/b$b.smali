.class final Ld/a/b$b;
.super Lkotlin/coroutines/jvm/internal/k;
.source "GallerySaver.kt"

# interfaces
.implements Lkotlin/jvm/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lkotlin/jvm/c/c<",
        "Lkotlinx/coroutines/e0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "carnegietechnologies.gallery_saver.GallerySaver$saveMediaFile$1"
    f = "GallerySaver.kt"
    i = {
        0x0
    }
    l = {
        0x48
    }
    m = "invokeSuspend"
    n = {
        "success"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/e0;

.field final synthetic this$0:Ld/a/b;


# direct methods
.method constructor <init>(Ld/a/b;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Ld/a/b$b;->this$0:Ld/a/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld/a/b$b;

    iget-object v1, p0, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-direct {v0, v1, p2}, Ld/a/b$b;-><init>(Ld/a/b;Lkotlin/coroutines/c;)V

    check-cast p1, Lkotlinx/coroutines/e0;

    iput-object p1, v0, Ld/a/b$b;->p$:Lkotlinx/coroutines/e0;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Ld/a/b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Ld/a/b$b;

    sget-object p2, Lkotlin/t;->a:Lkotlin/t;

    invoke-virtual {p1, p2}, Ld/a/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Ld/a/b$b;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Ld/a/b$b;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/m0;

    instance-of v0, p1, Lkotlin/n$b;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/n$b;

    iget-object p1, p1, Lkotlin/n$b;->exception:Ljava/lang/Throwable;

    throw p1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    instance-of v1, p1, Lkotlin/n$b;

    if-nez v1, :cond_4

    iget-object v3, p0, Ld/a/b$b;->p$:Lkotlinx/coroutines/e0;

    .line 4
    invoke-static {}, Lkotlinx/coroutines/s0;->b()Lkotlinx/coroutines/z;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ld/a/b$b$a;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p1}, Ld/a/b$b$a;-><init>(Ld/a/b$b;Lkotlin/coroutines/c;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/d;->a(Lkotlinx/coroutines/e0;Lkotlin/coroutines/f;Lkotlinx/coroutines/h0;Lkotlin/jvm/c/c;ILjava/lang/Object;)Lkotlinx/coroutines/m0;

    move-result-object p1

    .line 5
    iput-object p1, p0, Ld/a/b$b;->L$0:Ljava/lang/Object;

    iput v2, p0, Ld/a/b$b;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/m0;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 6
    :cond_3
    :goto_0
    iget-object p1, p0, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {p1}, Ld/a/b;->a(Ld/a/b;)V

    .line 7
    sget-object p1, Lkotlin/t;->a:Lkotlin/t;

    return-object p1

    .line 8
    :cond_4
    check-cast p1, Lkotlin/n$b;

    iget-object p1, p1, Lkotlin/n$b;->exception:Ljava/lang/Throwable;

    throw p1
.end method
