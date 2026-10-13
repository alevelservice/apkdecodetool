.class final Lk/b/a/u/d;
.super Lk/b/a/u/c;
.source "ChronoLocalDateTimeImpl.java"

# interfaces
.implements Lk/b/a/x/d;
.implements Lk/b/a/x/f;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lk/b/a/u/b;",
        ">",
        "Lk/b/a/u/c<",
        "TD;>;",
        "Lk/b/a/x/d;",
        "Lk/b/a/x/f;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3f3a2d24660eebe2L


# instance fields
.field private final date:Lk/b/a/u/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private final time:Lk/b/a/h;


# direct methods
.method private constructor <init>(Lk/b/a/u/b;Lk/b/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Lk/b/a/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lk/b/a/u/c;-><init>()V

    const-string v0, "date"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    .line 3
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    .line 5
    iput-object p2, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    return-void
.end method

.method private a(Lk/b/a/u/b;JJJJ)Lk/b/a/u/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;JJJJ)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 4
    iget-object v2, v0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-direct {v0, v1, v2}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    .line 5
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

    .line 6
    rem-long v12, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v14, 0x3b9aca00

    mul-long v6, v6, v14

    add-long/2addr v12, v6

    rem-long v6, p4, v8

    const-wide v8, 0xdf8475800L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    rem-long v6, p2, v10

    const-wide v8, 0x34630b8a000L

    mul-long v6, v6, v8

    add-long/2addr v12, v6

    .line 7
    iget-object v6, v0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {v6}, Lk/b/a/h;->toNanoOfDay()J

    move-result-wide v6

    add-long/2addr v12, v6

    .line 8
    invoke-static {v12, v13, v2, v3}, Lk/b/a/w/d;->b(JJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 9
    invoke-static {v12, v13, v2, v3}, Lk/b/a/w/d;->c(JJ)J

    move-result-wide v2

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 10
    iget-object v2, v0, Lk/b/a/u/d;->time:Lk/b/a/h;

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Lk/b/a/h;->ofNanoOfDay(J)Lk/b/a/h;

    move-result-object v2

    .line 11
    :goto_0
    sget-object v3, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v1, v4, v5, v3}, Lk/b/a/u/b;->plus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object v1

    return-object v1
.end method

.method private a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/d;",
            "Lk/b/a/h;",
            ")",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    if-ne v0, p2, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDate(Lk/b/a/x/d;)Lk/b/a/u/b;

    move-result-object p1

    .line 3
    new-instance v0, Lk/b/a/u/d;

    invoke-direct {v0, p1, p2}, Lk/b/a/u/d;-><init>(Lk/b/a/u/b;Lk/b/a/h;)V

    return-object v0
.end method

.method static of(Lk/b/a/u/b;Lk/b/a/h;)Lk/b/a/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lk/b/a/u/b;",
            ">(TR;",
            "Lk/b/a/h;",
            ")",
            "Lk/b/a/u/d<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk/b/a/u/d;

    invoke-direct {v0, p0, p1}, Lk/b/a/u/d;-><init>(Lk/b/a/u/b;Lk/b/a/h;)V

    return-object v0
.end method

.method private plusDays(J)Lk/b/a/u/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    sget-object v1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/u/b;->plus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method private plusHours(J)Lk/b/a/u/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lk/b/a/u/d;->a(Lk/b/a/u/b;JJJJ)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method private plusMinutes(J)Lk/b/a/u/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v9}, Lk/b/a/u/d;->a(Lk/b/a/u/b;JJJJ)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method private plusNanos(J)Lk/b/a/u/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lk/b/a/u/d;->a(Lk/b/a/u/b;JJJJ)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method static readExternal(Ljava/io/ObjectInput;)Lk/b/a/u/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInput;",
            ")",
            "Lk/b/a/u/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b/a/u/b;

    .line 2
    invoke-interface {p0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/b/a/h;

    .line 3
    invoke-virtual {v0, p0}, Lk/b/a/u/b;->atTime(Lk/b/a/h;)Lk/b/a/u/c;

    move-result-object p0

    return-object p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/u/v;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lk/b/a/u/v;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public atZone(Lk/b/a/q;)Lk/b/a/u/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/q;",
            ")",
            "Lk/b/a/u/g<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lk/b/a/u/h;->ofBest(Lk/b/a/u/d;Lk/b/a/q;Lk/b/a/r;)Lk/b/a/u/g;

    move-result-object p1

    return-object p1
.end method

.method public get(Lk/b/a/x/i;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->get(Lk/b/a/x/i;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0, p1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result p1

    :goto_0
    return p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lk/b/a/u/d;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {p0, p1}, Lk/b/a/u/d;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p1

    return p1
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

    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    return-wide v0
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

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/u/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/d;->plus(JLk/b/a/x/l;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public plus(JLk/b/a/x/l;)Lk/b/a/u/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lk/b/a/x/l;",
            ")",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 3
    instance-of v0, p3, Lk/b/a/x/b;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p3

    check-cast v0, Lk/b/a/x/b;

    .line 5
    sget-object v1, Lk/b/a/u/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/u/b;->plus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-wide/16 v0, 0x100

    .line 7
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lk/b/a/u/d;->plusDays(J)Lk/b/a/u/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0xc

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lk/b/a/u/d;->plusHours(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->plusHours(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->plusMinutes(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lk/b/a/u/d;->plusSeconds(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    .line 11
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lk/b/a/u/d;->plusDays(J)Lk/b/a/u/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lk/b/a/u/d;->plusNanos(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    :pswitch_5
    const-wide v0, 0x141dd76000L

    .line 12
    div-long v2, p1, v0

    invoke-direct {p0, v2, v3}, Lk/b/a/u/d;->plusDays(J)Lk/b/a/u/d;

    move-result-object p3

    rem-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    invoke-direct {p3, p1, p2}, Lk/b/a/u/d;->plusNanos(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->plusNanos(J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lk/b/a/x/l;->addTo(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

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

.method public bridge synthetic plus(JLk/b/a/x/l;)Lk/b/a/x/d;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/d;->plus(JLk/b/a/x/l;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method plusSeconds(J)Lk/b/a/u/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v9}, Lk/b/a/u/d;->a(Lk/b/a/u/b;JJJJ)Lk/b/a/u/d;

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

    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {v0, p1}, Lk/b/a/h;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0, p1}, Lk/b/a/w/c;->range(Lk/b/a/x/i;)Lk/b/a/x/n;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3
    :cond_1
    invoke-interface {p1, p0}, Lk/b/a/x/i;->rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toLocalDate()Lk/b/a/u/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    return-object v0
.end method

.method public toLocalTime()Lk/b/a/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    return-object v0
.end method

.method public until(Lk/b/a/x/d;Lk/b/a/x/l;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lk/b/a/u/d;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->localDateTime(Lk/b/a/x/e;)Lk/b/a/u/c;

    move-result-object p1

    .line 2
    instance-of v0, p2, Lk/b/a/x/b;

    if-eqz v0, :cond_2

    .line 3
    move-object v0, p2

    check-cast v0, Lk/b/a/x/b;

    .line 4
    invoke-virtual {v0}, Lk/b/a/x/b;->isTimeBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p1, v1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v1

    iget-object v3, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    sget-object v4, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {v3, v4}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 6
    sget-object v3, Lk/b/a/u/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    .line 7
    invoke-static {v1, v2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x18

    .line 8
    invoke-static {v1, v2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v1

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x5a0

    .line 9
    invoke-static {v1, v2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v1

    goto :goto_0

    :pswitch_3
    const v0, 0x15180

    .line 10
    invoke-static {v1, v2, v0}, Lk/b/a/w/d;->b(JI)J

    move-result-wide v1

    goto :goto_0

    :pswitch_4
    const-wide/32 v3, 0x5265c00

    .line 11
    invoke-static {v1, v2, v3, v4}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v1

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x141dd76000L

    .line 12
    invoke-static {v1, v2, v3, v4}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v1

    goto :goto_0

    :pswitch_6
    const-wide v3, 0x4e94914f0000L

    .line 13
    invoke-static {v1, v2, v3, v4}, Lk/b/a/w/d;->e(JJ)J

    move-result-wide v1

    .line 14
    :goto_0
    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lk/b/a/h;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Lk/b/a/w/d;->d(JJ)J

    move-result-wide p1

    return-wide p1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalDate()Lk/b/a/u/b;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lk/b/a/u/c;->toLocalTime()Lk/b/a/h;

    move-result-object p1

    iget-object v1, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {p1, v1}, Lk/b/a/h;->isBefore(Lk/b/a/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x1

    .line 17
    sget-object p1, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-virtual {v0, v1, v2, p1}, Lk/b/a/u/b;->minus(JLk/b/a/x/l;)Lk/b/a/u/b;

    move-result-object v0

    .line 18
    :cond_1
    iget-object p1, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-interface {p1, v0, p2}, Lk/b/a/x/d;->until(Lk/b/a/x/d;Lk/b/a/x/l;)J

    move-result-wide p1

    return-wide p1

    .line 19
    :cond_2
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

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/u/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/u/d;->with(Lk/b/a/x/f;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/u/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/d;->with(Lk/b/a/x/i;J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/f;)Lk/b/a/u/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/f;",
            ")",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 5
    instance-of v0, p1, Lk/b/a/u/b;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lk/b/a/u/b;

    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-direct {p0, p1, v0}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    instance-of v0, p1, Lk/b/a/h;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    check-cast p1, Lk/b/a/h;

    invoke-direct {p0, v0, p1}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    instance-of v0, p1, Lk/b/a/u/d;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    check-cast p1, Lk/b/a/u/d;

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-interface {p1, p0}, Lk/b/a/x/f;->adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;

    move-result-object p1

    check-cast p1, Lk/b/a/u/d;

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public with(Lk/b/a/x/i;J)Lk/b/a/u/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b/a/x/i;",
            "J)",
            "Lk/b/a/u/d<",
            "TD;>;"
        }
    .end annotation

    .line 12
    instance-of v0, p1, Lk/b/a/x/a;

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Lk/b/a/x/i;->isTimeBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    iget-object v1, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-virtual {v1, p1, p2, p3}, Lk/b/a/h;->with(Lk/b/a/x/i;J)Lk/b/a/h;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/u/b;->with(Lk/b/a/x/i;J)Lk/b/a/u/b;

    move-result-object p1

    iget-object p2, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-direct {p0, p1, p2}, Lk/b/a/u/d;->a(Lk/b/a/x/d;Lk/b/a/h;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-virtual {v0}, Lk/b/a/u/b;->getChronology()Lk/b/a/u/i;

    move-result-object v0

    invoke-interface {p1, p0, p2, p3}, Lk/b/a/x/i;->adjustInto(Lk/b/a/x/d;J)Lk/b/a/x/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/b/a/u/i;->ensureChronoLocalDateTime(Lk/b/a/x/d;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/f;)Lk/b/a/x/d;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lk/b/a/u/d;->with(Lk/b/a/x/f;)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lk/b/a/x/i;J)Lk/b/a/x/d;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lk/b/a/u/d;->with(Lk/b/a/x/i;J)Lk/b/a/u/d;

    move-result-object p1

    return-object p1
.end method

.method writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/u/d;->date:Lk/b/a/u/b;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lk/b/a/u/d;->time:Lk/b/a/h;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
