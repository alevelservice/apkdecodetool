.class public final Lk/b/a/g;
.super Lk/b/a/u/c;
.source "LocalDateTime.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/b/a/u/c<",
        "Lk/b/a/f;",
        ">;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Lk/b/a/x/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/b/a/x/k<",
            "Lk/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Lk/b/a/g;

.field public static final MIN:Lk/b/a/g;

.field private static final serialVersionUID:J = 0x56266aa6a95fff2eL


# instance fields
.field private final date:Lk/b/a/f;

.field private final time:Lk/b/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lk/b/a/f;->MIN:Lk/b/a/f;

    sget-object v1, Lk/b/a/h;->MIN:Lk/b/a/h;

    invoke-static {v0, v1}, Lk/b/a/g;->of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object v0

    sput-object v0, Lk/b/a/g;->MIN:Lk/b/a/g;

    .line 2
    sget-object v0, Lk/b/a/f;->MAX:Lk/b/a/f;

    sget-object v1, Lk/b/a/h;->MAX:Lk/b/a/h;

    invoke-static {v0, v1}, Lk/b/a/g;->of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object v0

    sput-object v0, Lk/b/a/g;->MAX:Lk/b/a/g;

    .line 3
    new-instance v0, Lk/b/a/g$a;

    invoke-direct {v0}, Lk/b/a/g$a;-><init>()V

    sput-object v0, Lk/b/a/g;->FROM:Lk/b/a/x/k;

    return-void
.end method

.method private constructor <init>(Lk/b/a/f;Lk/b/a/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lk/b/a/u/c;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    .line 3
    iput-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    return-void
.end method

.method private a(Lk/b/a/g;)I
    .locals 2

    .line 11
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {p1}, Lk/b/a/g;->toLocalDate()Lk/b/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/b/a/f;->compareTo0(Lk/b/a/f;)I

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {p1}, Lk/b/a/g;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/h;->compareTo(Lk/b/a/h;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private a(Lk/b/a/f;JJJJI)Lk/b/a/g;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iget-object v2, v0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {v0, v1, v2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 4
    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5a0

    div-long v10, p4, v8

    add-long/2addr v4, v10

    const-wide/16 v10, 0x18

    div-long v12, p2, v10

    add-long/2addr v4, v12

    move/from16 v12, p10

    int-to-long v12, v12

    mul-long v4, v4, v12

    .line 5
    rem-long v14, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v16, 0x3b9aca00

    mul-long v6, v6, v16

    add-long/2addr v14, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v14, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v14, v6

    .line 6
    iget-object v6, v0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v6}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v6

    mul-long v14, v14, v12

    add-long/2addr v14, v6

    .line 7
    invoke-static {v14, v15, v2, v3}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 8
    invoke-static {v14, v15, v2, v3}, Lk/b/a/w/d;->c(JJ)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 9
    iget-object v2, v0, Lk/b/a/g;->time:Lk/b/a/h;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object v2

    .line 10
    :goto_0
    invoke-virtual {v1, v4, v5}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object v1

    return-object v1
.end method

.method private a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    if-ne v0, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lk/b/a/g;

    invoke-direct {v0, p1, p2}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object v0
.end method

.method public static from(Lk/b/a/x/e;)Lk/b/a/g;
    .locals 3

    .line 1
    instance-of v0, p0, Lk/b/a/g;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lk/b/a/g;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Lk/b/a/t;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lk/b/a/t;

    invoke-virtual {p0}, Lk/b/a/t;->toLocalDateTime()Lk/b/a/g;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object v0

    .line 6
    invoke-static {p0}, Lk/b/a/h;->from(Lk/b/a/x/e;)Lk/b/a/h;

    move-result-object v1

    .line 7
    new-instance v2, Lk/b/a/g;

    invoke-direct {v2, v0, v1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 8
    :catch_0
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalDateTime from TemporalAccessor: "

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

.method public static now()Lk/b/a/g;
    .locals 1

    .line 1
    invoke-static {}, Lk/b/a/a;->systemDefaultZone()Lk/b/a/a;

    move-result-object v0

    invoke-static {v0}, Lk/b/a/g;->now(Lk/b/a/a;)Lk/b/a/g;

    move-result-object v0

    return-object v0
.end method

.method public static now(Lk/b/a/a;)Lk/b/a/g;
    .locals 3

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

    .line 6
    invoke-virtual {v0}, Lk/b/a/e;->getEpochSecond()J

    move-result-wide v1

    invoke-virtual {v0}, Lk/b/a/e;->getNano()I

    move-result v0

    invoke-static {v1, v2, v0, p0}, Lk/b/a/g;->ofEpochSecond(JILk/b/a/r;)Lk/b/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static now(Lk/b/a/q;)Lk/b/a/g;
    .locals 0

    .line 2
    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    invoke-static {p0}, Lk/b/a/g;->now(Lk/b/a/a;)Lk/b/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static of(IIIII)Lk/b/a/g;
    .locals 0

    .line 10
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p0

    .line 11
    invoke-static {p3, p4}, Lk/b/a/h;->of(II)Lk/b/a/h;

    move-result-object p1

    .line 12
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(IIIIII)Lk/b/a/g;
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p0

    .line 14
    invoke-static {p3, p4, p5}, Lk/b/a/h;->of(III)Lk/b/a/h;

    move-result-object p1

    .line 15
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(IIIIIII)Lk/b/a/g;
    .locals 0

    .line 16
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p0

    .line 17
    invoke-static {p3, p4, p5, p6}, Lk/b/a/h;->of(IIII)Lk/b/a/h;

    move-result-object p1

    .line 18
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(ILk/b/a/i;III)Lk/b/a/g;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(ILk/b/a/i;I)Lk/b/a/f;

    move-result-object p0

    .line 2
    invoke-static {p3, p4}, Lk/b/a/h;->of(II)Lk/b/a/h;

    move-result-object p1

    .line 3
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(ILk/b/a/i;IIII)Lk/b/a/g;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(ILk/b/a/i;I)Lk/b/a/f;

    move-result-object p0

    .line 5
    invoke-static {p3, p4, p5}, Lk/b/a/h;->of(III)Lk/b/a/h;

    move-result-object p1

    .line 6
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(ILk/b/a/i;IIIII)Lk/b/a/g;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2}, Lk/b/a/f;->of(ILk/b/a/i;I)Lk/b/a/f;

    move-result-object p0

    .line 8
    invoke-static {p3, p4, p5, p6}, Lk/b/a/h;->of(IIII)Lk/b/a/h;

    move-result-object p1

    .line 9
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;
    .locals 1

    const-string v0, "date"

    .line 19
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 20
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    new-instance v0, Lk/b/a/g;

    invoke-direct {v0, p0, p1}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object v0
.end method

.method public static ofEpochSecond(JILk/b/a/r;)Lk/b/a/g;
    .locals 2

    const-string v0, "offset"

    .line 1
    invoke-static {p3, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p3}, Lk/b/a/r;->getTotalSeconds()I

    move-result p3

    int-to-long v0, p3

    add-long/2addr p0, v0

    const-wide/32 v0, 0x15180

    .line 3
    invoke-static {p0, p1, v0, v1}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v0

    const p3, 0x15180

    .line 4
    invoke-static {p0, p1, p3}, Lk/b/a/w/d;->a(JI)I

    move-result p0

    .line 5
    invoke-static {v0, v1}, Lk/b/a/f;->ofEpochDay(J)Lk/b/a/f;

    move-result-object p1

    int-to-long v0, p0

    .line 6
    invoke-static {v0, v1, p2}, Lk/b/a/h;->ofSecondOfDay(JI)Lk/b/a/h;

    move-result-object p0

    .line 7
    new-instance p2, Lk/b/a/g;

    invoke-direct {p2, p1, p0}, Lk/b/a/g;-><init>(Lk/b/a/f;Lk/b/a/h;)V

    return-object p2
.end method

.method public static ofInstant(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/g;
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

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lk/b/a/g;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/v/b;->k:Lk/b/a/v/b;

    invoke-static {p0, v0}, Lk/b/a/g;->parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/CharSequence;Lk/b/a/v/b;)Lk/b/a/g;
    .locals 1

    const-string v0, "formatter"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/g;->FROM:Lk/b/a/x/k;

    invoke-virtual {p1, p0, v0}, Lk/b/a/v/b;->a(Ljava/lang/CharSequence;Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/g;

    return-object p0
.end method

.method static readExternal(Ljava/io/DataInput;)Lk/b/a/g;
    .locals 1

    .line 1
    invoke-static {p0}, Lk/b/a/f;->readExternal(Ljava/io/DataInput;)Lk/b/a/f;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lk/b/a/h;->readExternal(Ljava/io/DataInput;)Lk/b/a/h;

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lk/b/a/g;->of(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

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

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lk/b/a/n;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/c;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public atOffset(Lk/b/a/r;)Lk/b/a/k;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lk/b/a/k;->of(Lk/b/a/g;Lk/b/a/r;)Lk/b/a/k;

    move-result-object p1

    return-object p1
.end method

.method public atZone(Lk/b/a/q;)Lk/b/a/t;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lk/b/a/t;->of(Lk/b/a/g;Lk/b/a/q;)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic atZone(Lk/b/a/q;)Lk/b/a/u/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/g;->atZone(Lk/b/a/q;)Lk/b/a/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/u/c;

    invoke-virtual {p0, p1}, Lk/b/a/g;->compareTo(Lk/b/a/u/c;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lk/b/a/u/c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)I"
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lk/b/a/g;

    invoke-direct {p0, p1}, Lk/b/a/g;->a(Lk/b/a/g;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/u/c;->compareTo(Lk/b/a/u/c;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lk/b/a/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lk/b/a/g;

    .line 3
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    iget-object v3, p1, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v1, v3}, Lk/b/a/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    iget-object p1, p1, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1, p1}, Lk/b/a/h;->equals(Ljava/lang/Object;)Z

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lk/b/a/u/c;->format(Lk/b/a/v/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Lk/b/a/x/i;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->get(Lk/b/a/x/i;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->get(Lk/b/a/x/i;)I

    move-result p1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p1

    return p1
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()Lk/b/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getDayOfWeek()Lk/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getDayOfYear()I

    move-result v0

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

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
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinute()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getMinute()I

    move-result v0

    return v0
.end method

.method public getMonth()Lk/b/a/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getMonth()Lk/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public getMonthValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getMonthValue()I

    move-result v0

    return v0
.end method

.method public getNano()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getNano()I

    move-result v0

    return v0
.end method

.method public getSecond()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0}, Lk/b/a/h;->getSecond()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->getYear()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0}, Lk/b/a/f;->hashCode()I

    move-result v0

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1}, Lk/b/a/h;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lk/b/a/u/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk/b/a/g;

    invoke-direct {p0, p1}, Lk/b/a/g;->a(Lk/b/a/g;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/u/c;->isAfter(Lk/b/a/u/c;)Z

    move-result p1

    return p1
.end method

.method public isBefore(Lk/b/a/u/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk/b/a/g;

    invoke-direct {p0, p1}, Lk/b/a/g;->a(Lk/b/a/g;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/u/c;->isBefore(Lk/b/a/u/c;)Z

    move-result p1

    return p1
.end method

.method public isEqual(Lk/b/a/u/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/u/c<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lk/b/a/g;

    invoke-direct {p0, p1}, Lk/b/a/g;->a(Lk/b/a/g;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lk/b/a/u/c;->isEqual(Lk/b/a/u/c;)Z

    move-result p1

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
    invoke-interface {p1}, Lk/b/a/x/i;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

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
    .locals 3

    .line 4
    instance-of v0, p1, Lk/b/a/x/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
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

    .line 6
    invoke-interface {p1, p0}, Lk/b/a/x/l;->isSupportedBy(Lk/b/a/x/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public minus(JLk/b/a/x/l;)Lk/b/a/g;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minus(Lk/b/a/x/h;)Lk/b/a/g;
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lk/b/a/x/h;->subtractFrom(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/g;

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/u/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->minus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/u/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/g;->minus(Lk/b/a/x/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->minus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/g;->minus(Lk/b/a/x/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public minusDays(J)Lk/b/a/g;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusHours(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public minusMonths(J)Lk/b/a/g;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusMonths(J)Lk/b/a/g;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/g;->plusMonths(J)Lk/b/a/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusMonths(J)Lk/b/a/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusNanos(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public minusWeeks(J)Lk/b/a/g;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusWeeks(J)Lk/b/a/g;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/g;->plusWeeks(J)Lk/b/a/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusWeeks(J)Lk/b/a/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public minusYears(J)Lk/b/a/g;
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusYears(J)Lk/b/a/g;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lk/b/a/g;->plusYears(J)Lk/b/a/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusYears(J)Lk/b/a/g;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/g;
    .locals 4

    .line 6
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p3

    check-cast v0, Lk/b/a/x/b;

    .line 8
    sget-object v1, Lk/b/a/g$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 9
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/f;->plus(JLk/b/a/x/l;)Lk/b/a/f;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 10
    div-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-virtual {p3, p1, p2}, Lk/b/a/g;->plusHours(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusHours(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusMinutes(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusSeconds(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 14
    div-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-virtual {p3, p1, p2}, Lk/b/a/g;->plusNanos(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 15
    div-long v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lk/b/a/g;->plusDays(J)Lk/b/a/g;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-virtual {p3, p1, p2}, Lk/b/a/g;->plusNanos(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lk/b/a/g;->plusNanos(J)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/g;

    return-object p1

    nop

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

.method public plus(Lk/b/a/x/h;)Lk/b/a/g;
    .locals 0

    .line 5
    invoke-interface {p1, p0}, Lk/b/a/x/h;->addTo(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/g;

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/u/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lk/b/a/g;->plus(Lk/b/a/x/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->plus(JLk/b/a/x/l;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lk/b/a/x/h;)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lk/b/a/g;->plus(Lk/b/a/x/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusDays(J)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusMonths(J)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusMonths(J)Lk/b/a/f;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusNanos(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(J)Lk/b/a/g;
    .locals 11

    .line 1
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lk/b/a/g;->a(Lk/b/a/f;JJJJI)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusWeeks(J)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusWeeks(J)Lk/b/a/f;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public plusYears(J)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2}, Lk/b/a/f;->plusYears(J)Lk/b/a/f;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

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
    invoke-static {}, Lk/b/a/x/j;->b()Lk/b/a/x/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/b/a/g;->toLocalDate()Lk/b/a/f;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/u/c;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public range(Lk/b/a/x/i;)Lk/b/a/x/n;
    .locals 1

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lk/b/a/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    return-object v0
.end method

.method public bridge synthetic toLocalDate()Lk/b/a/u/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/b/a/g;->toLocalDate()Lk/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public toLocalTime()Lk/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v1}, Lk/b/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1}, Lk/b/a/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncatedTo(Lk/b/a/x/l;)Lk/b/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1, p1}, Lk/b/a/h;->truncatedTo(Lk/b/a/x/l;)Lk/b/a/h;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 12

    .line 1
    invoke-static {p1}, Lk/b/a/g;->from(Lk/b/a/x/e;)Lk/b/a/g;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_5

    .line 3
    move-object v0, p2

    check-cast v0, Lk/b/a/x/b;

    .line 4
    invoke-virtual {v0}, Lk/b/a/x/b;->isTimeBased()Z

    move-result v1

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    iget-object v4, p1, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v1, v4}, Lk/b/a/f;->daysUntil(Lk/b/a/f;)J

    move-result-wide v4

    .line 6
    iget-object p1, p1, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {p1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v6

    iget-object p1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {p1}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide v8, 0x4e94914f0000L

    const-wide/16 v10, 0x0

    cmp-long p1, v4, v10

    if-lez p1, :cond_0

    cmp-long p1, v6, v10

    if-gez p1, :cond_0

    sub-long/2addr v4, v2

    add-long/2addr v6, v8

    goto :goto_0

    :cond_0
    cmp-long p1, v4, v10

    if-gez p1, :cond_1

    cmp-long p1, v6, v10

    if-lez p1, :cond_1

    add-long/2addr v4, v2

    sub-long/2addr v6, v8

    .line 7
    :cond_1
    :goto_0
    sget-object p1, Lk/b/a/g$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 8
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
    const/4 p1, 0x2

    .line 9
    invoke-static {v4, v5, p1}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide v0, 0x274a48a78000L

    .line 10
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_1
    const/16 p1, 0x18

    .line 11
    invoke-static {v4, v5, p1}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide v0, 0x34630b8a000L

    .line 12
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_2
    const/16 p1, 0x5a0

    .line 13
    invoke-static {v4, v5, p1}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide v0, 0xdf8475800L

    .line 14
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_3
    const p1, 0x15180

    .line 15
    invoke-static {v4, v5, p1}, Lk/b/a/w/d;->b(JI)J

    move-result-wide p1

    const-wide/32 v0, 0x3b9aca00

    .line 16
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_4
    const-wide/32 p1, 0x5265c00

    .line 17
    invoke-static {v4, v5, p1, p2}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    .line 18
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    :pswitch_5
    const-wide p1, 0x141dd76000L

    .line 19
    invoke-static {v4, v5, p1, p2}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 20
    div-long/2addr v6, v0

    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    .line 21
    :pswitch_6
    invoke-static {v4, v5, v8, v9}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide p1

    .line 22
    invoke-static {p1, p2, v6, v7}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    .line 23
    :cond_2
    iget-object v0, p1, Lk/b/a/g;->date:Lk/b/a/f;

    .line 24
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, v1}, Lk/b/a/f;->isAfter(Lk/b/a/u/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lk/b/a/g;->time:Lk/b/a/h;

    iget-object v4, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1, v4}, Lk/b/a/h;->isBefore(Lk/b/a/h;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v0, v2, v3}, Lk/b/a/f;->minusDays(J)Lk/b/a/f;

    move-result-object v0

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, v1}, Lk/b/a/f;->isBefore(Lk/b/a/u/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lk/b/a/g;->time:Lk/b/a/h;

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {p1, v1}, Lk/b/a/h;->isAfter(Lk/b/a/h;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v0, v2, v3}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object v0

    .line 28
    :cond_4
    :goto_1
    iget-object p1, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {p1, v0, p2}, Lk/b/a/f;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1

    .line 29
    :cond_5
    invoke-interface {p2, p0, p1}, Lk/b/a/x/l;->between(Lk/b/a/x/d;Lk/b/a/x/d;)J

    move-result-wide p1

    return-wide p1

    nop

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

.method public with(Lk/b/a/x/f;)Lk/b/a/g;
    .locals 1

    .line 5
    instance-of v0, p1, Lk/b/a/f;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lk/b/a/f;

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    instance-of v0, p1, Lk/b/a/h;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    check-cast p1, Lk/b/a/h;

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    instance-of v0, p1, Lk/b/a/g;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lk/b/a/g;

    return-object p1

    .line 11
    :cond_2
    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/g;

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/g;
    .locals 2

    .line 12
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    iget-object v1, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v1, p1, p2, p3}, Lk/b/a/h;->with(Lk/b/a/x/i;J)Lk/b/a/h;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/f;->with(Lk/b/a/x/i;J)Lk/b/a/f;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/g;

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/u/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/g;->with(Lk/b/a/x/f;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/u/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->with(Lk/b/a/x/i;J)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/g;->with(Lk/b/a/x/f;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/g;->with(Lk/b/a/x/i;J)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfMonth(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->withDayOfMonth(I)Lk/b/a/f;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withDayOfYear(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->withDayOfYear(I)Lk/b/a/f;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withHour(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withHour(I)Lk/b/a/h;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withMinute(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withMinute(I)Lk/b/a/h;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withMonth(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->withMonth(I)Lk/b/a/f;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withNano(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withNano(I)Lk/b/a/h;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withSecond(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->withSecond(I)Lk/b/a/h;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-direct {p0, v0, p1}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method public withYear(I)Lk/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->withYear(I)Lk/b/a/f;

    move-result-object p1

    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/g;->a(Lk/b/a/f;Lk/b/a/h;)Lk/b/a/g;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/g;->date:Lk/b/a/f;

    invoke-virtual {v0, p1}, Lk/b/a/f;->writeExternal(Ljava/io/DataOutput;)V

    .line 2
    iget-object v0, p0, Lk/b/a/g;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->writeExternal(Ljava/io/DataOutput;)V

    return-void
.end method
