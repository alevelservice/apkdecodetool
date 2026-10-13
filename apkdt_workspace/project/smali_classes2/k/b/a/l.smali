.class public final Lk/b/a/l;
.super Lk/b/a/w/c;
.source "OffsetTime.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/w/c;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/lang/Comparable<",
        "Lk/b/a/l;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lk/b/a/l;

.field public static final MIN:Lk/b/a/l;

.field private static final serialVersionUID:J = 0x64d0affdfec1386cL


# instance fields
.field private final offset:Lk/b/a/r;

.field private final time:Lk/b/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/h;->MIN:Lk/b/a/h;

    sget-object v1, Lk/b/a/r;->MAX:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/h;->atOffset(Lk/b/a/r;)Lk/b/a/l;

    move-result-object v0

    sput-object v0, Lk/b/a/l;->MIN:Lk/b/a/l;

    .line 2
    sget-object v0, Lk/b/a/h;->MAX:Lk/b/a/h;

    sget-object v1, Lk/b/a/r;->MIN:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/h;->atOffset(Lk/b/a/r;)Lk/b/a/l;

    move-result-object v0

    sput-object v0, Lk/b/a/l;->MAX:Lk/b/a/l;

    .line 3
    new-instance v0, Lk/b/a/l$a;

    invoke-direct {v0}, Lk/b/a/l$a;-><init>()V

    sput-object v0, Lk/b/a/l;->FROM:Lk/b/a/x/k;

    return-void
.end method

.method private constructor <init>(Lk/b/a/h;Lk/b/a/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk/b/a/w/c;-><init>()V

    const-string v0, "time"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lk/b/a/h;

    iput-object p1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lk/b/a/r;

    iput-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    return-void
.end method

.method private a()J
    .locals 6

    .line 3
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v2}, Lk/b/a/r;->getTotalSeconds()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v0, p2}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/l;

    invoke-direct {v0, p1, p2}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    return-object v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/l;
    .locals 3

    .line 1
    instance-of v0, p0, Lk/b/a/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/l;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Lk/b/a/h;->from(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object v0

    .line 4
    invoke-static {p0}, Lk/b/a/r;->from(Lk/b/a/x/e;)Lk/b/a/r;

    move-result-object v1

    .line 5
    new-instance v2, Lk/b/a/l;

    invoke-direct {v2, v0, v1}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 6
    :catch_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain OffsetTime from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
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

.method public static now()Lk/b/a/l;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/l;->now(Lk/b/a/a;)Lk/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/l;
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

    invoke-static {v0, p0}, Lk/b/a/l;->ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/l;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/l;->now(Lk/b/a/a;)Lk/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIILk/b/a/r;)Lk/b/a/l;
    .locals 1

    .line 2
    new-instance v0, Lk/b/a/l;

    invoke-static {p0, p1, p2, p3}, Lk/b/a/h;->of(IIII)Lk/b/a/h;

    move-result-object p0

    invoke-direct {v0, p0, p4}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    return-object v0
.end method

.method public static of(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;
    .locals 1

    .line 1
    new-instance v0, Lk/b/a/l;

    invoke-direct {v0, p0, p1}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    return-object v0
.end method

.method public static ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/l;
    .locals 7

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

    const-wide/32 v2, 0x15180

    rem-long/2addr v0, v2

    .line 6
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    rem-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    add-long/2addr v0, v2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lk/b/a/e;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0}, Lk/b/a/h;->ofSecondOfDay(JI)Lk/b/a/h;

    move-result-object p0

    .line 8
    new-instance v0, Lk/b/a/l;

    invoke-direct {v0, p0, p1}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/b;->j:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/l;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/l;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/l;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/l;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/l;
    .locals 1

    .line 1
    invoke-static {p0}, Lk/b/a/h;->readExternal(Ljava/io/DataInput;)Lk/b/a/h;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lk/b/a/r;->readExternal(Ljava/io/DataInput;)Lk/b/a/r;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lk/b/a/l;->of(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

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

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/n;

    const/16 v1, 0x42

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->NANO_OF_DAY:Lk/b/a/x/a;

    iget-object v1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    .line 2
    invoke-virtual {v1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    .line 3
    invoke-virtual {p0}, Lk/b/a/l;->getOffset()Lk/b/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atDate(Lk/b/a/f;)Lk/b/a/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    iget-object v1, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-static {p1, v0, v1}, Lk/b/a/k;->of(Lk/b/a/f;Lk/b/a/h;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/l;

    invoke-virtual {p0, p1}, Lk/b/a/l;->compareTo(Lk/b/a/l;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/l;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    iget-object v1, p1, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v0, v1}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    iget-object p1, p1, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lk/b/a/l;->a()J

    move-result-wide v0

    invoke-direct {p1}, Lk/b/a/l;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    iget-object p1, p1, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

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
    instance-of v1, p1, Lk/b/a/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/l;

    .line 3
    iget-object v1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    iget-object v3, p1, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v1, v3}, Lk/b/a/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    iget-object p1, p1, Lk/b/a/l;->offset:Lk/b/a/r;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getHour()I

    move-result v0

    return v0
.end method

.method public getLong(Lk/b/a/x/i;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lk/b/a/l;->getOffset()Lk/b/a/r;

    move-result-object p1

    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getMinute()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    return v0
.end method

.method public getOffset()Lk/b/a/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    return-object v0
.end method

.method public getSecond()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getSecond()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/l;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lk/b/a/l;->a()J

    move-result-wide v0

    invoke-direct {p1}, Lk/b/a/l;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBefore(Lk/b/a/l;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lk/b/a/l;->a()J

    move-result-wide v0

    invoke-direct {p1}, Lk/b/a/l;->a()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEqual(Lk/b/a/l;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lk/b/a/l;->a()J

    move-result-wide v0

    invoke-direct {p1}, Lk/b/a/l;->a()J

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

.method public isSupported(Lk/b/a/x/i;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/i;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSupported(Lk/b/a/x/l;)Z
    .locals 1

    .line 4
    instance-of v0, p1, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lk/b/a/x/l;->isTimeBased()Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/l;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/l;->plus(JLk/b/a/x/l;)Lk/b/a/l;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/l;->plus(JLk/b/a/x/l;)Lk/b/a/l;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/l;->plus(JLk/b/a/x/l;)Lk/b/a/l;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/l;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/l;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/l;->minus(JLk/b/a/x/l;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/l;->minus(Lk/b/a/x/h;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->minusHours(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->minusMinutes(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->minusNanos(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->minusSeconds(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/l;
    .locals 1

    .line 4
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/h;->plus(JLk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/l;

    return-object p1
.end method

.method public plus(Lk/b/a/x/h;)Lk/b/a/l;
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/l;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/l;->plus(JLk/b/a/x/l;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/l;->plus(Lk/b/a/x/h;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->plusHours(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->plusMinutes(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->plusNanos(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->plusSeconds(J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

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
    invoke-static {}, Lk/b/a/x/j;->e()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lk/b/a/x/b;->NANOS:Lk/b/a/x/b;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_5

    invoke-static {}, Lk/b/a/x/j;->f()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {}, Lk/b/a/x/j;->c()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    return-object p1

    .line 6
    :cond_2
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-eq p1, v0, :cond_4

    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-super {p0, p1}, Lk/b/a/w/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lk/b/a/l;->getOffset()Lk/b/a/r;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toLocalTime()Lk/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v1}, Lk/b/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lk/b/a/x/l;)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->truncatedTo(Lk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 4

    .line 1
    invoke-static {p1}, Lk/b/a/l;->from(Lk/b/a/x/e;)Lk/b/a/l;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p1}, Lk/b/a/l;->a()J

    move-result-wide v0

    invoke-direct {p0}, Lk/b/a/l;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 4
    sget-object p1, Lk/b/a/l$b;->a:[I

    move-object v2, p2

    check-cast v2, Lk/b/a/x/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_0

    .line 5
    new-instance p1, Lk/b/a/x/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-wide p1, 0x274a48a78000L

    .line 6
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_1
    const-wide p1, 0x34630b8a000L

    .line 7
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_2
    const-wide p1, 0xdf8475800L

    .line 8
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_3
    const-wide/32 p1, 0x3b9aca00

    .line 9
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_4
    const-wide/32 p1, 0xf4240

    .line 10
    div-long/2addr v0, p1

    return-wide v0

    :pswitch_5
    const-wide/16 p1, 0x3e8

    .line 11
    div-long/2addr v0, p1

    :pswitch_6
    return-wide v0

    .line 12
    :cond_0
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/l;
    .locals 1

    .line 3
    instance-of v0, p1, Lk/b/a/h;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lk/b/a/h;

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v0, p1, Lk/b/a/r;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    check-cast p1, Lk/b/a/r;

    invoke-direct {p0, v0, p1}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v0, p1, Lk/b/a/l;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lk/b/a/l;

    return-object p1

    .line 9
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/l;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/l;
    .locals 1

    .line 10
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 11
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    if-ne p1, v0, :cond_0

    .line 12
    check-cast p1, Lk/b/a/x/a;

    .line 13
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {p1, p2, p3}, Lk/b/a/x/a;->checkValidIntValue(J)I

    move-result p1

    invoke-static {p1}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/h;->with(Lk/b/a/x/i;J)Lk/b/a/h;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, p2}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1

    .line 15
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/l;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/l;->with(Lk/b/a/x/f;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/l;->with(Lk/b/a/x/i;J)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withHour(I)Lk/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withMinute(I)Lk/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withNano(I)Lk/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method public withOffsetSameInstant(Lk/b/a/r;)Lk/b/a/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {p1, v0}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v0

    iget-object v1, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v1}, Lk/b/a/r;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lk/b/a/h;->plusSeconds(J)Lk/b/a/h;

    move-result-object v0

    .line 4
    new-instance v1, Lk/b/a/l;

    invoke-direct {v1, v0, p1}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    return-object v1
.end method

.method public withOffsetSameLocal(Lk/b/a/r;)Lk/b/a/l;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {p1, v0}, Lk/b/a/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lk/b/a/l;

    iget-object v1, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-direct {v0, v1, p1}, Lk/b/a/l;-><init>(Lk/b/a/h;Lk/b/a/r;)V

    :goto_0
    return-object v0
.end method

.method public withSecond(I)Lk/b/a/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withSecond(I)Lk/b/a/h;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-direct {p0, p1, v0}, Lk/b/a/l;->a(Lk/b/a/h;Lk/b/a/r;)Lk/b/a/l;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/l;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->writeExternal(Ljava/io/DataOutput;)V

    .line 2
    iget-object v0, p0, Lk/b/a/l;->offset:Lk/b/a/r;

    invoke-virtual {v0, p1}, Lk/b/a/r;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
