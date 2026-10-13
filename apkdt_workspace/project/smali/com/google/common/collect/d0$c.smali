.class public Lcom/google/common/collect/d0$c;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/d1;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d0$c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$c;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/d0$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/common/collect/d0$c;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/d0$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/d0$c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/common/collect/d0$c;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/d0$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/d0$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/common/collect/d0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/d0$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/d0$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 10
    invoke-static {v1}, Lcom/google/common/collect/c1;->from(Ljava/util/Comparator;)Lcom/google/common/collect/c1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/c1;->onKeys()Lcom/google/common/collect/c1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/c1;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/x;

    move-result-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d0$c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/y;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/y;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
