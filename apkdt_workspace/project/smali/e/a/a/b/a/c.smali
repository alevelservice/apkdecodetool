.class public Le/a/a/b/a/c;
.super Ljava/util/AbstractSet;
.source "PriorityBlockingArraySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final al:Le/a/a/b/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a/b/a/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    new-instance v0, Le/a/a/b/a/a;

    invoke-direct {v0}, Le/a/a/b/a/a;-><init>()V

    iput-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Le/a/a/b/a/c;-><init>(Ljava/util/Collection;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/a/a/b/a/c;

    if-ne v0, v1, :cond_0

    .line 8
    check-cast p1, Le/a/a/b/a/c;

    .line 9
    new-instance v0, Le/a/a/b/a/a;

    iget-object p1, p1, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-direct {v0, p1, p2}, Le/a/a/b/a/a;-><init>(Ljava/util/Collection;Ljava/util/Comparator;)V

    iput-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Le/a/a/b/a/a;

    invoke-direct {v0, p2}, Le/a/a/b/a/a;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    .line 11
    iget-object p2, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {p2, p1}, Le/a/a/b/a/a;->addAllAbsent(Ljava/util/Collection;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    new-instance v0, Le/a/a/b/a/a;

    invoke-direct {v0, p1}, Le/a/a/b/a/a;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->addIfAbsent(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->addAllAbsent(Ljava/util/Collection;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0}, Le/a/a/b/a/a;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v1}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 5
    array-length v3, v1

    .line 6
    new-array v4, v3, [Z

    const/4 v5, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-le v5, v3, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_4

    .line 9
    aget-boolean v8, v4, v7

    if-nez v8, :cond_3

    aget-object v8, v1, v7

    invoke-static {v6, v8}, Le/a/a/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 10
    aput-boolean v0, v4, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return v2

    :cond_5
    if-ne v5, v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0}, Le/a/a/b/a/a;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0}, Le/a/a/b/a/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0}, Le/a/a/b/a/a;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0}, Le/a/a/b/a/a;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/a/a/b/a/c;->al:Le/a/a/b/a/a;

    invoke-virtual {v0, p1}, Le/a/a/b/a/a;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
