.class final Lkotlin/coroutines/b$c;
.super Lkotlin/jvm/d/i;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/jvm/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/b;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/d/i;",
        "Lkotlin/jvm/c/c<",
        "Lkotlin/t;",
        "Lkotlin/coroutines/f$b;",
        "Lkotlin/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lkotlin/coroutines/f;

.field final synthetic $index:Lkotlin/jvm/d/m;


# direct methods
.method constructor <init>([Lkotlin/coroutines/f;Lkotlin/jvm/d/m;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/b$c;->$elements:[Lkotlin/coroutines/f;

    iput-object p2, p0, Lkotlin/coroutines/b$c;->$index:Lkotlin/jvm/d/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/d/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/t;

    check-cast p2, Lkotlin/coroutines/f$b;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/b$c;->invoke(Lkotlin/t;Lkotlin/coroutines/f$b;)V

    sget-object p1, Lkotlin/t;->a:Lkotlin/t;

    return-object p1
.end method

.method public final invoke(Lkotlin/t;Lkotlin/coroutines/f$b;)V
    .locals 3
    .param p1    # Lkotlin/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lkotlin/coroutines/b$c;->$elements:[Lkotlin/coroutines/f;

    iget-object v0, p0, Lkotlin/coroutines/b$c;->$index:Lkotlin/jvm/d/m;

    iget v1, v0, Lkotlin/jvm/d/m;->element:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lkotlin/jvm/d/m;->element:I

    aput-object p2, p1, v1

    return-void
.end method
