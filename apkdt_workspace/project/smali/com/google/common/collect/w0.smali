.class public final Lcom/google/common/collect/w0;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/w0$e;,
        Lcom/google/common/collect/w0$c;,
        Lcom/google/common/collect/w0$b;,
        Lcom/google/common/collect/w0$a;,
        Lcom/google/common/collect/w0$d;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;I)Lcom/google/common/collect/v0$a;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/w0$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/w0$d;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/v0<",
            "TT;>;"
        }
    .end annotation

    .line 21
    check-cast p0, Lcom/google/common/collect/v0;

    return-object p0
.end method

.method static a(Lcom/google/common/collect/v0;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/v0<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/google/common/collect/w0$e;

    invoke-interface {p0}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/w0$e;-><init>(Lcom/google/common/collect/v0;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/v0;Lcom/google/common/collect/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/v0<",
            "TE;>;",
            "Lcom/google/common/collect/b<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 18
    invoke-virtual {p1}, Lcom/google/common/collect/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 19
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/common/collect/b;->addTo(Lcom/google/common/collect/v0;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/v0<",
            "TE;>;",
            "Lcom/google/common/collect/v0<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 13
    instance-of v0, p1, Lcom/google/common/collect/b;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lcom/google/common/collect/b;

    invoke-static {p0, p1}, Lcom/google/common/collect/w0;->a(Lcom/google/common/collect/v0;Lcom/google/common/collect/b;)Z

    move-result p0

    return p0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 16
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v0$a;

    .line 17
    invoke-interface {v0}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/collect/v0;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method static a(Lcom/google/common/collect/v0;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/v0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    check-cast p1, Lcom/google/common/collect/v0;

    .line 4
    invoke-interface {p0}, Lcom/google/common/collect/v0;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/v0;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/v0$a;

    .line 6
    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/v0;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method static a(Lcom/google/common/collect/v0;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/v0<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    instance-of v0, p1, Lcom/google/common/collect/v0;

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/w0;->a(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)Z

    move-result p0

    return p0

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/m0;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/v0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/v0;

    invoke-interface {p0}, Lcom/google/common/collect/v0;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method static b(Lcom/google/common/collect/v0;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/common/collect/v0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/v0;

    .line 4
    invoke-interface {p1}, Lcom/google/common/collect/v0;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/v0;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method static c(Lcom/google/common/collect/v0;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lcom/google/common/collect/v0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/v0;

    .line 3
    invoke-interface {p1}, Lcom/google/common/collect/v0;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/v0;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
