.class public final Lk/b/a/u/k;
.super Lk/b/a/u/i;
.source "HijrahChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lk/b/a/u/k;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2b668b59cb61d531L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk/b/a/u/k;

    invoke-direct {v0}, Lk/b/a/u/k;-><init>()V

    sput-object v0, Lk/b/a/u/k;->INSTANCE:Lk/b/a/u/k;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/k;->h:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/k;->i:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/k;->j:Ljava/util/HashMap;

    .line 5
    sget-object v0, Lk/b/a/u/k;->h:Ljava/util/HashMap;

    const-string v1, "BH"

    const-string v2, "HE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lk/b/a/u/k;->i:Ljava/util/HashMap;

    const-string v1, "B.H."

    const-string v3, "H.E."

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lk/b/a/u/k;->j:Ljava/util/HashMap;

    const-string v1, "Before Hijrah"

    const-string v3, "Hijrah Era"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/u/i;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/k;->INSTANCE:Lk/b/a/u/k;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lk/b/a/u/j;III)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lk/b/a/u/k;->date(Lk/b/a/u/j;III)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lk/b/a/x/e;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/k;->date(Lk/b/a/x/e;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lk/b/a/u/l;
    .locals 0

    .line 5
    invoke-static {p1, p2, p3}, Lk/b/a/u/l;->of(III)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public date(Lk/b/a/u/j;III)Lk/b/a/u/l;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Lk/b/a/u/i;->date(Lk/b/a/u/j;III)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/l;

    return-object p1
.end method

.method public date(Lk/b/a/x/e;)Lk/b/a/u/l;
    .locals 2

    .line 6
    instance-of v0, p1, Lk/b/a/u/l;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lk/b/a/u/l;

    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lk/b/a/u/l;->ofEpochDay(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateEpochDay(J)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/k;->dateEpochDay(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lk/b/a/u/l;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/u/l;->of(Lk/b/a/f;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow()Lk/b/a/u/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/k;->dateNow()Lk/b/a/u/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lk/b/a/a;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/k;->dateNow(Lk/b/a/a;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lk/b/a/q;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/k;->dateNow(Lk/b/a/q;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lk/b/a/u/l;
    .locals 1

    .line 4
    invoke-super {p0}, Lk/b/a/u/i;->dateNow()Lk/b/a/u/b;

    move-result-object v0

    check-cast v0, Lk/b/a/u/l;

    return-object v0
.end method

.method public dateNow(Lk/b/a/a;)Lk/b/a/u/l;
    .locals 1

    const-string v0, "clock"

    .line 6
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-super {p0, p1}, Lk/b/a/u/i;->dateNow(Lk/b/a/a;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/l;

    return-object p1
.end method

.method public dateNow(Lk/b/a/q;)Lk/b/a/u/l;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/i;->dateNow(Lk/b/a/q;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/l;

    return-object p1
.end method

.method public bridge synthetic dateYearDay(II)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/k;->dateYearDay(II)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/k;->dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lk/b/a/u/l;
    .locals 2

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0, v0}, Lk/b/a/u/l;->of(III)Lk/b/a/u/l;

    move-result-object p1

    sub-int/2addr p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lk/b/a/u/l;->plusDays(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/l;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lk/b/a/u/i;->dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/l;

    return-object p1
.end method

.method public bridge synthetic eraOf(I)Lk/b/a/u/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/k;->eraOf(I)Lk/b/a/u/m;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lk/b/a/u/m;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/b;

    const-string v0, "invalid Hijrah era"

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    sget-object p1, Lk/b/a/u/m;->BEFORE_AH:Lk/b/a/u/m;

    return-object p1
.end method

.method public eras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk/b/a/u/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lk/b/a/u/m;->values()[Lk/b/a/u/m;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "islamic-umalqura"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Hijrah-umalqura"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lk/b/a/u/l;->isLeapYear(J)Z

    move-result p1

    return p1
.end method

.method public localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/e;",
            ")",
            "Lk/b/a/u/c<",
            "Lk/b/a/u/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lk/b/a/u/j;I)I
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/u/m;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/u/m;->AH:Lk/b/a/u/m;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p2, p2, 0x1

    :goto_0
    return p2

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be HijrahEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Lk/b/a/x/a;)Lk/b/a/x/n;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lk/b/a/x/a;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/k;->resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/v/i;",
            ")",
            "Lk/b/a/u/l;"
        }
    .end annotation

    .line 2
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/u/k;->dateEpochDay(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lk/b/a/x/a;->PROLEPTIC_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p2, v2, :cond_1

    .line 6
    sget-object v2, Lk/b/a/x/a;->PROLEPTIC_MONTH:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 7
    :cond_1
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0xc

    invoke-static {v3, v4, v5}, Lk/b/a/w/d;->a(JI)I

    move-result v3

    add-int/2addr v3, v1

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    .line 8
    sget-object v2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    invoke-static {v3, v4, v5, v6}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    .line 9
    :cond_2
    sget-object v0, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    if-eqz v0, :cond_c

    .line 10
    sget-object v4, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-eq p2, v4, :cond_3

    .line 11
    sget-object v4, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 12
    :cond_3
    sget-object v4, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-nez v4, :cond_9

    .line 13
    sget-object v4, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 14
    sget-object v7, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v7, :cond_6

    if-eqz v4, :cond_5

    .line 15
    sget-object v7, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-lez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    :goto_0
    invoke-virtual {p0, p1, v7, v4, v5}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    goto/16 :goto_3

    .line 16
    :cond_5
    sget-object v4, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 17
    :cond_6
    sget-object v7, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v5

    if-lez v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    goto :goto_2

    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    invoke-virtual {p0, p1, v7, v4, v5}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    goto :goto_3

    .line 18
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_a

    .line 19
    sget-object v4, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    goto :goto_3

    .line 20
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_b

    .line 21
    sget-object v4, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lk/b/a/u/i;->updateResolveMap(Ljava/util/Map;Lk/b/a/x/a;J)V

    goto :goto_3

    .line 22
    :cond_b
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid value for era: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_c
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 24
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lk/b/a/x/a;->checkValidValue(J)J

    .line 25
    :cond_d
    :goto_3
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 26
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Strict mode rejected date parsed to a different month"

    if-eqz v0, :cond_18

    .line 27
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 28
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 29
    sget-object v4, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v4, :cond_e

    .line 30
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    .line 31
    sget-object p2, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 32
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lk/b/a/u/l;->plusMonths(J)Lk/b/a/u/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/l;->plusDays(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 33
    :cond_e
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, v2}, Lk/b/a/u/k;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v2

    sget-object v3, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v2, v3, v4, v5}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v2

    .line 34
    sget-object v3, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {p0, v3}, Lk/b/a/u/k;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v3

    sget-object v4, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object p1, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {v3, v4, v5, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    .line 35
    sget-object v3, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p2, v3, :cond_f

    const/16 p2, 0x1c

    if-le p1, p2, :cond_f

    .line 36
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/u/l;->lengthOfMonth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 37
    :cond_f
    invoke-virtual {p0, v0, v2, p1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 38
    :cond_10
    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 39
    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 41
    sget-object v5, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v5, :cond_11

    .line 42
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    .line 43
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v6

    .line 44
    sget-object p2, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 45
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v6, v7, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 46
    :cond_11
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 47
    sget-object v3, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v3

    .line 48
    sget-object v5, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 49
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v3, p1

    int-to-long v5, v3

    sget-object p1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, v5, v6, p1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object p1

    .line 50
    sget-object v0, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v0, :cond_13

    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v2, :cond_12

    goto :goto_4

    .line 51
    :cond_12
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v4}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_4
    return-object p1

    .line 52
    :cond_14
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 53
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 54
    sget-object v5, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v5, :cond_15

    .line 55
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    .line 56
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v6

    .line 57
    sget-object p2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 58
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v6, v7, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 59
    :cond_15
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 60
    sget-object v3, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v3

    .line 61
    sget-object v5, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 62
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sub-int/2addr v3, v1

    int-to-long v5, v3

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v5, v6, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    invoke-static {p1}, Lk/b/a/c;->of(I)Lk/b/a/c;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/g;->a(Lk/b/a/c;)Lk/b/a/x/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/l;->with(Lk/b/a/x/f;)Lk/b/a/u/l;

    move-result-object p1

    .line 63
    sget-object v0, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v0, :cond_17

    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v2, :cond_16

    goto :goto_5

    .line 64
    :cond_16
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v4}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_5
    return-object p1

    .line 65
    :cond_18
    sget-object v0, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 66
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 67
    sget-object v4, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v4, :cond_19

    .line 68
    sget-object p2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 69
    invoke-virtual {p0, v0, v1}, Lk/b/a/u/k;->dateYearDay(II)Lk/b/a/u/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/l;->plusDays(J)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 70
    :cond_19
    sget-object p2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 71
    invoke-virtual {p0, v0, p1}, Lk/b/a/u/k;->dateYearDay(II)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1a
    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 74
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 75
    sget-object v4, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v4, :cond_1b

    .line 76
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    .line 77
    sget-object p2, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 78
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 79
    :cond_1b
    sget-object v2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 80
    sget-object v3, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 81
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v3

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    int-to-long v1, v2

    invoke-virtual {v3, v1, v2}, Lk/b/a/u/l;->plusDays(J)Lk/b/a/u/l;

    move-result-object p1

    .line 82
    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v1, :cond_1d

    sget-object p2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v0, :cond_1c

    goto :goto_6

    .line 83
    :cond_1c
    new-instance p1, Lk/b/a/b;

    const-string p2, "Strict mode rejected date parsed to a different year"

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    :goto_6
    return-object p1

    .line 84
    :cond_1e
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 85
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 86
    sget-object v5, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v5, :cond_1f

    .line 87
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v4

    .line 88
    sget-object p2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 89
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object p1

    return-object p1

    .line 90
    :cond_1f
    sget-object v2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 91
    sget-object v3, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 92
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/k;->date(III)Lk/b/a/u/l;

    move-result-object v3

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sget-object v5, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v3, v1, v2, v5}, Lk/b/a/u/l;->plus(JLk/b/a/x/l;)Lk/b/a/u/l;

    move-result-object v1

    invoke-static {p1}, Lk/b/a/c;->of(I)Lk/b/a/c;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/g;->a(Lk/b/a/c;)Lk/b/a/x/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lk/b/a/u/l;->with(Lk/b/a/x/f;)Lk/b/a/u/l;

    move-result-object p1

    .line 93
    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v1, :cond_21

    sget-object p2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v0, :cond_20

    goto :goto_7

    .line 94
    :cond_20
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v4}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_7
    return-object p1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method public zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/e;",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "Lk/b/a/u/l;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method

.method public zonedDateTime(Lk/b/a/x/e;)Lk/b/a/u/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/e;",
            ")",
            "Lk/b/a/u/g<",
            "Lk/b/a/u/l;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/x/e;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method
