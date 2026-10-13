.class final Ld/a/b$b$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "GallerySaver.kt"

# interfaces
.implements Lkotlin/jvm/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "carnegietechnologies.gallery_saver.GallerySaver$saveMediaFile$1$success$1"
    f = "GallerySaver.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/e0;

.field final synthetic this$0:Ld/a/b$b;


# direct methods
.method constructor <init>(Ld/a/b$b;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

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

    new-instance v0, Ld/a/b$b$a;

    iget-object v1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    invoke-direct {v0, v1, p2}, Ld/a/b$b$a;-><init>(Ld/a/b$b;Lkotlin/coroutines/c;)V

    check-cast p1, Lkotlinx/coroutines/e0;

    iput-object p1, v0, Ld/a/b$b$a;->p$:Lkotlinx/coroutines/e0;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Ld/a/b$b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Ld/a/b$b$a;

    sget-object p2, Lkotlin/t;->a:Lkotlin/t;

    invoke-virtual {p1, p2}, Ld/a/b$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1
    iget v0, p0, Ld/a/b$b$a;->label:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lkotlin/n$b;

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object p1, p1, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {p1}, Ld/a/b;->e(Ld/a/b;)Ld/a/d;

    move-result-object p1

    sget-object v0, Ld/a/d;->video:Ld/a/d;

    const-string v1, "activity.contentResolver"

    if-ne p1, v0, :cond_0

    .line 3
    sget-object v2, Ld/a/a;->a:Ld/a/a;

    iget-object p1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object p1, p1, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {p1}, Ld/a/b;->b(Ld/a/b;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object p1, p1, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {p1}, Ld/a/b;->d(Ld/a/b;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object p1, p1, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {p1}, Ld/a/b;->c(Ld/a/b;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Ld/a/a;->a(Ld/a/a;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ld/a/a;->a:Ld/a/a;

    iget-object v0, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object v0, v0, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {v0}, Ld/a/b;->b(Ld/a/b;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object v1, v1, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {v1}, Ld/a/b;->d(Ld/a/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ld/a/b$b$a;->this$0:Ld/a/b$b;

    iget-object v2, v2, Ld/a/b$b;->this$0:Ld/a/b;

    invoke-static {v2}, Ld/a/b;->c(Ld/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ld/a/a;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 5
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    check-cast p1, Lkotlin/n$b;

    iget-object p1, p1, Lkotlin/n$b;->exception:Ljava/lang/Throwable;

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
