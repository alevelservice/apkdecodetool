.class public Lcom/google/common/collect/h0;
.super Lcom/google/common/collect/d0;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/m1;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h0$c;,
        Lcom/google/common/collect/h0$b;,
        Lcom/google/common/collect/h0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m1<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# instance fields
.field private final transient h:Lcom/google/common/collect/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient i:Lcom/google/common/collect/h0;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation build Lcom/google/j2objc/annotations/RetainedWith;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/h0<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient j:Lcom/google/common/collect/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/z;ILjava/util/Comparator;)V
    .locals 0
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/z<",
            "TK;",
            "Lcom/google/common/collect/g0<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d0;-><init>(Lcom/google/common/collect/z;I)V

    .line 2
    invoke-static {p3}, Lcom/google/common/collect/h0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/g0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/h0;->h:Lcom/google/common/collect/g0;

    return-void
.end method

.method private static a(Ljava/util/Comparator;)Lcom/google/common/collect/g0;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/common/collect/g0;->of()Lcom/google/common/collect/g0;

    move-result-object p0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/i0;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/i1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/g0;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 13
    invoke-static {p1}, Lcom/google/common/collect/g0;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g0;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/i0;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/i0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private a()Lcom/google/common/collect/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->entries()Lcom/google/common/collect/g0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object v0

    .line 12
    iput-object p0, v0, Lcom/google/common/collect/h0;->i:Lcom/google/common/collect/h0;

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/t0;Ljava/util/Comparator;)Lcom/google/common/collect/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/t0<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/t0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/h0;->of()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/h0;

    if-eqz v0, :cond_1

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/h0;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/d0;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-interface {p0}, Lcom/google/common/collect/t0;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/h0;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Comparator;)Lcom/google/common/collect/g0$a;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/g0$a<",
            "TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/google/common/collect/g0$a;

    invoke-direct {p0}, Lcom/google/common/collect/g0$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/i0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i0$a;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static builder()Lcom/google/common/collect/h0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/h0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/h0$a;

    invoke-direct {v0}, Lcom/google/common/collect/h0$a;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/t0;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/t0<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/h0;->a(Lcom/google/common/collect/t0;Ljava/util/Comparator;)Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/h0$a;

    invoke-direct {v0}, Lcom/google/common/collect/h0$a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/h0$a;

    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method static fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/h0;
    .locals 5
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/h0;->of()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/z$b;

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/z$b;-><init>(I)V

    const/4 v1, 0x0

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 8
    invoke-static {p1, v2}, Lcom/google/common/collect/h0;->a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/g0;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/z$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z$b;

    .line 11
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Lcom/google/common/collect/h0;

    invoke-virtual {v0}, Lcom/google/common/collect/z$b;->a()Lcom/google/common/collect/z;

    move-result-object v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/collect/h0;-><init>(Lcom/google/common/collect/z;ILjava/util/Comparator;)V

    return-object p0
.end method

.method public static of()Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/p;->INSTANCE:Lcom/google/common/collect/p;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 7
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 11
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 12
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 13
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 14
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 16
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 17
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 18
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 19
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/google/common/collect/h0;->builder()Lcom/google/common/collect/h0$a;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 22
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 23
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 24
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 25
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    .line 26
    invoke-virtual {v0}, Lcom/google/common/collect/h0$a;->a()Lcom/google/common/collect/h0;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_4

    .line 4
    invoke-static {}, Lcom/google/common/collect/z;->builder()Lcom/google/common/collect/z$b;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    if-lez v7, :cond_2

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/h0;->b(Ljava/util/Comparator;)Lcom/google/common/collect/g0$a;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/collect/g0$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/g0$a;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/g0$a;->a()Lcom/google/common/collect/g0;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ne v9, v7, :cond_1

    .line 11
    invoke-virtual {v2, v6, v8}, Lcom/google/common/collect/z$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z$b;

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate key-value pairs exist for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/z$b;->a()Lcom/google/common/collect/z;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    sget-object v1, Lcom/google/common/collect/d0$e;->a:Lcom/google/common/collect/l1$b;

    invoke-virtual {v1, p0, p1}, Lcom/google/common/collect/l1$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lcom/google/common/collect/d0$e;->b:Lcom/google/common/collect/l1$b;

    invoke-virtual {p1, p0, v5}, Lcom/google/common/collect/l1$b;->a(Ljava/lang/Object;I)V

    .line 17
    sget-object p1, Lcom/google/common/collect/h0$c;->a:Lcom/google/common/collect/l1$b;

    invoke-static {v0}, Lcom/google/common/collect/h0;->a(Ljava/util/Comparator;)Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/l1$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 18
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0, p1}, Lcom/google/common/collect/l1;->a(Lcom/google/common/collect/t0;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public entries()Lcom/google/common/collect/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/h0;->j:Lcom/google/common/collect/g0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/common/collect/h0$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h0$b;-><init>(Lcom/google/common/collect/h0;)V

    iput-object v0, p0, Lcom/google/common/collect/h0;->j:Lcom/google/common/collect/g0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entries()Lcom/google/common/collect/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->entries()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->entries()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->entries()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/g0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/d0;->map:Lcom/google/common/collect/z;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/g0;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/h0;->h:Lcom/google/common/collect/g0;

    invoke-static {p1, v0}, Le/i/c/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/g0;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->get(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->get(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->get(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/d0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h0;->inverse()Lcom/google/common/collect/h0;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h0<",
            "TV;TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h0;->i:Lcom/google/common/collect/h0;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/h0;->a()Lcom/google/common/collect/h0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/h0;->i:Lcom/google/common/collect/h0;

    :cond_0
    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/g0;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/g0;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/v;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h0;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h0;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h0;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/h0;->h:Lcom/google/common/collect/g0;

    instance-of v1, v0, Lcom/google/common/collect/i0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/collect/i0;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/i0;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
