.class Lk/b/a/x/j$e;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Lk/b/a/x/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/x/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/b/a/x/k<",
        "Lk/b/a/r;",
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
.method public bridge synthetic a(Lk/b/a/x/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/x/j$e;->a(Lk/b/a/x/e;)Lk/b/a/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/x/e;)Lk/b/a/r;
    .locals 1

    .line 2
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lk/b/a/x/a;->OFFSET_SECONDS:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result p1

    invoke-static {p1}, Lk/b/a/r;->ofTotalSeconds(I)Lk/b/a/r;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
