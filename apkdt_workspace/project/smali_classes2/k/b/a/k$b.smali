.class Lk/b/a/k$b;
.super Ljava/lang/Object;
.source "OffsetDateTime.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lk/b/a/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/b/a/k;Lk/b/a/k;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Lk/b/a/k;->toEpochSecond()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lk/b/a/k;->getNano()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2}, Lk/b/a/k;->getNano()I

    move-result p1

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->a(JJ)I

    move-result v0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/k;

    check-cast p2, Lk/b/a/k;

    invoke-virtual {p0, p1, p2}, Lk/b/a/k$b;->a(Lk/b/a/k;Lk/b/a/k;)I

    move-result p1

    return p1
.end method
