.class final Lk/b/a/x/g$b;
.super Ljava/lang/Object;
.source "TemporalAdjusters.java"

# interfaces
.implements Lk/b/a/x/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/x/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method private constructor <init>(ILk/b/a/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dayOfWeek"

    .line 3
    invoke-static {p2, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput p1, p0, Lk/b/a/x/g$b;->e:I

    .line 5
    invoke-virtual {p2}, Lk/b/a/c;->getValue()I

    move-result p1

    iput p1, p0, Lk/b/a/x/g$b;->f:I

    return-void
.end method

.method synthetic constructor <init>(ILk/b/a/c;Lk/b/a/x/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk/b/a/x/g$b;-><init>(ILk/b/a/c;)V

    return-void
.end method


# virtual methods
.method public adjustInto(Lk/b/a/x/d;)Lk/b/a/x/d;
    .locals 3

    .line 1
    sget-object v0, Lk/b/a/x/a;->DAY_OF_WEEK:Lk/b/a/x/a;

    invoke-interface {p1, v0}, Lk/b/a/x/e;->get(Lk/b/a/x/i;)I

    move-result v0

    .line 2
    iget v1, p0, Lk/b/a/x/g$b;->e:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lk/b/a/x/g$b;->f:I

    if-ne v0, v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget v1, p0, Lk/b/a/x/g$b;->e:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 4
    iget v1, p0, Lk/b/a/x/g$b;->f:I

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    rsub-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    int-to-long v0, v0

    .line 5
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->plus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    iget v1, p0, Lk/b/a/x/g$b;->f:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_3

    rsub-int/lit8 v0, v1, 0x7

    goto :goto_1

    :cond_3
    neg-int v0, v1

    :goto_1
    int-to-long v0, v0

    .line 7
    sget-object v2, Lk/b/a/x/b;->DAYS:Lk/b/a/x/b;

    invoke-interface {p1, v0, v1, v2}, Lk/b/a/x/d;->minus(JLk/b/a/x/l;)Lk/b/a/x/d;

    move-result-object p1

    return-object p1
.end method
