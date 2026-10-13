.class public Le/a/a/a/j;
.super Ljava/lang/Object;
.source "SubscriberComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Le/a/a/a/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/a/a/h;Le/a/a/a/h;)I
    .locals 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    .line 1
    :cond_2
    invoke-virtual {p1}, Le/a/a/a/h;->b()I

    move-result v3

    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 2
    :cond_3
    invoke-virtual {p2}, Le/a/a/a/h;->b()I

    move-result v4

    if-gez v4, :cond_4

    const/4 v4, 0x0

    :cond_4
    if-ne v3, v4, :cond_7

    .line 3
    invoke-virtual {p1}, Le/a/a/a/h;->e()J

    move-result-wide v3

    invoke-virtual {p2}, Le/a/a/a/h;->e()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_5

    return v2

    .line 4
    :cond_5
    invoke-virtual {p1}, Le/a/a/a/h;->e()J

    move-result-wide v2

    invoke-virtual {p2}, Le/a/a/a/h;->e()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-gez v4, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    sub-int/2addr v3, v4

    return v3
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/a/a/a/h;

    check-cast p2, Le/a/a/a/h;

    invoke-virtual {p0, p1, p2}, Le/a/a/a/j;->a(Le/a/a/a/h;Le/a/a/a/h;)I

    move-result p1

    return p1
.end method
