.class public abstract Lcom/google/common/collect/e0;
.super Lcom/google/common/collect/f0;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/google/common/collect/v0;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$b;,
        Lcom/google/common/collect/e0$d;,
        Lcom/google/common/collect/e0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/f0<",
        "TE;>;",
        "Lcom/google/common/collect/v0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient f:Lcom/google/common/collect/x;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/g0;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g0<",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/f0;-><init>()V

    return-void
.end method

.method private static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$b;

    invoke-direct {v0}, Lcom/google/common/collect/e0$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/e0$b;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method private a()Lcom/google/common/collect/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/g0;->of()Lcom/google/common/collect/g0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/e0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/e0$c;-><init>(Lcom/google/common/collect/e0;Lcom/google/common/collect/e0$a;)V

    :goto_0
    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/e0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$b;

    invoke-direct {v0}, Lcom/google/common/collect/e0$b;-><init>()V

    return-object v0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/v0$a<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e0$b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e0$b;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/v0$a;

    .line 3
    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lcom/google/common/collect/e0;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/e0;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/v;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/common/collect/e0$b;

    .line 6
    invoke-static {p0}, Lcom/google/common/collect/w0;->b(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e0$b;-><init>(I)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/e0$b;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/common/collect/e0$b;

    invoke-direct {v0}, Lcom/google/common/collect/e0$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/e0$b;->a(Ljava/util/Iterator;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static of()Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/g1;->EMPTY:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 3
    invoke-static {v0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    .line 4
    invoke-static {v0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    .line 6
    invoke-static {v0}, Lcom/google/common/collect/e0;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/common/collect/e0$b;

    invoke-direct {v0}, Lcom/google/common/collect/e0$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p3}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p4}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p5}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0, p6}, Lcom/google/common/collect/e0$b;->a([Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    invoke-virtual {v0}, Lcom/google/common/collect/e0$b;->a()Lcom/google/common/collect/e0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asList()Lcom/google/common/collect/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e0;->f:Lcom/google/common/collect/x;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/v;->asList()Lcom/google/common/collect/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e0;->f:Lcom/google/common/collect/x;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/collect/v0;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/v0$a;

    .line 2
    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public abstract elementSet()Lcom/google/common/collect/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->elementSet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lcom/google/common/collect/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0;->g:Lcom/google/common/collect/g0;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/e0;->a()Lcom/google/common/collect/g0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e0;->g:Lcom/google/common/collect/g0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/w0;->a(Lcom/google/common/collect/v0;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract getEntry(I)Lcom/google/common/collect/v0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/v0$a<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/n1;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/common/collect/e0$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/e0$a;-><init>(Lcom/google/common/collect/e0;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract writeReplace()Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end method
