.class public final Lkotlin/coroutines/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0000H\u0002J\u0013\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/coroutines/CombinedContext;",
        "Lkotlin/coroutines/CoroutineContext;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "left",
        "element",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)V",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lkotlin/Function2;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
        "",
        "writeReplace",
        "Serialized",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final element:Lkotlin/coroutines/f$b;

.field private final left:Lkotlin/coroutines/f;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/f$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    iput-object p2, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    return-void
.end method

.method private final a()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x2

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v0, v0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    instance-of v2, v0, Lkotlin/coroutines/b;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/b;

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final a(Lkotlin/coroutines/b;)Z
    .locals 1

    .line 3
    :goto_0
    iget-object v0, p1, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/b;->a(Lkotlin/coroutines/f$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p1, p1, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    .line 5
    instance-of v0, p1, Lkotlin/coroutines/b;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lkotlin/coroutines/b;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    check-cast p1, Lkotlin/coroutines/f$b;

    invoke-direct {p0, p1}, Lkotlin/coroutines/b;->a(Lkotlin/coroutines/f$b;)Z

    move-result p1

    return p1

    :cond_2
    new-instance p1, Lkotlin/r;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Lkotlin/r;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private final a(Lkotlin/coroutines/f$b;)Z
    .locals 1

    .line 2
    invoke-interface {p1}, Lkotlin/coroutines/f$b;->getKey()Lkotlin/coroutines/f$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/b;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/d/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0}, Lkotlin/coroutines/b;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [Lkotlin/coroutines/f;

    .line 3
    new-instance v2, Lkotlin/jvm/d/m;

    invoke-direct {v2}, Lkotlin/jvm/d/m;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/jvm/d/m;->element:I

    .line 4
    sget-object v4, Lkotlin/t;->a:Lkotlin/t;

    new-instance v5, Lkotlin/coroutines/b$c;

    invoke-direct {v5, v1, v2}, Lkotlin/coroutines/b$c;-><init>([Lkotlin/coroutines/f;Lkotlin/jvm/d/m;)V

    invoke-virtual {p0, v4, v5}, Lkotlin/coroutines/b;->fold(Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;

    .line 5
    iget v2, v2, Lkotlin/jvm/d/m;->element:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Lkotlin/coroutines/b$a;

    invoke-direct {v0, v1}, Lkotlin/coroutines/b$a;-><init>([Lkotlin/coroutines/f;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    .line 1
    instance-of v0, p1, Lkotlin/coroutines/b;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/coroutines/b;

    invoke-direct {p1}, Lkotlin/coroutines/b;->a()I

    move-result v0

    invoke-direct {p0}, Lkotlin/coroutines/b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Lkotlin/coroutines/b;->a(Lkotlin/coroutines/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lkotlin/jvm/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/c/c<",
            "-TR;-",
            "Lkotlin/coroutines/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/f;->fold(Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/c/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;
    .locals 2
    .param p1    # Lkotlin/coroutines/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/f$b;",
            ">(",
            "Lkotlin/coroutines/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-interface {v1, p1}, Lkotlin/coroutines/f$b;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, v0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    .line 3
    instance-of v1, v0, Lkotlin/coroutines/b;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lkotlin/coroutines/b;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Lkotlin/coroutines/f;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;
    .locals 2
    .param p1    # Lkotlin/coroutines/f$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/f$c<",
            "*>;)",
            "Lkotlin/coroutines/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-interface {v0, p1}, Lkotlin/coroutines/f$b;->get(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    invoke-interface {v0, p1}, Lkotlin/coroutines/f;->minusKey(Lkotlin/coroutines/f$c;)Lkotlin/coroutines/f;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lkotlin/coroutines/b;->left:Lkotlin/coroutines/f;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lkotlin/coroutines/g;->INSTANCE:Lkotlin/coroutines/g;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lkotlin/coroutines/b;

    iget-object v1, p0, Lkotlin/coroutines/b;->element:Lkotlin/coroutines/f$b;

    invoke-direct {v0, p1, v1}, Lkotlin/coroutines/b;-><init>(Lkotlin/coroutines/f;Lkotlin/coroutines/f$b;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/f;)Lkotlin/coroutines/f;
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/f$a;->a(Lkotlin/coroutines/f;Lkotlin/coroutines/f;)Lkotlin/coroutines/f;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/coroutines/b$b;->INSTANCE:Lkotlin/coroutines/b$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lkotlin/coroutines/b;->fold(Ljava/lang/Object;Lkotlin/jvm/c/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
