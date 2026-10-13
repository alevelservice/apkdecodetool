.class public final Lcom/google/common/collect/h0$a;
.super Lcom/google/common/collect/d0$c;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/d0$c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/d0$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/h0$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/h0$a;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/h0$a;

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/h0$a;
    .locals 0
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
            "Lcom/google/common/collect/h0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$c;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/h0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/h0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/d0$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/google/common/collect/h0$a;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h0$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/google/common/collect/d0$c;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/d0$c;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/h0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/d0$c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/d0$c;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 8
    invoke-static {v1}, Lcom/google/common/collect/c1;->from(Ljava/util/Comparator;)Lcom/google/common/collect/c1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/c1;->onKeys()Lcom/google/common/collect/c1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/c1;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/x;

    move-result-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/d0$c;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/h0;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/h0;

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
    invoke-static {}, Lcom/google/common/collect/d1;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
