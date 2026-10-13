.class final Lk/b/a/y/b;
.super Lk/b/a/y/f;
.source "StandardZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Lk/b/a/y/e;

.field private final lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lk/b/a/y/d;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Lk/b/a/g;

.field private final standardOffsets:[Lk/b/a/r;

.field private final standardTransitions:[J

.field private final wallOffsets:[Lk/b/a/r;


# direct methods
.method constructor <init>(Lk/b/a/r;Lk/b/a/r;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/r;",
            "Lk/b/a/r;",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;",
            "Ljava/util/List<",
            "Lk/b/a/y/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lk/b/a/y/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lk/b/a/y/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lk/b/a/y/b;->standardTransitions:[J

    .line 4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lk/b/a/r;

    iput-object v0, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    .line 5
    iget-object v0, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lk/b/a/y/b;->standardTransitions:[J

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/y/d;

    invoke-virtual {v2}, Lk/b/a/y/d;->toEpochSecond()J

    move-result-wide v2

    aput-wide v2, v0, p1

    .line 8
    iget-object v0, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk/b/a/y/d;

    invoke-virtual {p1}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object p1

    aput-object p1, v0, v2

    move p1, v2

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/y/d;

    .line 13
    invoke-virtual {v0}, Lk/b/a/y/d;->isGap()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v0}, Lk/b/a/y/d;->getDateTimeBefore()Lk/b/a/g;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v0}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v0}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0}, Lk/b/a/y/d;->getDateTimeBefore()Lk/b/a/g;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_2
    invoke-virtual {v0}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lk/b/a/g;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/b/a/g;

    iput-object p1, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    .line 20
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lk/b/a/r;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/b/a/r;

    iput-object p1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    .line 21
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    .line 22
    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 23
    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk/b/a/y/d;

    invoke-virtual {p2}, Lk/b/a/y/d;->getInstant()Lk/b/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide p2

    aput-wide p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 24
    :cond_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0xf

    if-gt p1, p2, :cond_4

    .line 25
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lk/b/a/y/e;

    invoke-interface {p5, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/b/a/y/e;

    iput-object p1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    return-void

    .line 26
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Too many transition rules"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private constructor <init>([J[Lk/b/a/r;[J[Lk/b/a/r;[Lk/b/a/y/e;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Lk/b/a/y/f;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lk/b/a/y/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 29
    iput-object p1, p0, Lk/b/a/y/b;->standardTransitions:[J

    .line 30
    iput-object p2, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    .line 31
    iput-object p3, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    .line 32
    iput-object p4, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    .line 33
    iput-object p5, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 35
    :goto_0
    array-length p5, p3

    if-ge p2, p5, :cond_1

    .line 36
    aget-object p5, p4, p2

    add-int/lit8 v0, p2, 0x1

    .line 37
    aget-object v1, p4, v0

    .line 38
    new-instance v2, Lk/b/a/y/d;

    aget-wide v3, p3, p2

    invoke-direct {v2, v3, v4, p5, v1}, Lk/b/a/y/d;-><init>(JLk/b/a/r;Lk/b/a/r;)V

    .line 39
    invoke-virtual {v2}, Lk/b/a/y/d;->isGap()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {v2}, Lk/b/a/y/d;->getDateTimeBefore()Lk/b/a/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v2}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v2}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v2}, Lk/b/a/y/d;->getDateTimeBefore()Lk/b/a/g;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move p2, v0

    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lk/b/a/g;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/b/a/g;

    iput-object p1, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    return-void
.end method

.method private a(JLk/b/a/r;)I
    .locals 2

    .line 36
    invoke-virtual {p3}, Lk/b/a/r;->getTotalSeconds()I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    const-wide/32 v0, 0x15180

    .line 37
    invoke-static {p1, p2, v0, v1}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide p1

    .line 38
    invoke-static {p1, p2}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/f;->getYear()I

    move-result p1

    return p1
.end method

.method private a(Lk/b/a/g;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 2
    invoke-virtual {p1, v0}, Lk/b/a/g;->isAfter(Lk/b/a/u/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p1}, Lk/b/a/g;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object v0

    const/4 v2, 0x0

    .line 4
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 5
    invoke-direct {p0, p1, v2}, Lk/b/a/y/b;->a(Lk/b/a/g;Lk/b/a/y/d;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    instance-of v5, v4, Lk/b/a/y/d;

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    return-object v2

    .line 7
    :cond_3
    iget-object v0, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    aget-object p1, p1, v1

    return-object p1

    :cond_4
    if-gez p1, :cond_5

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    goto :goto_2

    .line 9
    :cond_5
    iget-object v0, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_6

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    .line 10
    invoke-virtual {v1, v0}, Lk/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move p1, v2

    :cond_6
    :goto_2
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    .line 11
    iget-object v0, p0, Lk/b/a/y/b;->savingsLocalTransitions:[Lk/b/a/g;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 12
    aget-object v0, v0, v2

    .line 13
    iget-object v2, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    div-int/lit8 p1, p1, 0x2

    aget-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    .line 14
    aget-object p1, v2, p1

    .line 15
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v3}, Lk/b/a/r;->getTotalSeconds()I

    move-result v4

    if-le v2, v4, :cond_7

    .line 16
    new-instance v0, Lk/b/a/y/d;

    invoke-direct {v0, v1, v3, p1}, Lk/b/a/y/d;-><init>(Lk/b/a/g;Lk/b/a/r;Lk/b/a/r;)V

    return-object v0

    .line 17
    :cond_7
    new-instance v1, Lk/b/a/y/d;

    invoke-direct {v1, v0, v3, p1}, Lk/b/a/y/d;-><init>(Lk/b/a/g;Lk/b/a/r;Lk/b/a/r;)V

    return-object v1

    .line 18
    :cond_8
    iget-object v0, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private a(Lk/b/a/g;Lk/b/a/y/d;)Ljava/lang/Object;
    .locals 2

    .line 19
    invoke-virtual {p2}, Lk/b/a/y/d;->getDateTimeBefore()Lk/b/a/g;

    move-result-object v0

    .line 20
    invoke-virtual {p2}, Lk/b/a/y/d;->isGap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {p1, v0}, Lk/b/a/g;->isBefore(Lk/b/a/u/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p2}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/b/a/g;->isBefore(Lk/b/a/u/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 24
    :cond_1
    invoke-virtual {p2}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object p1

    return-object p1

    .line 25
    :cond_2
    invoke-virtual {p1, v0}, Lk/b/a/g;->isBefore(Lk/b/a/u/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    invoke-virtual {p2}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object p1

    return-object p1

    .line 27
    :cond_3
    invoke-virtual {p2}, Lk/b/a/y/d;->getDateTimeAfter()Lk/b/a/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk/b/a/g;->isBefore(Lk/b/a/u/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p2}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method private a(I)[Lk/b/a/y/d;
    .locals 5

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lk/b/a/y/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lk/b/a/y/d;

    if-eqz v1, :cond_0

    return-object v1

    .line 31
    :cond_0
    iget-object v1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    .line 32
    array-length v2, v1

    new-array v2, v2, [Lk/b/a/y/d;

    const/4 v3, 0x0

    .line 33
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 34
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lk/b/a/y/e;->createTransition(I)Lk/b/a/y/d;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x834

    if-ge p1, v1, :cond_2

    .line 35
    iget-object p1, p0, Lk/b/a/y/b;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v2
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/y/b;
    .locals 8

    .line 1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 2
    new-array v2, v0, [J

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-static {p0}, Lk/b/a/y/a;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4
    new-array v3, v0, [Lk/b/a/r;

    const/4 v0, 0x0

    .line 5
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 6
    invoke-static {p0}, Lk/b/a/y/a;->readOffset(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 8
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 9
    invoke-static {p0}, Lk/b/a/y/a;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 10
    new-array v5, v0, [Lk/b/a/r;

    const/4 v0, 0x0

    .line 11
    :goto_3
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 12
    invoke-static {p0}, Lk/b/a/y/a;->readOffset(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 14
    new-array v6, v0, [Lk/b/a/y/e;

    :goto_4
    if-ge v1, v0, :cond_4

    .line 15
    invoke-static {p0}, Lk/b/a/y/e;->readExternal(Ljava/io/DataInput;)Lk/b/a/y/e;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16
    :cond_4
    new-instance p0, Lk/b/a/y/b;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lk/b/a/y/b;-><init>([J[Lk/b/a/r;[J[Lk/b/a/r;[Lk/b/a/y/e;)V

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/y/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lk/b/a/y/a;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/y/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/y/b;

    .line 3
    iget-object v1, p0, Lk/b/a/y/b;->standardTransitions:[J

    iget-object v3, p1, Lk/b/a/y/b;->standardTransitions:[J

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    iget-object v3, p1, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    .line 4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    iget-object v3, p1, Lk/b/a/y/b;->savingsInstantTransitions:[J

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    iget-object v3, p1, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    iget-object p1, p1, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    .line 7
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 8
    :cond_2
    instance-of v1, p1, Lk/b/a/y/f$a;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lk/b/a/y/b;->isFixedOffset()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lk/b/a/e;->EPOCH:Lk/b/a/e;

    invoke-virtual {p0, v1}, Lk/b/a/y/b;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object v1

    check-cast p1, Lk/b/a/y/f$a;

    sget-object v3, Lk/b/a/e;->EPOCH:Lk/b/a/e;

    invoke-virtual {p1, v3}, Lk/b/a/y/f$a;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p1

    invoke-virtual {v1, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public getDaylightSavings(Lk/b/a/e;)Lk/b/a/d;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/y/b;->getStandardOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/y/b;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result p1

    invoke-virtual {v0}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lk/b/a/d;->ofSeconds(J)Lk/b/a/d;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(Lk/b/a/e;)Lk/b/a/r;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length p1, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p1, v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 3
    iget-object p1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Lk/b/a/y/b;->a(JLk/b/a/r;)I

    move-result p1

    .line 4
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v2, p1, v3

    .line 7
    invoke-virtual {v2}, Lk/b/a/y/d;->toEpochSecond()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 8
    invoke-virtual {v2}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Lk/b/a/y/d;->getOffsetAfter()Lk/b/a/r;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_3

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 11
    :cond_3
    iget-object v0, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getOffset(Lk/b/a/g;)Lk/b/a/r;
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(Lk/b/a/g;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of v0, p1, Lk/b/a/y/d;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lk/b/a/y/d;

    invoke-virtual {p1}, Lk/b/a/y/d;->getOffsetBefore()Lk/b/a/r;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    check-cast p1, Lk/b/a/r;

    return-object p1
.end method

.method public getStandardOffset(Lk/b/a/e;)Lk/b/a/r;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lk/b/a/y/b;->standardTransitions:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTransition(Lk/b/a/g;)Lk/b/a/y/d;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(Lk/b/a/g;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lk/b/a/y/d;

    if-eqz v0, :cond_0

    check-cast p1, Lk/b/a/y/d;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getTransitionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    new-instance v3, Lk/b/a/y/d;

    aget-wide v4, v2, v1

    iget-object v2, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    aget-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    invoke-direct {v3, v4, v5, v6, v2}, Lk/b/a/y/d;-><init>(JLk/b/a/r;Lk/b/a/r;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValidOffsets(Lk/b/a/g;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/g;",
            ")",
            "Ljava/util/List<",
            "Lk/b/a/r;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(Lk/b/a/g;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lk/b/a/y/d;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lk/b/a/y/d;

    invoke-virtual {p1}, Lk/b/a/y/d;->getValidOffsets()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Lk/b/a/r;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isDaylightSavings(Lk/b/a/e;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/y/b;->getStandardOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/y/b;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isFixedOffset()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidOffset(Lk/b/a/g;Lk/b/a/r;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/y/b;->getValidOffsets(Lk/b/a/g;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nextTransition(Lk/b/a/e;)Lk/b/a/y/d;
    .locals 11

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, p1, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_5

    .line 4
    iget-object p1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length p1, p1

    if-nez p1, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object p1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-direct {p0, v2, v3, p1}, Lk/b/a/y/b;->a(JLk/b/a/r;)I

    move-result p1

    .line 6
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object v0

    .line 7
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, v0, v6

    .line 8
    invoke-virtual {v7}, Lk/b/a/y/d;->toEpochSecond()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-gez v10, :cond_2

    return-object v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const v0, 0x3b9ac9ff

    if-ge p1, v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 9
    invoke-direct {p0, p1}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object p1

    .line 10
    aget-object p1, p1, v5

    return-object p1

    :cond_4
    return-object v1

    .line 11
    :cond_5
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_6

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 12
    :goto_1
    new-instance v0, Lk/b/a/y/d;

    iget-object v1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    aget-wide v2, v1, p1

    iget-object v1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    aget-object v4, v1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-direct {v0, v2, v3, v4, p1}, Lk/b/a/y/d;-><init>(JLk/b/a/r;Lk/b/a/r;)V

    return-object v0
.end method

.method public previousTransition(Lk/b/a/e;)Lk/b/a/y/d;
    .locals 11

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Lk/b/a/e;->getNano()I

    move-result p1

    if-lez p1, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 4
    :cond_1
    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, p1, v0

    .line 5
    iget-object p1, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length p1, p1

    if-lez p1, :cond_4

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 6
    iget-object p1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    .line 7
    invoke-direct {p0, v2, v3, p1}, Lk/b/a/y/b;->a(JLk/b/a/r;)I

    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object v6

    .line 9
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    :goto_0
    if-ltz v7, :cond_3

    .line 10
    aget-object v8, v6, v7

    invoke-virtual {v8}, Lk/b/a/y/d;->toEpochSecond()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-lez v10, :cond_2

    .line 11
    aget-object p1, v6, v7

    return-object p1

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0, v4, v5, p1}, Lk/b/a/y/b;->a(JLk/b/a/r;)I

    move-result p1

    add-int/lit8 v0, v0, -0x1

    if-le v0, p1, :cond_4

    .line 13
    invoke-direct {p0, v0}, Lk/b/a/y/b;->a(I)[Lk/b/a/y/d;

    move-result-object p1

    .line 14
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1

    .line 15
    :cond_4
    iget-object p1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_5

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_5
    if-gtz p1, :cond_6

    return-object v1

    .line 16
    :cond_6
    new-instance v0, Lk/b/a/y/d;

    iget-object v1, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    add-int/lit8 v2, p1, -0x1

    aget-wide v3, v1, v2

    iget-object v1, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    aget-object v2, v1, v2

    aget-object p1, v1, p1

    invoke-direct {v0, v3, v4, v2, p1}, Lk/b/a/y/d;-><init>(JLk/b/a/r;Lk/b/a/r;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StandardZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk/b/a/y/b;->standardTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lk/b/a/y/b;->standardTransitions:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    .line 3
    invoke-static {v4, v5, p1}, Lk/b/a/y/a;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/b/a/y/b;->standardOffsets:[Lk/b/a/r;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-static {v4, p1}, Lk/b/a/y/a;->writeOffset(Lk/b/a/r;Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lk/b/a/y/b;->savingsInstantTransitions:[J

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-wide v4, v0, v3

    .line 8
    invoke-static {v4, v5, p1}, Lk/b/a/y/a;->writeEpochSec(JLjava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iget-object v0, p0, Lk/b/a/y/b;->wallOffsets:[Lk/b/a/r;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 10
    invoke-static {v4, p1}, Lk/b/a/y/a;->writeOffset(Lk/b/a/r;Ljava/io/DataOutput;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11
    :cond_3
    iget-object v0, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 12
    iget-object v0, p0, Lk/b/a/y/b;->lastRules:[Lk/b/a/y/e;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 13
    invoke-virtual {v3, p1}, Lk/b/a/y/e;->writeExternal(Ljava/io/DataOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method
