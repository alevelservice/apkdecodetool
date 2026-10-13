.class public abstract Lk/b/a/a;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/b/a/a$d;,
        Lk/b/a/a$b;,
        Lk/b/a/a$a;,
        Lk/b/a/a$c;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fixed(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/a;
    .locals 1

    const-string v0, "fixedInstant"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lk/b/a/a$a;

    invoke-direct {v0, p0, p1}, Lk/b/a/a$a;-><init>(Lk/b/a/e;Lk/b/a/q;)V

    return-object v0
.end method

.method public static offset(Lk/b/a/a;Lk/b/a/d;)Lk/b/a/a;
    .locals 1

    const-string v0, "baseClock"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offsetDuration"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lk/b/a/d;->ZERO:Lk/b/a/d;

    invoke-virtual {p1, v0}, Lk/b/a/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lk/b/a/a$b;

    invoke-direct {v0, p0, p1}, Lk/b/a/a$b;-><init>(Lk/b/a/a;Lk/b/a/d;)V

    return-object v0
.end method

.method public static system(Lk/b/a/q;)Lk/b/a/a;
    .locals 1

    const-string v0, "zone"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lk/b/a/a$c;

    invoke-direct {v0, p0}, Lk/b/a/a$c;-><init>(Lk/b/a/q;)V

    return-object v0
.end method

.method public static systemDefaultZone()Lk/b/a/a;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/a$c;

    invoke-static {}, Lk/b/a/q;->systemDefault()Lk/b/a/q;

    move-result-object v1

    invoke-direct {v0, v1}, Lk/b/a/a$c;-><init>(Lk/b/a/q;)V

    return-object v0
.end method

.method public static systemUTC()Lk/b/a/a;
    .locals 2

    .line 1
    new-instance v0, Lk/b/a/a$c;

    sget-object v1, Lk/b/a/r;->UTC:Lk/b/a/r;

    invoke-direct {v0, v1}, Lk/b/a/a$c;-><init>(Lk/b/a/q;)V

    return-object v0
.end method

.method public static tick(Lk/b/a/a;Lk/b/a/d;)Lk/b/a/a;
    .locals 6

    const-string v0, "baseClock"

    .line 1
    invoke-static {p0, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "tickDuration"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lk/b/a/d;->isNegative()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lk/b/a/d;->toNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 5
    rem-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x3b9aca00

    .line 6
    rem-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    :goto_0
    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    return-object p0

    .line 7
    :cond_1
    new-instance p1, Lk/b/a/a$d;

    invoke-direct {p1, p0, v0, v1}, Lk/b/a/a$d;-><init>(Lk/b/a/a;J)V

    return-object p1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid tick duration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tick duration must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tickMinutes(Lk/b/a/q;)Lk/b/a/a;
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/a$d;

    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    const-wide v1, 0xdf8475800L

    invoke-direct {v0, p0, v1, v2}, Lk/b/a/a$d;-><init>(Lk/b/a/a;J)V

    return-object v0
.end method

.method public static tickSeconds(Lk/b/a/q;)Lk/b/a/a;
    .locals 3

    .line 1
    new-instance v0, Lk/b/a/a$d;

    invoke-static {p0}, Lk/b/a/a;->system(Lk/b/a/q;)Lk/b/a/a;

    move-result-object p0

    const-wide/32 v1, 0x3b9aca00

    invoke-direct {v0, p0, v1, v2}, Lk/b/a/a$d;-><init>(Lk/b/a/a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getZone()Lk/b/a/q;
.end method

.method public abstract hashCode()I
.end method

.method public abstract instant()Lk/b/a/e;
.end method

.method public abstract millis()J
.end method

.method public abstract withZone(Lk/b/a/q;)Lk/b/a/a;
.end method
