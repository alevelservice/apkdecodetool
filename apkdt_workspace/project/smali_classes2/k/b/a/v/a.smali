.class final Lk/b/a/v/a;
.super Lk/b/a/w/c;
.source "DateTimeBuilder.java"

# interfaces
.implements Lk/b/a/x/e;
.implements Ljava/lang/Cloneable;


# instance fields
.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field f:Lk/b/a/u/i;

.field g:Lk/b/a/q;

.field h:Lk/b/a/u/b;

.field i:Lk/b/a/h;

.field j:Z

.field k:Lk/b/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    return-void
.end method

.method private a(Lk/b/a/x/i;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0, v1}, Lk/b/a/u/b;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/x/e;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/x/e;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz v0, :cond_2

    .line 59
    invoke-direct {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/x/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lk/b/a/f;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/u/b;)V

    .line 40
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/x/i;

    .line 41
    instance-of v2, v1, Lk/b/a/x/a;

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v1}, Lk/b/a/x/i;->isDateBased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p1, v1}, Lk/b/a/f;->getLong(Lk/b/a/x/i;)J

    move-result-wide v2
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    iget-object v4, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflict found: Field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " differs from "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " derived from "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lk/b/a/q;)V
    .locals 3

    .line 47
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/e;->ofEpochSecond(J)Lk/b/a/e;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    invoke-virtual {v1, v0, p1}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/u/b;)V

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalDate()Lk/b/a/u/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;Lk/b/a/u/b;)V

    .line 52
    :goto_0
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {p1}, Lk/b/a/u/g;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->toSecondOfDay()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    return-void
.end method

.method private a(Lk/b/a/v/i;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    instance-of v0, v0, Lk/b/a/u/n;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lk/b/a/u/n;->resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/f;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lk/b/a/x/e;)V
    .locals 7

    .line 60
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/x/i;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 65
    invoke-interface {p1, v2}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    invoke-interface {p1, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v1, v5, v3

    if-nez v1, :cond_1

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lk/b/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cross check failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " vs "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    nop

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lk/b/a/x/i;Lk/b/a/h;)V
    .locals 6

    .line 31
    invoke-virtual {p2}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " differs from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " while resolving  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lk/b/a/x/i;Lk/b/a/u/b;)V
    .locals 6

    .line 24
    iget-object v0, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    invoke-virtual {p2}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p2}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    .line 26
    iget-object p2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v2, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lk/b/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " differs from "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {v0, v1}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " while resolving  "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lk/b/a/x/i;J)Lk/b/a/v/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 77
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/q;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/q;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Lk/b/a/v/i;)V
    .locals 11

    .line 2
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->CLOCK_HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->CLOCK_HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_1

    .line 5
    sget-object v0, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p1, v0, :cond_0

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lk/b/a/x/a;->CLOCK_HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, v3, v4}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    const-wide/16 v5, 0x18

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    move-wide v3, v1

    :cond_2
    invoke-virtual {p0, v0, v3, v4}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 8
    :cond_3
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->CLOCK_HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0xc

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v5, Lk/b/a/x/a;->CLOCK_HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 10
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_5

    .line 11
    sget-object v0, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p1, v0, :cond_4

    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget-object v0, Lk/b/a/x/a;->CLOCK_HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-virtual {v0, v5, v6}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 13
    :cond_5
    :goto_1
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    cmp-long v7, v5, v3

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move-wide v1, v5

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 14
    :cond_7
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_9

    .line 15
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->AMPM_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    sget-object v0, Lk/b/a/x/a;->AMPM_OF_DAY:Lk/b/a/x/a;

    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 17
    :cond_8
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 19
    :cond_9
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->AMPM_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->AMPM_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 21
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v5, Lk/b/a/x/a;->HOUR_OF_AMPM:Lk/b/a/x/a;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 22
    sget-object v2, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    mul-long v0, v0, v3

    add-long/2addr v0, v5

    invoke-virtual {p0, v2, v0, v1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 23
    :cond_a
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 25
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v2, :cond_b

    .line 26
    sget-object v2, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v2, v0, v1}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 27
    :cond_b
    sget-object v2, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    const-wide/32 v3, 0x3b9aca00

    div-long v5, v0, v3

    invoke-virtual {p0, v2, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 28
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    rem-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 29
    :cond_c
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->MICRO_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_e

    .line 30
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->MICRO_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 31
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_d

    .line 32
    sget-object v0, Lk/b/a/x/a;->MICRO_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, v3, v4}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 33
    :cond_d
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    div-long v5, v3, v1

    invoke-virtual {p0, v0, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 34
    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    rem-long/2addr v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 35
    :cond_e
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->MILLI_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_10

    .line 36
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v5, Lk/b/a/x/a;->MILLI_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 37
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_f

    .line 38
    sget-object v0, Lk/b/a/x/a;->MILLI_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, v5, v6}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 39
    :cond_f
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    div-long v7, v5, v3

    invoke-virtual {p0, v0, v7, v8}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 40
    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    rem-long/2addr v5, v3

    invoke-virtual {p0, v0, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 41
    :cond_10
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v5, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v5, 0x3c

    if-eqz v0, :cond_12

    .line 42
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v7, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 43
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_11

    .line 44
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, v7, v8}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 45
    :cond_11
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    const-wide/16 v9, 0xe10

    div-long v9, v7, v9

    invoke-virtual {p0, v0, v9, v10}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 46
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    div-long v9, v7, v5

    rem-long/2addr v9, v5

    invoke-virtual {p0, v0, v9, v10}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 47
    sget-object v0, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    rem-long/2addr v7, v5

    invoke-virtual {p0, v0, v7, v8}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 48
    :cond_12
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v7, Lk/b/a/x/a;->MINUTE_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v7, Lk/b/a/x/a;->MINUTE_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 50
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_13

    .line 51
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0, v7, v8}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 52
    :cond_13
    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    div-long v9, v7, v5

    invoke-virtual {p0, v0, v9, v10}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 53
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    rem-long/2addr v7, v5

    invoke-virtual {p0, v0, v7, v8}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 54
    :cond_14
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p1, v0, :cond_16

    .line 55
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 56
    sget-object p1, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 57
    :cond_15
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 58
    sget-object p1, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 59
    :cond_16
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 60
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 61
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 62
    sget-object p1, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    mul-long v5, v5, v3

    rem-long/2addr v7, v3

    add-long/2addr v5, v7

    invoke-virtual {p0, p1, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 63
    :cond_17
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 64
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 65
    sget-object p1, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    div-long/2addr v5, v3

    invoke-virtual {p0, p1, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 66
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_18
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 68
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 69
    sget-object p1, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    div-long/2addr v5, v1

    invoke-virtual {p0, p1, v5, v6}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    .line 70
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_19
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 72
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 73
    sget-object p1, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    mul-long v0, v0, v3

    invoke-virtual {p0, p1, v0, v1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    goto :goto_3

    .line 74
    :cond_1a
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 75
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 76
    sget-object p1, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    mul-long v3, v3, v1

    invoke-virtual {p0, p1, v3, v4}, Lk/b/a/v/a;->a(Lk/b/a/x/i;J)Lk/b/a/v/a;

    :cond_1b
    :goto_3
    return-void
.end method

.method private c()V
    .locals 6

    .line 22
    iget-object v0, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->SECOND_OF_DAY:Lk/b/a/x/a;

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    .line 25
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    :cond_0
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 28
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->MICRO_OF_SECOND:Lk/b/a/x/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->MILLI_OF_SECOND:Lk/b/a/x/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lk/b/a/v/i;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_8

    .line 1
    iget-object v3, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk/b/a/x/i;

    .line 3
    iget-object v5, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v4, v5, p0, p1}, Lk/b/a/x/i;->resolve(Ljava/util/Map;Lk/b/a/x/e;Lk/b/a/v/i;)Lk/b/a/x/e;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 4
    instance-of v2, v5, Lk/b/a/u/g;

    if-eqz v2, :cond_3

    .line 5
    check-cast v5, Lk/b/a/u/g;

    .line 6
    iget-object v2, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v5}, Lk/b/a/u/g;->getZone()Lk/b/a/q;

    move-result-object v2

    iput-object v2, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v5}, Lk/b/a/u/g;->getZone()Lk/b/a/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    :goto_1
    invoke-virtual {v5}, Lk/b/a/u/g;->toLocalDateTime()Lk/b/a/u/c;

    move-result-object v5

    goto :goto_2

    .line 10
    :cond_2
    new-instance p1, Lk/b/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_2
    instance-of v2, v5, Lk/b/a/u/b;

    if-eqz v2, :cond_4

    .line 12
    check-cast v5, Lk/b/a/u/b;

    invoke-direct {p0, v4, v5}, Lk/b/a/v/a;->a(Lk/b/a/x/i;Lk/b/a/u/b;)V

    goto :goto_3

    .line 13
    :cond_4
    instance-of v2, v5, Lk/b/a/h;

    if-eqz v2, :cond_5

    .line 14
    check-cast v5, Lk/b/a/h;

    invoke-direct {p0, v4, v5}, Lk/b/a/v/a;->a(Lk/b/a/x/i;Lk/b/a/h;)V

    goto :goto_3

    .line 15
    :cond_5
    instance-of v2, v5, Lk/b/a/u/c;

    if-eqz v2, :cond_6

    .line 16
    check-cast v5, Lk/b/a/u/c;

    .line 17
    invoke-virtual {v5}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lk/b/a/v/a;->a(Lk/b/a/x/i;Lk/b/a/u/b;)V

    .line 18
    invoke-virtual {v5}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lk/b/a/v/a;->a(Lk/b/a/x/i;Lk/b/a/h;)V

    goto :goto_3

    .line 19
    :cond_6
    new-instance p1, Lk/b/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_7
    iget-object v5, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    if-eq v1, v2, :cond_a

    if-lez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0

    .line 21
    :cond_a
    new-instance p1, Lk/b/a/b;

    const-string v0, "Badly written field"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private d()V
    .locals 4

    .line 45
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    iget-object v2, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    invoke-virtual {v1, v2}, Lk/b/a/u/b;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lk/b/a/u/c;->atZone(Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object v0

    sget-object v1, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-virtual {v0, v1}, Lk/b/a/u/g;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    .line 49
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    iget-object v1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    invoke-virtual {v0, v1}, Lk/b/a/u/b;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->atZone(Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object v0

    sget-object v1, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-virtual {v0, v1}, Lk/b/a/u/g;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lk/b/a/v/i;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v1, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2
    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v2, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    iget-object v2, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v3, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4
    iget-object v3, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v4, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez v1, :cond_2

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    return-void

    .line 5
    :cond_3
    sget-object v4, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    const/4 v5, 0x0

    const-wide/16 v6, 0x18

    const-wide/16 v8, 0x0

    if-eq p1, v4, :cond_b

    if-eqz v0, :cond_f

    .line 6
    sget-object v4, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p1, v4, :cond_7

    .line 7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long p1, v10, v6

    if-nez p1, :cond_7

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v8

    if-nez p1, :cond_7

    :cond_4
    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v8

    if-nez p1, :cond_7

    :cond_5
    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v8

    if-nez p1, :cond_7

    .line 11
    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 p1, 0x1

    .line 12
    invoke-static {p1}, Lk/b/a/m;->ofDays(I)Lk/b/a/m;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    .line 13
    :cond_7
    sget-object p1, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    if-eqz v1, :cond_a

    .line 14
    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    if-eqz v2, :cond_9

    .line 15
    sget-object v1, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v1

    if-eqz v3, :cond_8

    .line 16
    sget-object v2, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 17
    invoke-static {p1, v0, v1, v2}, Lk/b/a/h;->of(IIII)Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    goto/16 :goto_0

    .line 18
    :cond_8
    invoke-static {p1, v0, v1}, Lk/b/a/h;->of(III)Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_f

    .line 19
    invoke-static {p1, v0}, Lk/b/a/h;->of(II)Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    goto/16 :goto_0

    :cond_a
    if-nez v2, :cond_f

    if-nez v3, :cond_f

    .line 20
    invoke-static {p1, v5}, Lk/b/a/h;->of(II)Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_f

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    if-eqz v1, :cond_e

    if-eqz v2, :cond_d

    if-nez v3, :cond_c

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_c
    const-wide v4, 0x34630b8a000L

    .line 23
    invoke-static {v10, v11, v4, v5}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v4

    .line 24
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v6, 0xdf8475800L

    invoke-static {v0, v1, v6, v7}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    .line 25
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v4, v5, v6, v7}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    .line 26
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    const-wide v2, 0x4e94914f0000L

    .line 27
    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    .line 28
    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->c(JJ)J

    move-result-wide v0

    .line 29
    invoke-static {v0, v1}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    .line 30
    invoke-static {p1}, Lk/b/a/m;->ofDays(I)Lk/b/a/m;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    goto :goto_0

    :cond_d
    const-wide/16 v2, 0xe10

    .line 31
    invoke-static {v10, v11, v2, v3}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v2

    .line 32
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3c

    invoke-static {v0, v1, v4, v5}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    .line 33
    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    .line 34
    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->c(JJ)J

    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Lk/b/a/h;->ofSecondOfDay(J)Lk/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    .line 36
    invoke-static {p1}, Lk/b/a/m;->ofDays(I)Lk/b/a/m;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    goto :goto_0

    .line 37
    :cond_e
    invoke-static {v10, v11, v6, v7}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/w/d;->a(J)I

    move-result p1

    const/16 v0, 0x18

    .line 38
    invoke-static {v10, v11, v0}, Lk/b/a/w/d;->a(JI)I

    move-result v0

    int-to-long v0, v0

    long-to-int v1, v0

    .line 39
    invoke-static {v1, v5}, Lk/b/a/h;->of(II)Lk/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk/b/a/v/a;->a(Lk/b/a/h;)V

    .line 40
    invoke-static {p1}, Lk/b/a/m;->ofDays(I)Lk/b/a/m;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    .line 41
    :cond_f
    :goto_0
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->HOUR_OF_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->MINUTE_OF_HOUR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->SECOND_OF_MINUTE:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    sget-object v0, Lk/b/a/x/a;->NANO_OF_SECOND:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 69
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/v/i;Ljava/util/Set;)Lk/b/a/v/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/v/i;",
            "Ljava/util/Set<",
            "Lk/b/a/x/i;",
            ">;)",
            "Lk/b/a/v/a;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 9
    iget-object v0, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 10
    :cond_0
    invoke-direct {p0}, Lk/b/a/v/a;->b()V

    .line 11
    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/v/i;)V

    .line 12
    invoke-direct {p0, p1}, Lk/b/a/v/a;->b(Lk/b/a/v/i;)V

    .line 13
    invoke-direct {p0, p1}, Lk/b/a/v/a;->c(Lk/b/a/v/i;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 14
    invoke-direct {p0}, Lk/b/a/v/a;->b()V

    .line 15
    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/v/i;)V

    .line 16
    invoke-direct {p0, p1}, Lk/b/a/v/a;->b(Lk/b/a/v/i;)V

    .line 17
    :cond_1
    invoke-direct {p0, p1}, Lk/b/a/v/a;->d(Lk/b/a/v/i;)V

    .line 18
    invoke-direct {p0}, Lk/b/a/v/a;->a()V

    .line 19
    iget-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lk/b/a/m;->isZero()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz p2, :cond_2

    .line 20
    iget-object p2, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    invoke-virtual {p1, p2}, Lk/b/a/u/b;->plus(Lk/b/a/x/h;)Lk/b/a/u/b;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    .line 21
    sget-object p1, Lk/b/a/m;->ZERO:Lk/b/a/m;

    iput-object p1, p0, Lk/b/a/v/a;->k:Lk/b/a/m;

    .line 22
    :cond_2
    invoke-direct {p0}, Lk/b/a/v/a;->c()V

    .line 23
    invoke-direct {p0}, Lk/b/a/v/a;->d()V

    return-object p0
.end method

.method a(Lk/b/a/x/i;J)Lk/b/a/v/a;
    .locals 4

    const-string v0, "field"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lk/b/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lk/b/a/v/a;->b(Lk/b/a/x/i;J)Lk/b/a/v/a;

    return-object p0
.end method

.method a(Lk/b/a/h;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    return-void
.end method

.method a(Lk/b/a/u/b;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    return-void
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 3

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lk/b/a/v/a;->a(Lk/b/a/x/i;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk/b/a/u/b;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lk/b/a/h;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, p1}, Lk/b/a/u/b;->isSupported(Lk/b/a/x/i;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1, p1}, Lk/b/a/h;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
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
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 6
    iget-object p1, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object v1

    :cond_2
    return-object v1

    .line 7
    :cond_3
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 8
    iget-object p1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    return-object p1

    .line 9
    :cond_4
    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_7

    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_6

    return-object v1

    .line 11
    :cond_6
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_7
    :goto_0
    invoke-interface {p1, p0}, Lk/b/a/x/k;->a(Lk/b/a/x/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DateTimeBuilder["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "fields="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/a;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/v/a;->f:Lk/b/a/u/i;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/v/a;->g:Lk/b/a/q;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/v/a;->h:Lk/b/a/u/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/a;->i:Lk/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
