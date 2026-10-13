.class Lcom/google/common/collect/l;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

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


# static fields
.field static final DEFAULT_SIZE:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final UNSET:I = -0x1


# instance fields
.field private transient e:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient f:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient g:I

.field transient modCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->init(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->init(I)V

    return-void
.end method

.method private a()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/l;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static a(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static a(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static a(I)[J
    .locals 2

    .line 1
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 2
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method static synthetic access$000(Lcom/google/common/collect/l;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/l;->f:[J

    return-object p0
.end method

.method static synthetic access$100(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/l;->a(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/l;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/l;->remove(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method private static b(J)I
    .locals 0

    long-to-int p1, p0

    return p1
.end method

.method private static b(I)[I
    .locals 1

    .line 1
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 2
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/l<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l;

    invoke-direct {v0}, Lcom/google/common/collect/l;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/l<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/l;->createWithExpectedSize(I)Lcom/google/common/collect/l;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/l<",
            "TE;>;"
        }
    .end annotation

    .line 4
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/l;->createWithExpectedSize(I)Lcom/google/common/collect/l;

    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/l<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l;-><init>(I)V

    return-object v0
.end method

.method private m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/l;->resizeEntries(I)V

    :cond_1
    return-void
.end method

.method private n(I)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/l;->b(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    .line 3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, p0, Lcom/google/common/collect/l;->g:I

    if-ge v2, v3, :cond_0

    .line 5
    aget-wide v3, v0, v2

    .line 6
    invoke-static {v3, v4}, Lcom/google/common/collect/l;->a(J)I

    move-result v3

    and-int v4, v3, v1

    .line 7
    aget v5, p1, v4

    .line 8
    aput v2, p1, v4

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    const-wide v6, 0xffffffffL

    int-to-long v8, v5

    and-long/2addr v6, v8

    or-long/2addr v3, v6

    .line 9
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/l;->e:[I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->init(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/common/collect/l;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private remove(Ljava/lang/Object;I)Z
    .locals 9
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/l;->a()I

    move-result v0

    and-int/2addr v0, p2

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/l;->e:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v4, -0x1

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/l;->a(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Le/i/c/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v4, v3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/common/collect/l;->e:[I

    iget-object p2, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/l;->b(J)I

    move-result p2

    aput p2, p1, v0

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v2, p1, v4

    aget-wide v5, p1, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/l;->b(J)I

    move-result p2

    invoke-static {v2, v3, p2}, Lcom/google/common/collect/l;->a(JI)J

    move-result-wide v2

    aput-wide v2, p1, v4

    .line 8
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/l;->moveLastEntry(I)V

    .line 9
    iget p1, p0, Lcom/google/common/collect/l;->g:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/l;->g:I

    .line 10
    iget p1, p0, Lcom/google/common/collect/l;->modCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/l;->modCount:I

    return p2

    .line 11
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v5, v4, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/l;->b(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return v2

    :cond_3
    move v8, v4

    move v4, v1

    move v1, v8

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    iget v0, p0, Lcom/google/common/collect/l;->g:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/l;->firstEntryIndex()I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/l;->allocArrays()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Lcom/google/common/collect/u;->a(Ljava/lang/Object;)I

    move-result v2

    .line 6
    invoke-direct {p0}, Lcom/google/common/collect/l;->a()I

    move-result v3

    and-int/2addr v3, v2

    .line 7
    iget v4, p0, Lcom/google/common/collect/l;->g:I

    .line 8
    iget-object v5, p0, Lcom/google/common/collect/l;->e:[I

    aget v6, v5, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 9
    aput v4, v5, v3

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    aget-wide v8, v0, v6

    .line 11
    invoke-static {v8, v9}, Lcom/google/common/collect/l;->a(J)I

    move-result v3

    if-ne v3, v2, :cond_2

    aget-object v3, v1, v6

    invoke-static {p1, v3}, Le/i/c/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_2
    invoke-static {v8, v9}, Lcom/google/common/collect/l;->b(J)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 13
    invoke-static {v8, v9, v4}, Lcom/google/common/collect/l;->a(JI)J

    move-result-wide v7

    aput-wide v7, v0, v6

    :goto_1
    const v0, 0x7fffffff

    if-eq v4, v0, :cond_4

    add-int/lit8 v0, v4, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/google/common/collect/l;->m(I)V

    .line 15
    invoke-virtual {p0, v4, p1, v2}, Lcom/google/common/collect/l;->insertEntry(ILjava/lang/Object;I)V

    .line 16
    iput v0, p0, Lcom/google/common/collect/l;->g:I

    .line 17
    iget-object p1, p0, Lcom/google/common/collect/l;->e:[I

    array-length p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 18
    invoke-static {v4, p1, v0, v1}, Lcom/google/common/collect/u;->a(IID)Z

    move-result v0

    if-eqz v0, :cond_3

    mul-int/lit8 p1, p1, 0x2

    .line 19
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;->n(I)V

    .line 20
    :cond_3
    iget p1, p0, Lcom/google/common/collect/l;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/l;->modCount:I

    return v0

    .line 21
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v6, v3

    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method allocArrays()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Le/i/c/a/j;->b(ZLjava/lang/Object;)V

    .line 2
    iget v0, p0, Lcom/google/common/collect/l;->modCount:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/u;->a(ID)I

    move-result v1

    .line 4
    invoke-static {v1}, Lcom/google/common/collect/l;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/l;->e:[I

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/l;->a(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/l;->f:[J

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/common/collect/l;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/l;->modCount:I

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/l;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/l;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    iget v1, p0, Lcom/google/common/collect/l;->g:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 6
    iput v3, p0, Lcom/google/common/collect/l;->g:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/u;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/l;->e:[I

    invoke-direct {p0}, Lcom/google/common/collect/l;->a()I

    move-result v3

    and-int/2addr v3, v0

    aget v2, v2, v3

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v4, v3, v2

    .line 5
    invoke-static {v4, v5}, Lcom/google/common/collect/l;->a(J)I

    move-result v3

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-static {p1, v2}, Le/i/c/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_1
    invoke-static {v4, v5}, Lcom/google/common/collect/l;->b(J)I

    move-result v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method firstEntryIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSuccessor(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->g:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method init(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Initial capacity must be non-negative"

    .line 1
    invoke-static {v1, v2}, Le/i/c/a/j;->a(ZLjava/lang/Object;)V

    .line 2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l;->modCount:I

    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    int-to-long v1, p3

    const/16 p3, 0x20

    shl-long/2addr v1, p3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 2
    iget-object p3, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aput-object p2, p3, p1

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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
    new-instance v0, Lcom/google/common/collect/l$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l$a;-><init>(Lcom/google/common/collect/l;)V

    return-object v0
.end method

.method moveLastEntry(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_2

    .line 2
    iget-object v4, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 3
    aput-object v3, v4, v0

    .line 4
    iget-object v3, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v4, v3, v0

    .line 5
    aput-wide v4, v3, p1

    .line 6
    aput-wide v1, v3, v0

    .line 7
    invoke-static {v4, v5}, Lcom/google/common/collect/l;->a(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/l;->a()I

    move-result v2

    and-int/2addr v1, v2

    .line 8
    iget-object v2, p0, Lcom/google/common/collect/l;->e:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 9
    aput p1, v2, v1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/l;->f:[J

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Lcom/google/common/collect/l;->b(J)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    invoke-static {v4, v5, p1}, Lcom/google/common/collect/l;->a(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 13
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    aput-wide v1, v0, p1

    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->e:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/u;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/l;->remove(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method resizeEntries(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/l;->f:[J

    .line 3
    array-length v1, v0

    .line 4
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 5
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 6
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/l;->f:[J

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/l;->g:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/l;->g:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    aput-object v0, p1, v1

    :cond_0
    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/l;->g:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/a1;->a([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public trimToSize()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/common/collect/l;->g:I

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/l;->f:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/l;->resizeEntries(I)V

    :cond_1
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/u;->a(ID)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/common/collect/l;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/google/common/collect/l;->n(I)V

    :cond_2
    return-void
.end method
