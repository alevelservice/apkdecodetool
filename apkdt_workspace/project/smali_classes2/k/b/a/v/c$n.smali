.class final Lk/b/a/v/c$n;
.super Lk/b/a/v/c$k;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field private final k:I

.field private final l:Lk/b/a/u/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7d0

    .line 1
    invoke-static {v1, v0, v0}, Lk/b/a/f;->of(III)Lk/b/a/f;

    return-void
.end method

.method private constructor <init>(Lk/b/a/x/i;IIILk/b/a/u/b;I)V
    .locals 7

    .line 1
    sget-object v4, Lk/b/a/v/j;->NOT_NEGATIVE:Lk/b/a/v/j;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lk/b/a/v/c$k;-><init>(Lk/b/a/x/i;IILk/b/a/v/j;ILk/b/a/v/c$a;)V

    .line 2
    iput p4, p0, Lk/b/a/v/c$n;->k:I

    .line 3
    iput-object p5, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    return-void
.end method


# virtual methods
.method a(Lk/b/a/v/d;JII)I
    .locals 7

    .line 10
    iget v0, p0, Lk/b/a/v/c$n;->k:I

    .line 11
    iget-object v1, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lk/b/a/v/d;->b()Lk/b/a/u/i;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    invoke-virtual {v0, v1}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object v0

    iget-object v1, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    invoke-virtual {v0, v1}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v0

    move-object v1, p1

    move-object v2, p0

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Lk/b/a/v/d;->a(Lk/b/a/v/c$n;JII)V

    :cond_0
    sub-int v1, p5, p4

    .line 15
    iget v2, p0, Lk/b/a/v/c$k;->f:I

    if-ne v1, v2, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v1, p2, v3

    if-ltz v1, :cond_2

    .line 16
    sget-object v1, Lk/b/a/v/c$k;->j:[I

    aget v1, v1, v2

    int-to-long v1, v1

    int-to-long v3, v0

    .line 17
    rem-long v5, v3, v1

    sub-long v5, v3, v5

    if-lez v0, :cond_1

    add-long/2addr v5, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v5, p2

    :goto_0
    move-wide p2, v5

    cmp-long v0, p2, v3

    if-gez v0, :cond_2

    add-long/2addr p2, v1

    :cond_2
    move-wide v2, p2

    .line 18
    iget-object v1, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    move-object v0, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lk/b/a/v/d;->a(Lk/b/a/x/i;JII)I

    move-result p1

    return p1
.end method

.method a(Lk/b/a/v/f;J)J
    .locals 6

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 3
    iget v2, p0, Lk/b/a/v/c$n;->k:I

    .line 4
    iget-object v3, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Lk/b/a/v/f;->d()Lk/b/a/x/e;

    move-result-object p1

    invoke-static {p1}, Lk/b/a/u/i;->from(Lk/b/a/x/e;)Lk/b/a/u/i;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    invoke-virtual {p1, v2}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object p1

    iget-object v2, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    invoke-virtual {p1, v2}, Lk/b/a/w/c;->get(Lk/b/a/x/i;)I

    move-result v2

    :cond_0
    int-to-long v3, v2

    cmp-long p1, p2, v3

    if-ltz p1, :cond_1

    .line 7
    sget-object p1, Lk/b/a/v/c$k;->j:[I

    iget v3, p0, Lk/b/a/v/c$k;->f:I

    aget v4, p1, v3

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, p2, v4

    if-gez v2, :cond_1

    .line 8
    aget p1, p1, v3

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0

    .line 9
    :cond_1
    sget-object p1, Lk/b/a/v/c$k;->j:[I

    iget p2, p0, Lk/b/a/v/c$k;->g:I

    aget p1, p1, p2

    int-to-long p1, p1

    rem-long/2addr v0, p1

    return-wide v0
.end method

.method a()Lk/b/a/v/c$k;
    .locals 9

    .line 19
    iget v0, p0, Lk/b/a/v/c$k;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 20
    :cond_0
    new-instance v0, Lk/b/a/v/c$n;

    iget-object v3, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    iget v4, p0, Lk/b/a/v/c$k;->f:I

    iget v5, p0, Lk/b/a/v/c$k;->g:I

    iget v6, p0, Lk/b/a/v/c$n;->k:I

    iget-object v7, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    const/4 v8, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lk/b/a/v/c$n;-><init>(Lk/b/a/x/i;IIILk/b/a/u/b;I)V

    return-object v0
.end method

.method bridge synthetic a(I)Lk/b/a/v/c$k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/v/c$n;->a(I)Lk/b/a/v/c$n;

    move-result-object p1

    return-object p1
.end method

.method a(I)Lk/b/a/v/c$n;
    .locals 8

    .line 21
    new-instance v7, Lk/b/a/v/c$n;

    iget-object v1, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    iget v2, p0, Lk/b/a/v/c$k;->f:I

    iget v3, p0, Lk/b/a/v/c$k;->g:I

    iget v4, p0, Lk/b/a/v/c$n;->k:I

    iget-object v5, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    iget v0, p0, Lk/b/a/v/c$k;->i:I

    add-int v6, v0, p1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lk/b/a/v/c$n;-><init>(Lk/b/a/x/i;IIILk/b/a/u/b;I)V

    return-object v7
.end method

.method a(Lk/b/a/v/d;)Z
    .locals 1

    .line 22
    invoke-virtual {p1}, Lk/b/a/v/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lk/b/a/v/c$k;->a(Lk/b/a/v/d;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReducedValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$k;->e:Lk/b/a/x/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/b/a/v/c$k;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/b/a/v/c$k;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$n;->l:Lk/b/a/u/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lk/b/a/v/c$n;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
