.class public final Lk/b/a/u/p;
.super Lk/b/a/u/i;
.source "JapaneseChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lk/b/a/u/p;

.field static final LOCALE:Ljava/util/Locale;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/Locale;

    const-string v1, "JP"

    const-string v2, "ja"

    invoke-direct {v0, v2, v1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lk/b/a/u/p;->LOCALE:Ljava/util/Locale;

    .line 2
    new-instance v0, Lk/b/a/u/p;

    invoke-direct {v0}, Lk/b/a/u/p;-><init>()V

    sput-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/p;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/p;->i:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lk/b/a/u/p;->j:Ljava/util/Map;

    .line 6
    sget-object v0, Lk/b/a/u/p;->h:Ljava/util/Map;

    const-string v3, "Unknown"

    const-string v4, "K"

    const-string v5, "M"

    const-string v6, "T"

    const-string v7, "S"

    const-string v8, "H"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "en"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lk/b/a/u/p;->h:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lk/b/a/u/p;->i:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "K"

    const-string v6, "M"

    const-string v7, "T"

    const-string v8, "S"

    const-string v9, "H"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lk/b/a/u/p;->i:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "\u6176"

    const-string v6, "\u660e"

    const-string v7, "\u5927"

    const-string v8, "\u662d"

    const-string v9, "\u5e73"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lk/b/a/u/p;->j:Ljava/util/Map;

    const-string v4, "Unknown"

    const-string v5, "Keio"

    const-string v6, "Meiji"

    const-string v7, "Taisho"

    const-string v8, "Showa"

    const-string v9, "Heisei"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lk/b/a/u/p;->j:Ljava/util/Map;

    const-string v3, "Unknown"

    const-string v4, "\u6176\u5fdc"

    const-string v5, "\u660e\u6cbb"

    const-string v6, "\u5927\u6b63"

    const-string v7, "\u662d\u548c"

    const-string v8, "\u5e73\u6210"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/u/i;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;Lk/b/a/v/i;Lk/b/a/u/r;I)Lk/b/a/u/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/v/i;",
            "Lk/b/a/u/r;",
            "I)",
            "Lk/b/a/u/q;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/f;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    .line 3
    sget-object p4, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, p2, p3}, Lk/b/a/u/p;->dateYearDay(II)Lk/b/a/u/q;

    move-result-object p1

    sget-object p2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {p1, v0, v1, p2}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object p2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, p2}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object p2

    sget-object v0, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p2, v0, v1, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    .line 6
    invoke-virtual {p0, p3, p4, p1}, Lk/b/a/u/p;->dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/Map;Lk/b/a/v/i;Lk/b/a/u/r;I)Lk/b/a/u/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/v/i;",
            "Lk/b/a/u/r;",
            "I)",
            "Lk/b/a/u/q;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/f;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    .line 3
    sget-object p3, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/16 v2, 0x1

    invoke-static {p3, p4, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p3

    .line 4
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 5
    invoke-virtual {p0, p2, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p1

    sget-object p2, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-virtual {p1, p3, p4, p2}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    sget-object p2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {p1, v2, v3, p2}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, v0}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v0

    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {v0, v2, v3, v4}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v0

    .line 7
    sget-object v2, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {p0, v2}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v2

    sget-object v3, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object p1, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {v2, v3, v4, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    .line 8
    sget-object v2, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p2, v2, :cond_6

    if-lt p4, v1, :cond_5

    .line 9
    invoke-virtual {p3}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/f;->getYear()I

    move-result p2

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    const/16 v2, 0x1c

    if-le p1, v2, :cond_1

    .line 10
    invoke-virtual {p0, p2, v0, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v2

    invoke-virtual {v2}, Lk/b/a/u/q;->lengthOfMonth()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 11
    :cond_1
    invoke-virtual {p0, p2, v0, p1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lk/b/a/u/q;->getEra()Lk/b/a/u/r;

    move-result-object p2

    if-eq p2, p3, :cond_4

    .line 13
    invoke-virtual {p1}, Lk/b/a/u/q;->getEra()Lk/b/a/u/r;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/u/r;->getValue()I

    move-result p2

    invoke-virtual {p3}, Lk/b/a/u/r;->getValue()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const-string v0, " "

    const-string v2, "Invalid Era/YearOfEra: "

    if-gt p2, v1, :cond_3

    .line 14
    sget-object p2, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-eq p2, v1, :cond_4

    if-ne p4, v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p1

    .line 17
    :cond_5
    new-instance p1, Lk/b/a/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid YearOfEra: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    invoke-virtual {p0, p3, p4, v0, p1}, Lk/b/a/u/p;->date(Lk/b/a/u/j;III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/p;->INSTANCE:Lk/b/a/u/p;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic date(III)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lk/b/a/u/j;III)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lk/b/a/u/p;->date(Lk/b/a/u/j;III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic date(Lk/b/a/x/e;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/p;->date(Lk/b/a/x/e;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public date(III)Lk/b/a/u/q;
    .locals 1

    .line 7
    new-instance v0, Lk/b/a/u/q;

    invoke-static {p1, p2, p3}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public date(Lk/b/a/u/j;III)Lk/b/a/u/q;
    .locals 1

    .line 4
    instance-of v0, p1, Lk/b/a/u/r;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lk/b/a/u/r;

    invoke-static {p1, p2, p3, p4}, Lk/b/a/u/q;->of(Lk/b/a/u/r;III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public date(Lk/b/a/x/e;)Lk/b/a/u/q;
    .locals 1

    .line 8
    instance-of v0, p1, Lk/b/a/u/q;

    if-eqz v0, :cond_0

    .line 9
    check-cast p1, Lk/b/a/u/q;

    return-object p1

    .line 10
    :cond_0
    new-instance v0, Lk/b/a/u/q;

    invoke-static {p1}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public bridge synthetic dateEpochDay(J)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/p;->dateEpochDay(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public dateEpochDay(J)Lk/b/a/u/q;
    .locals 1

    .line 2
    new-instance v0, Lk/b/a/u/q;

    invoke-static {p1, p2}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/u/q;-><init>(Lk/b/a/f;)V

    return-object v0
.end method

.method public bridge synthetic dateNow()Lk/b/a/u/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/p;->dateNow()Lk/b/a/u/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dateNow(Lk/b/a/a;)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/u/p;->dateNow(Lk/b/a/a;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateNow(Lk/b/a/q;)Lk/b/a/u/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/p;->dateNow(Lk/b/a/q;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public dateNow()Lk/b/a/u/q;
    .locals 1

    .line 4
    invoke-super {p0}, Lk/b/a/u/i;->dateNow()Lk/b/a/u/b;

    move-result-object v0

    check-cast v0, Lk/b/a/u/q;

    return-object v0
.end method

.method public dateNow(Lk/b/a/a;)Lk/b/a/u/q;
    .locals 1

    const-string v0, "clock"

    .line 6
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-super {p0, p1}, Lk/b/a/u/i;->dateNow(Lk/b/a/a;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public dateNow(Lk/b/a/q;)Lk/b/a/u/q;
    .locals 0

    .line 5
    invoke-super {p0, p1}, Lk/b/a/u/i;->dateNow(Lk/b/a/q;)Lk/b/a/u/b;

    move-result-object p1

    check-cast p1, Lk/b/a/u/q;

    return-object p1
.end method

.method public bridge synthetic dateYearDay(II)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/p;->dateYearDay(II)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/p;->dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(II)Lk/b/a/u/q;
    .locals 1

    .line 6
    invoke-static {p1, p2}, Lk/b/a/f;->ofYearDay(II)Lk/b/a/f;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lk/b/a/f;->getMonthValue()I

    move-result v0

    invoke-virtual {p2}, Lk/b/a/f;->getDayOfMonth()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public dateYearDay(Lk/b/a/u/j;II)Lk/b/a/u/q;
    .locals 1

    .line 3
    instance-of v0, p1, Lk/b/a/u/r;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lk/b/a/u/r;

    invoke-static {p1, p2, p3}, Lk/b/a/u/q;->ofYearDay(Lk/b/a/u/r;II)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic eraOf(I)Lk/b/a/u/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/p;->eraOf(I)Lk/b/a/u/r;

    move-result-object p1

    return-object p1
.end method

.method public eraOf(I)Lk/b/a/u/r;
    .locals 0

    .line 2
    invoke-static {p1}, Lk/b/a/u/r;->of(I)Lk/b/a/u/r;

    move-result-object p1

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
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 1

    const-string v0, "japanese"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "Japanese"

    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/n;->isLeapYear(J)Z

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
            "Lk/b/a/u/q;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object p1

    return-object p1
.end method

.method public prolepticYear(Lk/b/a/u/j;I)I
    .locals 5

    .line 1
    instance-of v0, p1, Lk/b/a/u/r;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk/b/a/u/r;

    .line 3
    invoke-virtual {p1}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    .line 4
    invoke-virtual {p1}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/f;->getYear()I

    move-result v3

    invoke-virtual {p1}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/f;->getYear()I

    move-result p1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    int-to-long v1, p2

    .line 5
    sget-object p2, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-virtual {p1, v1, v2, p2}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    return v0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Era must be JapaneseEra"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public range(Lk/b/a/x/a;)Lk/b/a/x/n;
    .locals 11

    .line 1
    sget-object v0, Lk/b/a/u/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Lk/b/a/u/p;->LOCALE:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 3
    sget-object v1, Lk/b/a/u/p$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_1

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplementable field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lk/b/a/x/a;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_1
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object p1

    const/16 v0, 0x16e

    .line 7
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    .line 8
    aget-object v1, p1, v2

    invoke-virtual {v1}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/f;->lengthOfYear()I

    move-result v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/f;->getDayOfYear()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    int-to-long v5, v0

    const-wide/16 v7, 0x16e

    .line 9
    invoke-static/range {v3 .. v8}, Lk/b/a/x/n;->of(JJJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x2

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v6, v1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v8, p1

    .line 12
    invoke-static/range {v2 .. v9}, Lk/b/a/x/n;->of(JJJJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_3
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object p1

    .line 14
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    .line 15
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/f;->getYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const v1, 0x7fffffff

    .line 16
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 17
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lk/b/a/f;->getYear()I

    move-result v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lk/b/a/u/r;->startDate()Lk/b/a/f;

    move-result-object v4

    invoke-virtual {v4}, Lk/b/a/f;->getYear()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x6

    int-to-long v7, v1

    int-to-long v9, v0

    .line 18
    invoke-static/range {v3 .. v10}, Lk/b/a/x/n;->of(JJJJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_4
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object p1

    .line 20
    sget-object v0, Lk/b/a/u/q;->MIN_DATE:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lk/b/a/u/r;->endDate()Lk/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/f;->getYear()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    invoke-static {}, Lk/b/a/u/r;->values()[Lk/b/a/u/r;

    move-result-object p1

    .line 22
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lk/b/a/u/r;->getValue()I

    move-result v0

    int-to-long v0, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lk/b/a/u/r;->getValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/p;->resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1
.end method

.method public resolveDate(Ljava/util/Map;Lk/b/a/v/i;)Lk/b/a/u/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lk/b/a/x/i;",
            "Ljava/lang/Long;",
            ">;",
            "Lk/b/a/v/i;",
            ")",
            "Lk/b/a/u/q;"
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

    invoke-virtual {p0, p1, p2}, Lk/b/a/u/p;->dateEpochDay(J)Lk/b/a/u/q;

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
    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 10
    sget-object v3, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {p0, v3}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-virtual {v3, v4, v5, v0}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v0

    invoke-virtual {p0, v0}, Lk/b/a/u/p;->eraOf(I)Lk/b/a/u/r;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 11
    :goto_0
    sget-object v3, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 12
    sget-object v4, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-virtual {p0, v4}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v3, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-virtual {v4, v5, v6, v3}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result v3

    if-nez v0, :cond_4

    .line 13
    sget-object v4, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-eq p2, v4, :cond_4

    sget-object v4, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 14
    invoke-virtual {p0}, Lk/b/a/u/p;->eras()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/r;

    :cond_4
    if-eqz v0, :cond_5

    .line 16
    sget-object v4, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    sget-object v1, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-direct {p0, p1, p2, v0, v3}, Lk/b/a/u/p;->b(Ljava/util/Map;Lk/b/a/v/i;Lk/b/a/u/r;I)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    .line 20
    sget-object v4, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    sget-object v1, Lk/b/a/x/a;->ERA:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lk/b/a/x/a;->YEAR_OF_ERA:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0, p1, p2, v0, v3}, Lk/b/a/u/p;->a(Ljava/util/Map;Lk/b/a/v/i;Lk/b/a/u/r;I)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 24
    :cond_6
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 25
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Strict mode rejected date parsed to a different month"

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_11

    .line 26
    sget-object v0, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 28
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_7

    .line 29
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 30
    sget-object p2, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 31
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lk/b/a/u/q;->plusMonths(J)Lk/b/a/u/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/q;->plusDays(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 32
    :cond_7
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p0, v2}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

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

    .line 33
    sget-object v3, Lk/b/a/x/a;->DAY_OF_MONTH:Lk/b/a/x/a;

    invoke-virtual {p0, v3}, Lk/b/a/u/p;->range(Lk/b/a/x/a;)Lk/b/a/x/n;

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

    .line 34
    sget-object v3, Lk/b/a/v/i;->SMART:Lk/b/a/v/i;

    if-ne p2, v3, :cond_8

    const/16 p2, 0x1c

    if-le p1, p2, :cond_8

    .line 35
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p2

    invoke-virtual {p2}, Lk/b/a/u/q;->lengthOfMonth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 36
    :cond_8
    invoke-virtual {p0, v0, v2, p1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 37
    :cond_9
    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 40
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_a

    .line 41
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 42
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v6

    .line 43
    sget-object p2, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 44
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-virtual {v0, v2, v3, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v6, v7, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 45
    :cond_a
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 46
    sget-object v4, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v4

    .line 47
    sget-object v5, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 48
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v4, p1

    int-to-long v4, v4

    sget-object p1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, p1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    .line 49
    sget-object v0, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v0, :cond_c

    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v2, :cond_b

    goto :goto_1

    .line 50
    :cond_b
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v3}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_1
    return-object p1

    .line 51
    :cond_d
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 53
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_e

    .line 54
    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 55
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v6

    .line 56
    sget-object p2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 57
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->MONTHS:Lk/b/a/x/b;

    invoke-virtual {v0, v2, v3, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v6, v7, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 58
    :cond_e
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 59
    sget-object v4, Lk/b/a/x/a;->ALIGNED_WEEK_OF_MONTH:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v4

    .line 60
    sget-object v5, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 61
    invoke-virtual {p0, v0, v2, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sub-int/2addr v4, v1

    int-to-long v4, v4

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v4, v5, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    invoke-static {p1}, Lk/b/a/c;->of(I)Lk/b/a/c;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/g;->a(Lk/b/a/c;)Lk/b/a/x/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/q;->with(Lk/b/a/x/f;)Lk/b/a/u/q;

    move-result-object p1

    .line 62
    sget-object v0, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v0, :cond_10

    sget-object p2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v2, :cond_f

    goto :goto_2

    .line 63
    :cond_f
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v3}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_2
    return-object p1

    .line 64
    :cond_11
    sget-object v0, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 65
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 66
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_12

    .line 67
    sget-object p2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 68
    invoke-virtual {p0, v0, v1}, Lk/b/a/u/p;->dateYearDay(II)Lk/b/a/u/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/u/q;->plusDays(J)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 69
    :cond_12
    sget-object p2, Lk/b/a/x/a;->DAY_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 70
    invoke-virtual {p0, v0, p1}, Lk/b/a/u/p;->dateYearDay(II)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 71
    :cond_13
    sget-object v0, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 72
    sget-object v0, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 73
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 74
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_14

    .line 75
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 76
    sget-object p2, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 77
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v2, v3, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 78
    :cond_14
    sget-object v2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 79
    sget-object v3, Lk/b/a/x/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 80
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v3

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x7

    sub-int/2addr p1, v1

    add-int/2addr v2, p1

    int-to-long v1, v2

    invoke-virtual {v3, v1, v2}, Lk/b/a/u/q;->plusDays(J)Lk/b/a/u/q;

    move-result-object p1

    .line 81
    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v1, :cond_16

    sget-object p2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v0, :cond_15

    goto :goto_3

    .line 82
    :cond_15
    new-instance p1, Lk/b/a/b;

    const-string p2, "Strict mode rejected date parsed to a different year"

    invoke-direct {p1, p2}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_3
    return-object p1

    .line 83
    :cond_17
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 84
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v0

    .line 85
    sget-object v2, Lk/b/a/v/i;->LENIENT:Lk/b/a/v/i;

    if-ne p2, v2, :cond_18

    .line 86
    sget-object p2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide v2

    .line 87
    sget-object p2, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4, v5}, Lk/b/a/w/d;->f(JJ)J

    move-result-wide p1

    .line 88
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v0, v2, v3, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v0

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object p1

    return-object p1

    .line 89
    :cond_18
    sget-object v2, Lk/b/a/x/a;->ALIGNED_WEEK_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result v2

    .line 90
    sget-object v4, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    .line 91
    invoke-virtual {p0, v0, v1, v1}, Lk/b/a/u/p;->date(III)Lk/b/a/u/q;

    move-result-object v4

    sub-int/2addr v2, v1

    int-to-long v1, v2

    sget-object v5, Lk/b/a/x/b;->WEEKS:Lk/b/a/x/b;

    invoke-virtual {v4, v1, v2, v5}, Lk/b/a/u/q;->plus(JLk/b/a/x/l;)Lk/b/a/u/q;

    move-result-object v1

    invoke-static {p1}, Lk/b/a/c;->of(I)Lk/b/a/c;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/x/g;->a(Lk/b/a/c;)Lk/b/a/x/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lk/b/a/u/q;->with(Lk/b/a/x/f;)Lk/b/a/u/q;

    move-result-object p1

    .line 92
    sget-object v1, Lk/b/a/v/i;->STRICT:Lk/b/a/v/i;

    if-ne p2, v1, :cond_1a

    sget-object p2, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1, p2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p2

    if-ne p2, v0, :cond_19

    goto :goto_4

    .line 93
    :cond_19
    new-instance p1, Lk/b/a/b;

    invoke-direct {p1, v3}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :goto_4
    return-object p1

    :cond_1b
    return-object v2
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
            "Lk/b/a/u/q;",
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
            "Lk/b/a/u/q;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/x/e;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method
