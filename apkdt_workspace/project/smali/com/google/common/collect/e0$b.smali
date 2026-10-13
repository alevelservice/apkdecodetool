.class public Lcom/google/common/collect/e0$b;
.super Lcom/google/common/collect/v$b;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/b1<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/e0$b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/v$b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/common/collect/e0$b;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/common/collect/e0$b;->c:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/b1;->i(I)Lcom/google/common/collect/b1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    return-void
.end method

.method static b(Ljava/lang/Iterable;)Lcom/google/common/collect/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/b1<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/g1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/g1;

    iget-object p0, p0, Lcom/google/common/collect/g1;->contents:Lcom/google/common/collect/b1;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lcom/google/common/collect/b;

    iget-object p0, p0, Lcom/google/common/collect/b;->backingMap:Lcom/google/common/collect/b1;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/e0$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    .line 10
    instance-of v0, p1, Lcom/google/common/collect/v0;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/common/collect/e0$b;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/b1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object p1, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-virtual {p1}, Lcom/google/common/collect/b1;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/b1;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/b1;->a(I)V

    .line 14
    invoke-virtual {v0}, Lcom/google/common/collect/b1;->b()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->f(I)I

    move-result p1

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-virtual {v1}, Lcom/google/common/collect/b1;->c()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/b1;->a(I)V

    .line 19
    invoke-interface {p1}, Lcom/google/common/collect/v0;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v0$a;

    .line 20
    invoke-interface {v0}, Lcom/google/common/collect/v0$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/v0$a;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;

    goto :goto_1

    .line 21
    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/v$b;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/v$b;

    :cond_2
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;

    return-object p0
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/e0$b;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/e0$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/google/common/collect/b1;

    iget-object v2, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-direct {v0, v2}, Lcom/google/common/collect/b1;-><init>(Lcom/google/common/collect/b1;)V

    iput-object v0, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    .line 6
    iput-boolean v1, p0, Lcom/google/common/collect/e0$b;->c:Z

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/e0$b;->b:Z

    .line 8
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/b1;->a(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/b1;->a(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public a(Ljava/util/Iterator;)Lcom/google/common/collect/e0$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcom/google/common/collect/v$b;->a(Ljava/util/Iterator;)Lcom/google/common/collect/v$b;

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/e0$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/e0$b<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/google/common/collect/v$b;->a([Ljava/lang/Object;)Lcom/google/common/collect/v$b;

    return-object p0
.end method

.method public a()Lcom/google/common/collect/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TE;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-virtual {v0}, Lcom/google/common/collect/b1;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/google/common/collect/e0;->of()Lcom/google/common/collect/e0;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/e0$b;->c:Z

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lcom/google/common/collect/b1;

    iget-object v1, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/b1;-><init>(Lcom/google/common/collect/b1;)V

    iput-object v0, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/google/common/collect/e0$b;->c:Z

    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/common/collect/e0$b;->b:Z

    .line 29
    new-instance v0, Lcom/google/common/collect/g1;

    iget-object v1, p0, Lcom/google/common/collect/e0$b;->a:Lcom/google/common/collect/b1;

    invoke-direct {v0, v1}, Lcom/google/common/collect/g1;-><init>(Lcom/google/common/collect/b1;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/v$b;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/e0$b;

    return-object p0
.end method
