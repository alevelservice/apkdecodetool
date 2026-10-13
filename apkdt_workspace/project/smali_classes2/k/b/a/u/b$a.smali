.class Lk/b/a/u/b$a;
.super Ljava/lang/Object;
.source "ChronoLocalDate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/u/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lk/b/a/u/b;",
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
.method public a(Lk/b/a/u/b;Lk/b/a/u/b;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide v0

    invoke-virtual {p2}, Lk/b/a/u/b;->toEpochDay()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lk/b/a/w/d;->a(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lk/b/a/u/b;

    check-cast p2, Lk/b/a/u/b;

    invoke-virtual {p0, p1, p2}, Lk/b/a/u/b$a;->a(Lk/b/a/u/b;Lk/b/a/u/b;)I

    move-result p1

    return p1
.end method
