.class final enum Lk/b/a/x/c$b$a;
.super Lk/b/a/x/c$b;
.source "IsoFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/x/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lk/b/a/x/c$b;-><init>(Ljava/lang/String;ILk/b/a/x/c$a;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lk/b/a/x/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/x/c$b$a;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lk/b/a/x/c$b$a;->range()Lk/b/a/x/n;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 3
    sget-object v2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    add-long/2addr v3, p2

    invoke-interface {p1, v2, v3, v4}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public getBaseUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    return-object v0
.end method

.method public getFrom(Lk/b/a/x/e;)J
    .locals 5

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v0

    .line 3
    sget-object v1, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v1

    .line 4
    sget-object v2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v2

    .line 5
    invoke-static {}, Lk/b/a/x/c$b;->access$200()[I

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    sget-object v4, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v4, v2, v3}, Lk/b/a/u/n;->isLeapYear(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    aget p1, p1, v1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 6
    :cond_1
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRangeUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c;->e:Lk/b/a/x/l;

    return-object v0
.end method

.method public isSupportedBy(Lk/b/a/x/e;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    .line 2
    invoke-interface {p1, v0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lk/b/a/x/c$b;->access$100(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public range()Lk/b/a/x/n;
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x5a

    const-wide/16 v4, 0x5c

    .line 1
    invoke-static/range {v0 .. v5}, Lk/b/a/x/n;->of(JJJ)Lk/b/a/x/n;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;
    .locals 8

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    const-wide/16 v2, 0x5b

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    .line 3
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    .line 4
    sget-object p1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {p1, v0, v1}, Lk/b/a/u/n;->isLeapYear(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v4, v5, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x5a

    invoke-static {v4, v5, v0, v1}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    const-wide/16 v6, 0x2

    cmp-long p1, v0, v6

    if-nez p1, :cond_2

    .line 5
    invoke-static {v4, v5, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v2, 0x4

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lk/b/a/x/c$b$a;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-wide/16 v0, 0x5c

    .line 7
    invoke-static {v4, v5, v0, v1}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: DayOfQuarter"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Ljava/util/Map;Lk/b/a/x/e;Lk/b/a/v/i;)Lk/b/a/x/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/x/e;",
            "Lk/b/a/v/i;",
            ")",
            "Lk/b/a/x/e;"
        }
    .end annotation

    .line 1
    sget-object p2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 2
    sget-object v0, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz p2, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    sget-object v1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p2

    .line 4
    sget-object v1, Lk/b/a/x/c$b;->DAY_OF_QUARTER:Lk/b/a/x/c$b;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    sget-object v3, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    const/4 v4, 0x3

    const-wide/16 v5, 0x1

    const/4 v7, 0x1

    if-ne p3, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 7
    invoke-static {p2, v7, v7}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p2

    .line 8
    invoke-static {v8, v9, v5, v6}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v7

    invoke-static {v7, v8, v4}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lk/b/a/f;->plusMonths(J)Lk/b/a/f;

    move-result-object p2

    .line 9
    invoke-static {v1, v2, v5, v6}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p2

    goto :goto_3

    .line 10
    :cond_1
    sget-object v3, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    invoke-interface {v3}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v0, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    invoke-virtual {v3, v8, v9, v0}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v0

    .line 11
    sget-object v3, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p3, v3, :cond_5

    const/16 p3, 0x5c

    const/16 v3, 0x5b

    if-ne v0, v7, :cond_3

    .line 12
    sget-object p3, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    int-to-long v8, p2

    invoke-virtual {p3, v8, v9}, Lk/b/a/u/n;->isLeapYear(J)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x5a

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    :goto_0
    const/16 p3, 0x5b

    :cond_4
    :goto_1
    int-to-long v8, p3

    .line 13
    invoke-static {v5, v6, v8, v9}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p3

    invoke-virtual {p3, v1, v2, p0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p0}, Lk/b/a/x/c$b$a;->range()Lk/b/a/x/n;

    move-result-object p3

    invoke-virtual {p3, v1, v2, p0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    :goto_2
    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v7

    .line 15
    invoke-static {p2, v0, v7}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p2

    sub-long/2addr v1, v5

    invoke-virtual {p2, v1, v2}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p2

    .line 16
    :goto_3
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object p3, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p3, Lk/b/a/x/c$b;->QUARTER_OF_YEAR:Lk/b/a/x/c$b;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_6
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DayOfQuarter"

    return-object v0
.end method
