.class final enum Lk/b/a/x/c$b$b;
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
    invoke-virtual {p0, p1}, Lk/b/a/x/c$b$b;->getFrom(Lk/b/a/x/e;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lk/b/a/x/c$b$b;->range()Lk/b/a/x/n;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 3
    sget-object v2, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v2}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long p2, p2, v0

    add-long/2addr v3, p2

    invoke-interface {p1, v2, v3, v4}, Lk/b/a/x/d;->with(Lk/b/a/x/i;J)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public getBaseUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c;->e:Lk/b/a/x/l;

    return-object v0
.end method

.method public getFrom(Lk/b/a/x/e;)J
    .locals 4

    .line 1
    invoke-interface {p1, p0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    .line 3
    div-long/2addr v0, v2

    return-wide v0

    .line 4
    :cond_0
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRangeUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->YEARS:Lk/b/a/x/b;

    return-object v0
.end method

.method public isSupportedBy(Lk/b/a/x/e;)Z
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->MONTH_OF_YEAR:Lk/b/a/x/a;

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
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    .line 1
    invoke-static {v0, v1, v2, v3}, Lk/b/a/x/n;->of(JJ)Lk/b/a/x/n;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk/b/a/x/c$b$b;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method
