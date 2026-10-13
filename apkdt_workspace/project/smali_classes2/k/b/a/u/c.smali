.class public abstract Lk/b/a/u/c;
.super Lk/b/a/w/b;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lk/b/a/u/b;",
        ">",
        "Lk/b/a/w/b;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/u/c<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lk/b/a/u/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/u/c$a;

    invoke-direct {v0}, Lk/b/a/u/c$a;-><init>()V

    sput-object v0, Lk/b/a/u/c;->e:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/w/b;-><init>()V

    return-void
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/u/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/e;",
            ")",
            "Lk/b/a/u/c<",
            "*>;"
        }
    .end annotation

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lk/b/a/u/c;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lk/b/a/u/c;

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    invoke-interface {p0, v0}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/i;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p0}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Chronology found to create ChronoLocalDateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lk/b/a/u/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/u/c;->e:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract atZone(Lk/b/a/q;)Lk/b/a/u/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/u/c;

    invoke-virtual {p0, p1}, Lk/b/a/u/c;->compareTo(Lk/b/a/u/c;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/u/c;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)I"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/u/b;->compareTo(Lk/b/a/u/b;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lk/b/a/u/c;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/u/c;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->compareTo(Lk/b/a/u/i;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/u/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/u/c;

    invoke-virtual {p0, p1}, Lk/b/a/u/c;->compareTo(Lk/b/a/u/c;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Lk/b/a/v/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "formatter"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p0}, Lk/b/a/v/b;->a(Lk/b/a/x/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChronology()Lk/b/a/u/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/h;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/u/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isBefore(Lk/b/a/u/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isEqual(Lk/b/a/u/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lk/b/a/x/l;",
            ")",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lk/b/a/w/b;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/h;",
            ")",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->minus(Lk/b/a/x/h;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/c;->minus(JLk/b/a/x/l;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/c;->minus(Lk/b/a/x/h;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract plus(JLk/b/a/x/l;)Lk/b/a/u/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lk/b/a/x/l;",
            ")",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/h;",
            ")",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->plus(Lk/b/a/x/h;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/c;->plus(JLk/b/a/x/l;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/c;->plus(Lk/b/a/x/h;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/c;->getChronology()Lk/b/a/u/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    sget-object p1, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toEpochSecond(Lk/b/a/r;)J
    .locals 4

    const-string v0, "offset"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long v0, v0, v2

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/h;->toSecondOfDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toInstant(Lk/b/a/r;)Lk/b/a/e;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/c;->toEpochSecond(Lk/b/a/r;)J

    move-result-wide v0

    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->getNano()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public abstract toLocalDate()Lk/b/a/u/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Lk/b/a/h;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/u/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/f;",
            ")",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-super {p0, p1}, Lk/b/a/w/b;->with(Lk/b/a/x/f;)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract with(Lk/b/a/x/i;J)Lk/b/a/u/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "J)",
            "Lk/b/a/u/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/c;->with(Lk/b/a/x/f;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/c;->with(Lk/b/a/x/i;J)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method
