.class public Le/a/a/b/a/a;
.super Ljava/lang/Object;
.source "PriorityBlockingArrayList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/b/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private volatile transient e:[Ljava/lang/Object;

.field final transient lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

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

    .line 8
    invoke-direct {p0, p1, v0}, Le/a/a/b/a/a;-><init>(Ljava/util/Collection;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    iput-object p2, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Le/a/a/b/a/a;

    if-ne p2, v0, :cond_0

    .line 13
    check-cast p1, Le/a/a/b/a/a;

    invoke-virtual {p1}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a/b/a/a;->addAll(Ljava/util/Collection;)Z

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

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    iput-object p1, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Le/a/a/b/a/a;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 19
    iput-object p2, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    .line 20
    invoke-virtual {p0, p1}, Le/a/a/b/a/a;->addAll([Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;",
            "Ljava/util/Comparator<",
            "-TE;>;)I"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 22
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 23
    :cond_0
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static a(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .locals 1

    if-nez p0, :cond_1

    :goto_0
    if-ge p2, p3, :cond_3

    .line 3
    aget-object p0, p1, p2

    if-nez p0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge p2, p3, :cond_3

    .line 4
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 0

    .line 5
    invoke-static {p1, p2, p3, p0, p4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private a([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 6
    aget-object p1, p1, p2

    return-object p1
.end method

.method private a([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/b/a/a;->e:[Ljava/lang/Object;

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

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 8

    .line 7
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 10
    array-length v2, v1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_4

    .line 11
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 12
    aget-object v6, v1, v5

    aget-object v7, p2, v5

    if-eq v6, v7, :cond_0

    aget-object v6, v1, v5

    invoke-static {p1, v6}, Le/a/a/b/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move p3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-lt p3, v2, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    .line 14
    :cond_2
    :try_start_1
    aget-object p2, v1, p3

    if-ne p2, p1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {p1, v1, p3, v2}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p3, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :cond_4
    :goto_1
    add-int/lit8 p1, v2, -0x1

    .line 17
    :try_start_2
    new-array p1, p1, [Ljava/lang/Object;

    .line 18
    invoke-static {v1, v3, p1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p3, 0x1

    sub-int/2addr v2, p3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 19
    invoke-static {v1, p2, p1, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 5
    array-length v2, v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_3

    .line 7
    iget-object v6, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    invoke-static {v1, p1, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v6

    if-gez v6, :cond_0

    xor-int/lit8 v6, v6, -0x1

    :cond_0
    if-nez v6, :cond_1

    .line 8
    invoke-static {v1, v5, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-le v6, v2, :cond_2

    .line 9
    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v6, 0x1

    sub-int/2addr v2, v6

    .line 11
    invoke-static {v1, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move v5, v6

    .line 12
    :cond_3
    aput-object p1, v3, v5

    .line 13
    invoke-direct {p0, v3}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/a/a/b/a/a;

    if-ne v0, v1, :cond_0

    check-cast p1, Le/a/a/b/a/a;

    invoke-virtual {p1}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 2
    :goto_0
    array-length v0, p1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/a/a/b/a/a;->addAll([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll([Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .line 4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 6
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 9
    array-length v2, v1

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, [Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    .line 11
    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    goto :goto_4

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    array-length v4, p1

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 13
    array-length v7, p1

    if-ge v5, v7, :cond_2

    .line 14
    aget-object v7, v1, v4

    aget-object v8, p1, v5

    iget-object v9, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    invoke-direct {p0, v7, v8, v9}, Le/a/a/b/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 15
    aget-object v5, p1, v5

    aput-object v5, v3, v6

    move v5, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v4, 0x1

    .line 16
    aget-object v4, v1, v4

    aput-object v4, v3, v6

    move v4, v7

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v4, v2, :cond_3

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 17
    aget-object v4, v1, v4

    aput-object v4, v3, v6

    move v6, v7

    move v4, v8

    goto :goto_2

    .line 18
    :cond_3
    :goto_3
    array-length v1, p1

    if-ge v5, v1, :cond_4

    add-int/lit8 v1, v6, 0x1

    add-int/lit8 v2, v5, 0x1

    .line 19
    aget-object v4, p1, v5

    aput-object v4, v3, v6

    move v6, v1

    move v5, v2

    goto :goto_3

    .line 20
    :cond_4
    invoke-direct {p0, v3}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public addAllAbsent(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1}, Le/a/a/b/a/a;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public addIfAbsent(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    array-length v2, v1

    .line 5
    iget-object v3, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    invoke-static {v1, p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_3

    xor-int/lit8 v3, v3, -0x1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    if-lez v2, :cond_2

    if-nez v3, :cond_0

    .line 7
    invoke-static {v1, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le v3, v2, :cond_1

    .line 8
    invoke-static {v1, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v3

    .line 10
    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_2
    :goto_0
    aput-object p1, v5, v3

    .line 12
    invoke-direct {p0, v5}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v6

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public binarySearch(Ljava/lang/Object;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    iget-object v2, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public binarySearch(Ljava/lang/Object;II)I
    .locals 2

    .line 3
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/a/b/a/a;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0, p2, p3, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/b/a/a;

    .line 2
    iget-object v1, v0, Le/a/a/b/a/a;->e:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Le/a/a/b/a/a;->e:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v0, v3, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v2

    if-gez v2, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Le/a/a/b/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    .line 7
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final getArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    mul-int/lit8 v4, v4, 0x1f

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4
    array-length v1, v0

    invoke-static {p1, v0, p2, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/b/a/a$a;

    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Le/a/a/b/a/a$a;-><init>([Ljava/lang/Object;ILe/a/a/b/a/b;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/b/a/a$a;

    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Le/a/a/b/a/a$a;-><init>([Ljava/lang/Object;ILe/a/a/b/a/b;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3
    array-length v1, v0

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    .line 4
    new-instance v1, Le/a/a/b/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Le/a/a/b/a/a$a;-><init>([Ljava/lang/Object;ILe/a/a/b/a/b;)V

    return-object v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    array-length v2, v1

    .line 5
    invoke-direct {p0, v1, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    sub-int v4, v2, p1

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 6
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 8
    invoke-static {v1, v5, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, p1, 0x1

    .line 9
    invoke-static {v1, v5, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-direct {p0, v2}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 12
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 13
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Le/a/a/b/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v1, v6

    .line 7
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 8
    aput-object v8, v4, v7

    move v7, v9

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eq v7, v2, :cond_2

    .line 9
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method removeRange(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    array-length v2, v1

    if-ltz p1, :cond_1

    if-gt p2, v2, :cond_1

    if-lt p2, p1, :cond_1

    sub-int v3, p2, p1

    sub-int v3, v2, v3

    sub-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 7
    invoke-static {v1, v4, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {v1, p2, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-direct {p0, v3}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 11
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Le/a/a/b/a/a;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    new-array v4, v2, [Ljava/lang/Object;

    .line 6
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v1, v6

    .line 7
    invoke-interface {p1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 8
    aput-object v8, v4, v7

    move v7, v9

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eq v7, v2, :cond_2

    .line 9
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/a/b/a/a;->a([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 4
    array-length v1, v0

    .line 5
    array-length v2, p1

    if-ge v2, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 9
    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/b/a/a;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
