.class final enum Lk/b/a/x/c$b$c;
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lk/b/a/x/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lk/b/a/x/c$b$c;->range()Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/x/c$b$c;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p2

    sget-object v0, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-interface {p1, p2, p3, v0}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public getBaseUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "locale"

    .line 1
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "Week"

    return-object p1
.end method

.method public getFrom(Lk/b/a/x/e;)J
    .locals 2

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/c$b;->access$400(Lk/b/a/f;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRangeUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c;->d:Lk/b/a/x/l;

    return-object v0
.end method

.method public isSupportedBy(Lk/b/a/x/e;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

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

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    .line 1
    invoke-static/range {v0 .. v5}, Lk/b/a/x/n;->of(JJJ)Lk/b/a/x/n;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/c$b;->access$300(Lk/b/a/f;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Ljava/util/Map;Lk/b/a/x/e;Lk/b/a/v/i;)Lk/b/a/x/e;
    .locals 18
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 2
    sget-object v4, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v3, :cond_5

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object v5, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-interface {v5}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v3, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-virtual {v5, v6, v7, v3}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v3

    .line 4
    sget-object v5, Lk/b/a/x/c$b;->WEEK_OF_WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 5
    sget-object v7, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    const/4 v8, 0x4

    const/4 v9, 0x1

    const-wide/16 v10, 0x1

    if-ne v2, v7, :cond_3

    .line 6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x7

    cmp-long v2, v12, v16

    if-lez v2, :cond_1

    sub-long/2addr v12, v10

    .line 7
    div-long v14, v12, v16

    .line 8
    rem-long v12, v12, v16

    add-long/2addr v12, v10

    goto :goto_0

    :cond_1
    cmp-long v2, v12, v10

    if-gez v2, :cond_2

    .line 9
    div-long v14, v12, v16

    sub-long/2addr v14, v10

    .line 10
    rem-long v12, v12, v16

    add-long v12, v12, v16

    .line 11
    :cond_2
    :goto_0
    invoke-static {v3, v9, v8}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    sub-long/2addr v5, v10

    invoke-virtual {v2, v5, v6}, Lk/b/a/f;->plusWeeks(J)Lk/b/a/f;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lk/b/a/f;->plusWeeks(J)Lk/b/a/f;

    move-result-object v2

    sget-object v3, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-virtual {v2, v3, v12, v13}, Lk/b/a/f;->with(Lk/b/a/x/i;J)Lk/b/a/f;

    move-result-object v2

    goto :goto_2

    .line 12
    :cond_3
    sget-object v7, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v4

    .line 13
    sget-object v7, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne v2, v7, :cond_4

    .line 14
    invoke-static {v3, v9, v8}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    .line 15
    invoke-static {v2}, Lk/b/a/x/c$b;->access$300(Lk/b/a/f;)Lk/b/a/x/n;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v5, v6, v0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lk/b/a/x/c$b$c;->range()Lk/b/a/x/n;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 18
    :goto_1
    invoke-static {v3, v9, v8}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object v2

    sub-long/2addr v5, v10

    invoke-virtual {v2, v5, v6}, Lk/b/a/f;->plusWeeks(J)Lk/b/a/f;

    move-result-object v2

    sget-object v3, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lk/b/a/f;->with(Lk/b/a/x/i;J)Lk/b/a/f;

    move-result-object v2

    .line 19
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v3, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v3, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_5
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
