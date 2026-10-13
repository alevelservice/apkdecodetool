.class public final Lk/b/a/k;
.super Lk/b/a/w/b;
.source "OffsetDateTime.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/w/b;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/k;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lk/b/a/k;

.field public static final MIN:Lk/b/a/k;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lk/b/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1fbfbc5d57d80062L


# instance fields
.field private final dateTime:Lk/b/a/g;

.field private final offset:Lk/b/a/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/g;->MIN:Lk/b/a/g;

    sget-object v1, Lk/b/a/r;->MAX:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/g;->atOffset(Lk/b/a/r;)Lk/b/a/k;

    move-result-object v0

    sput-object v0, Lk/b/a/k;->MIN:Lk/b/a/k;

    .line 2
    sget-object v0, Lk/b/a/g;->MAX:Lk/b/a/g;

    sget-object v1, Lk/b/a/r;->MIN:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/g;->atOffset(Lk/b/a/r;)Lk/b/a/k;

    move-result-object v0

    sput-object v0, Lk/b/a/k;->MAX:Lk/b/a/k;

    .line 3
    new-instance v0, Lk/b/a/k$a;

    invoke-direct {v0}, Lk/b/a/k$a;-><init>()V

    sput-object v0, Lk/b/a/k;->FROM:Lk/b/a/x/k;

    .line 4
    new-instance v0, Lk/b/a/k$b;

    invoke-direct {v0}, Lk/b/a/k$b;-><init>()V

    sput-object v0, Lk/b/a/k;->e:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lk/b/a/g;Lk/b/a/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/b/a/w/b;-><init>()V

    const-string v0, "dateTime"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lk/b/a/g;

    iput-object p1, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lk/b/a/r;

    iput-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    return-void
.end method

.method private a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v0, p2}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p1, p2}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/k;
    .locals 3

    .line 1
    instance-of v0, p0, Lk/b/a/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/k;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Lk/b/a/r;->from(Lk/b/a/x/e;)Lk/b/a/r;

    move-result-object v0
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {p0}, Lk/b/a/g;->from(Lk/b/a/x/e;)Lk/b/a/g;

    move-result-object v1

    .line 5
    invoke-static {v1, v0}, Lk/b/a/k;->of(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p0
    :try_end_1
    .catch Lk/b/a/b; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {p0}, Lk/b/a/e;->from(Lk/b/a/x/e;)Lk/b/a/e;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lk/b/a/k;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;

    move-result-object p0
    :try_end_2
    .catch Lk/b/a/b; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 8
    :catch_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static now()Lk/b/a/k;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/k;->now(Lk/b/a/a;)Lk/b/a/k;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/k;
    .locals 1

    const-string v0, "clock"

    .line 3
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lk/b/a/a;->instant()Lk/b/a/e;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lk/b/a/a;->getZone()Lk/b/a/q;

    move-result-object p0

    invoke-virtual {p0}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lk/b/a/y/f;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p0

    invoke-static {v0, p0}, Lk/b/a/k;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/k;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/k;->now(Lk/b/a/a;)Lk/b/a/k;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIIIIILk/b/a/r;)Lk/b/a/k;
    .locals 0

    .line 4
    invoke-static/range {p0 .. p6}, Lk/b/a/g;->of(IIIIIII)Lk/b/a/g;

    move-result-object p0

    .line 5
    new-instance p1, Lk/b/a/k;

    invoke-direct {p1, p0, p7}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object p1
.end method

.method public static of(Lk/b/a/f;Lk/b/a/h;Lk/b/a/r;)Lk/b/a/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/b/a/g;->of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p0

    .line 2
    new-instance p1, Lk/b/a/k;

    invoke-direct {p1, p0, p2}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object p1
.end method

.method public static of(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;
    .locals 1

    .line 3
    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p0, p1}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object v0
.end method

.method public static ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;
    .locals 2

    const-string v0, "instant"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lk/b/a/q;->getRules()Lk/b/a/y/f;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lk/b/a/y/f;->getOffset(Lk/b/a/e;)Lk/b/a/r;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lk/b/a/e;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lk/b/a/g;->ofEpochSecond(JILk/b/a/r;)Lk/b/a/g;

    move-result-object p0

    .line 6
    new-instance v0, Lk/b/a/k;

    invoke-direct {v0, p0, p1}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/k;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/b;->l:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/k;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/k;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/k;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/k;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/k;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/k;
    .locals 1

    .line 1
    invoke-static {p0}, Lk/b/a/g;->readExternal(Ljava/io/DataInput;)Lk/b/a/g;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lk/b/a/r;->readExternal(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lk/b/a/k;->of(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lk/b/a/k;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lk/b/a/k;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/n;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    .line 2
    invoke-virtual {p0}, Lk/b/a/k;->toLocalDate()Lk/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/f;->toEpochDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    .line 3
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    .line 4
    invoke-virtual {p0}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atZoneSameInstant(Lk/b/a/q;)Lk/b/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {v0, v1, p1}, Lk/b/a/t;->ofInstant(Lk/b/a/g;Lk/b/a/r;Lk/b/a/q;)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public atZoneSimilarLocal(Lk/b/a/q;)Lk/b/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {v0, p1, v1}, Lk/b/a/t;->ofLocal(Lk/b/a/g;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/k;

    invoke-virtual {p0, p1}, Lk/b/a/k;->compareTo(Lk/b/a/k;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/k;)I
    .locals 4

    .line 2
    invoke-virtual {p0}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/k;->toLocalDateTime()Lk/b/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalDateTime()Lk/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/g;->compareTo(Lk/b/a/u/c;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/h;->getNano()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lk/b/a/k;->toLocalDateTime()Lk/b/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalDateTime()Lk/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/g;->compareTo(Lk/b/a/u/c;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/k;

    .line 3
    iget-object v1, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v3, p1, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v1, v3}, Lk/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    iget-object p1, p1, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v1, p1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

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

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/k$c;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->get(Lk/b/a/x/i;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field too large for an int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    invoke-super {p0, p1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lk/b/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getDayOfWeek()Lk/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/k$c;->a:[I

    move-object v1, p1

    check-cast v1, Lk/b/a/x/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lk/b/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getMonth()Lk/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lk/b/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/k;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->getNano()I

    move-result p1

    if-le v0, p1, :cond_0

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

.method public isBefore(Lk/b/a/k;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->getNano()I

    move-result p1

    if-ge v0, p1, :cond_0

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

.method public isEqual(Lk/b/a/k;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    invoke-virtual {p1}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/h;->getNano()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public isSupported(Lk/b/a/x/l;)Z
    .locals 3

    .line 2
    instance-of v0, p1, Lk/b/a/x/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Lk/b/a/x/l;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lk/b/a/x/l;->isTimeBased()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/k;->plus(JLk/b/a/x/l;)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/k;->plus(JLk/b/a/x/l;)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/k;->plus(JLk/b/a/x/l;)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/k;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/k;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/k;->minus(JLk/b/a/x/l;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/k;->minus(Lk/b/a/x/h;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusDays(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusDays(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusDays(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusHours(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusHours(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusHours(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusHours(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMinutes(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusMinutes(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusMinutes(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusMinutes(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusMonths(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusMonths(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusMonths(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusMonths(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusNanos(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusNanos(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusNanos(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusSeconds(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusSeconds(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusSeconds(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusWeeks(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusWeeks(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusWeeks(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusWeeks(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lk/b/a/k;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusYears(J)Lk/b/a/k;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/k;->plusYears(J)Lk/b/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/k;->plusYears(J)Lk/b/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/k;
    .locals 1

    .line 4
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/k;

    return-object p1
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/k;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/k;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/k;->plus(JLk/b/a/x/l;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/k;->plus(Lk/b/a/x/h;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusHours(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusMinutes(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusMonths(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusNanos(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusSeconds(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusWeeks(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->plusYears(J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public query(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 1
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
    sget-object p1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

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
    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_6

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lk/b/a/k;->toLocalDate()Lk/b/a/f;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lk/b/a/k;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_5
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lk/b/a/k;->getOffset()Lk/b/a/r;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toEpochSecond()J
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->toEpochSecond(Lk/b/a/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toInstant()Lk/b/a/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/u/c;->toInstant(Lk/b/a/r;)Lk/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDate()Lk/b/a/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->toLocalDate()Lk/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public toLocalDateTime()Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    return-object v0
.end method

.method public toLocalTime()Lk/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    return-object v0
.end method

.method public toOffsetTime()Lk/b/a/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0}, Lk/b/a/g;->toLocalTime()Lk/b/a/h;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {v0, v1}, Lk/b/a/l;->of(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v1}, Lk/b/a/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toZonedDateTime()Lk/b/a/t;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {v0, v1}, Lk/b/a/t;->of(Lk/b/a/g;Lk/b/a/q;)Lk/b/a/t;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lk/b/a/x/l;)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->truncatedTo(Lk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 1

    .line 1
    invoke-static {p1}, Lk/b/a/k;->from(Lk/b/a/x/e;)Lk/b/a/k;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {p1, v0}, Lk/b/a/k;->withOffsetSameInstant(Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    iget-object p1, p1, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2}, Lk/b/a/g;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/k;
    .locals 1

    .line 3
    instance-of v0, p1, Lk/b/a/f;

    if-nez v0, :cond_4

    instance-of v0, p1, Lk/b/a/h;

    if-nez v0, :cond_4

    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lk/b/a/e;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lk/b/a/e;

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {p1, v0}, Lk/b/a/k;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    instance-of v0, p1, Lk/b/a/r;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    check-cast p1, Lk/b/a/r;

    invoke-direct {p0, v0, p1}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v0, p1, Lk/b/a/k;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Lk/b/a/k;

    return-object p1

    .line 10
    :cond_3
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/k;

    return-object p1

    .line 11
    :cond_4
    :goto_0
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->with(Lk/b/a/x/f;)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/k;
    .locals 3

    .line 12
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_2

    .line 13
    move-object v0, p1

    check-cast v0, Lk/b/a/x/a;

    .line 14
    sget-object v1, Lk/b/a/k$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 15
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/g;->with(Lk/b/a/x/i;J)Lk/b/a/g;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 16
    :cond_0
    iget-object p1, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p2, p3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p2

    invoke-static {p2}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    invoke-virtual {p0}, Lk/b/a/k;->getNano()I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, p3, v0, v1}, Lk/b/a/e;->ofEpochSecond(JJ)Lk/b/a/e;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-static {p1, p2}, Lk/b/a/k;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/k;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/k;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/k;->with(Lk/b/a/x/f;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/k;->with(Lk/b/a/x/i;J)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withDayOfMonth(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withDayOfYear(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withHour(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withMinute(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withMonth(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withNano(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withOffsetSameInstant(Lk/b/a/r;)Lk/b/a/k;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {p1, v0}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lk/b/a/g;->plusSeconds(J)Lk/b/a/g;

    move-result-object v0

    .line 4
    new-instance v1, Lk/b/a/k;

    invoke-direct {v1, v0, p1}, Lk/b/a/k;-><init>(Lk/b/a/g;Lk/b/a/r;)V

    return-object v1
.end method

.method public withOffsetSameLocal(Lk/b/a/r;)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-direct {p0, v0, p1}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withSecond(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lk/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->withYear(I)Lk/b/a/g;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/k;->a(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/k;->dateTime:Lk/b/a/g;

    invoke-virtual {v0, p1}, Lk/b/a/g;->writeExternal(Ljava/io/DataOutput;)V

    .line 2
    iget-object v0, p0, Lk/b/a/k;->offset:Lk/b/a/r;

    invoke-virtual {v0, p1}, Lk/b/a/r;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
