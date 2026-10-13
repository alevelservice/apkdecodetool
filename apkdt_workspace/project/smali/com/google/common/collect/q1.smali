.class final Lcom/google/common/collect/q1;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method public static a(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 8
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    if-nez p0, :cond_0

    .line 9
    invoke-static {}, Lcom/google/common/collect/c1;->natural()Lcom/google/common/collect/c1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/collect/q1;->a(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/p1;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Lcom/google/common/collect/p1;

    invoke-interface {p1}, Lcom/google/common/collect/p1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
