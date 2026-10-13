.class public Lcom/google/common/collect/z$b;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field b:[Ljava/lang/Object;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/z$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/common/collect/z$b;->c:I

    .line 5
    iput-boolean p1, p0, Lcom/google/common/collect/z$b;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/common/collect/v$b;->a(II)I

    move-result p1

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/common/collect/z$b;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/z$b;
    .locals 2
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
            "Lcom/google/common/collect/z$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 12
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 13
    iget v0, p0, Lcom/google/common/collect/z$b;->c:I

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/z$b;->a(I)V

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/common/collect/z$b;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/z$b;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/z$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/common/collect/z$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/z$b;->a(I)V

    .line 7
    invoke-static {p1, p2}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/z$b;->c:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 9
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 10
    iput v1, p0, Lcom/google/common/collect/z$b;->c:I

    return-object p0
.end method

.method public a(Ljava/util/Map$Entry;)Lcom/google/common/collect/z$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/z$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 11
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/z$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z$b;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "TK;TV;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/common/collect/z$b;->b()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/google/common/collect/z$b;->d:Z

    .line 18
    iget v0, p0, Lcom/google/common/collect/z$b;->c:I

    iget-object v1, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/f1;->create(I[Ljava/lang/Object;)Lcom/google/common/collect/f1;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$b;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/google/common/collect/z$b;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/z$b;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    .line 4
    :cond_0
    iget v0, p0, Lcom/google/common/collect/z$b;->c:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/google/common/collect/z$b;->c:I

    if-ge v2, v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/z$b;->a:Ljava/util/Comparator;

    .line 8
    invoke-static {v2}, Lcom/google/common/collect/c1;->from(Ljava/util/Comparator;)Lcom/google/common/collect/c1;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/s0;->b()Le/i/c/a/d;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/c1;->onResultOf(Le/i/c/a/d;)Lcom/google/common/collect/c1;

    move-result-object v2

    .line 9
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 10
    :goto_1
    iget v2, p0, Lcom/google/common/collect/z$b;->c:I

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 12
    iget-object v2, p0, Lcom/google/common/collect/z$b;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
