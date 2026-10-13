.class final enum Lk/b/a/x/c$b$d;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lk/b/a/x/d;",
            ">(TR;J)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/x/c$b$d;->isSupportedBy(Lk/b/a/x/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/b/a/x/c$b$d;->range()Lk/b/a/x/n;

    move-result-object v0

    sget-object v1, Lk/b/a/x/c$b;->WEEK_BASED_YEAR:Lk/b/a/x/c$b;

    invoke-virtual {v0, p2, p3, v1}, Lk/b/a/x/n;->checkValidIntValue(JLk/b/a/x/i;)I

    move-result p2

    .line 3
    invoke-static {p1}, Lk/b/a/f;->from(Lk/b/a/x/e;)Lk/b/a/f;

    move-result-object p3

    .line 4
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-virtual {p3, v0}, Lk/b/a/f;->get(Lk/b/a/x/i;)I

    move-result v0

    .line 5
    invoke-static {p3}, Lk/b/a/x/c$b;->access$400(Lk/b/a/f;)I

    move-result p3

    const/16 v1, 0x35

    const/16 v2, 0x34

    if-ne p3, v1, :cond_0

    .line 6
    invoke-static {p2}, Lk/b/a/x/c$b;->access$600(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 p3, 0x34

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 7
    invoke-static {p2, v2, v1}, Lk/b/a/f;->of(III)Lk/b/a/f;

    move-result-object p2

    .line 8
    sget-object v1, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-virtual {p2, v1}, Lk/b/a/f;->get(Lk/b/a/x/i;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr p3, v2

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr v0, p3

    int-to-long v0, v0

    .line 9
    invoke-virtual {p2, v0, v1}, Lk/b/a/f;->plusDays(J)Lk/b/a/f;

    move-result-object p2

    .line 10
    invoke-interface {p1, p2}, Lk/b/a/x/d;->with(Lk/b/a/x/f;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Lk/b/a/x/m;

    const-string p2, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, p2}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/c;->d:Lk/b/a/x/l;

    return-object v0
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

    invoke-static {p1}, Lk/b/a/x/c$b;->access$500(Lk/b/a/f;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    .line 3
    :cond_0
    new-instance p1, Lk/b/a/x/m;

    const-string v0, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, v0}, Lk/b/a/x/m;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRangeUnit()Lk/b/a/x/l;
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/b;->FOREVER:Lk/b/a/x/b;

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
    .locals 1

    .line 1
    sget-object v0, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {v0}, Lk/b/a/x/a;->range()Lk/b/a/x/n;

    move-result-object v0

    return-object v0
.end method

.method public rangeRefinedBy(Lk/b/a/x/e;)Lk/b/a/x/n;
    .locals 0

    .line 1
    sget-object p1, Lk/b/a/x/a;->YEAR:Lk/b/a/x/a;

    invoke-virtual {p1}, Lk/b/a/x/a;->range()Lk/b/a/x/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
