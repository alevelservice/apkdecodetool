.class abstract Lcom/google/common/collect/r0$h;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field e:I

.field f:I

.field g:Lcom/google/common/collect/r0$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0$n<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field h:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field i:Lcom/google/common/collect/r0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field j:Lcom/google/common/collect/r0$i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0<",
            "TK;TV;TE;TS;>.i0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field k:Lcom/google/common/collect/r0$i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0<",
            "TK;TV;TE;TS;>.i0;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic l:Lcom/google/common/collect/r0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/r0$h;->l:Lcom/google/common/collect/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/common/collect/r0;->segments:[Lcom/google/common/collect/r0$n;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/r0$h;->e:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/common/collect/r0$h;->f:I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/collect/r0$h;->j:Lcom/google/common/collect/r0$i0;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/common/collect/r0$h;->e:I

    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/r0$h;->l:Lcom/google/common/collect/r0;

    iget-object v1, v1, Lcom/google/common/collect/r0;->segments:[Lcom/google/common/collect/r0$n;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/r0$h;->e:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/r0$h;->g:Lcom/google/common/collect/r0$n;

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->g:Lcom/google/common/collect/r0$n;

    iget v0, v0, Lcom/google/common/collect/r0$n;->count:I

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->g:Lcom/google/common/collect/r0$n;

    iget-object v0, v0, Lcom/google/common/collect/r0$n;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/r0$h;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/r0$h;->f:I

    .line 9
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method a(Lcom/google/common/collect/r0$i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 10
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/r0$i;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/common/collect/r0$h;->l:Lcom/google/common/collect/r0;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/r0;->getLiveValue(Lcom/google/common/collect/r0$i;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance v1, Lcom/google/common/collect/r0$i0;

    iget-object v2, p0, Lcom/google/common/collect/r0$h;->l:Lcom/google/common/collect/r0;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/r0$i0;-><init>(Lcom/google/common/collect/r0;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/r0$h;->j:Lcom/google/common/collect/r0$i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->g:Lcom/google/common/collect/r0$n;

    invoke-virtual {v0}, Lcom/google/common/collect/r0$n;->postReadCleanup()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/r0$h;->g:Lcom/google/common/collect/r0$n;

    invoke-virtual {v0}, Lcom/google/common/collect/r0$n;->postReadCleanup()V

    .line 14
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method b()Lcom/google/common/collect/r0$i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0<",
            "TK;TV;TE;TS;>.i0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->j:Lcom/google/common/collect/r0$i0;

    if-eqz v0, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/common/collect/r0$h;->k:Lcom/google/common/collect/r0$i0;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->a()V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->k:Lcom/google/common/collect/r0$i0;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    if-eqz v0, :cond_1

    .line 2
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/r0$i;->a()Lcom/google/common/collect/r0$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    iget-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$h;->a(Lcom/google/common/collect/r0$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/common/collect/r0$h;->f:I

    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/r0$h;->h:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/r0$h;->f:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/r0$i;

    iput-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->i:Lcom/google/common/collect/r0$i;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$h;->a(Lcom/google/common/collect/r0$i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->j:Lcom/google/common/collect/r0$i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->k:Lcom/google/common/collect/r0$i0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/i;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/r0$h;->l:Lcom/google/common/collect/r0;

    iget-object v1, p0, Lcom/google/common/collect/r0$h;->k:Lcom/google/common/collect/r0$i0;

    invoke-virtual {v1}, Lcom/google/common/collect/r0$i0;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/r0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/r0$h;->k:Lcom/google/common/collect/r0$i0;

    return-void
.end method
