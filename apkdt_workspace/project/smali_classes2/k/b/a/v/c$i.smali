.class final Lk/b/a/v/c$i;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lk/b/a/v/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final e:Lk/b/a/x/i;

.field private final f:I

.field private final g:I

.field private final h:Z


# direct methods
.method constructor <init>(Lk/b/a/x/i;IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "field"

    .line 2
    invoke-static {p1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object v0

    invoke-virtual {v0}, Lk/b/a/x/n;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p2, :cond_2

    const/16 v0, 0x9

    if-gt p2, v0, :cond_2

    const/4 v1, 0x1

    if-lt p3, v1, :cond_1

    if-gt p3, v0, :cond_1

    if-lt p3, p2, :cond_0

    .line 4
    iput-object p1, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    .line 5
    iput p2, p0, Lk/b/a/v/c$i;->f:I

    .line 6
    iput p3, p0, Lk/b/a/v/c$i;->g:I

    .line 7
    iput-boolean p4, p0, Lk/b/a/v/c$i;->h:Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maximum width must exceed or equal the minimum width but "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Maximum width must be from 1 to 9 inclusive but was "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Minimum width must be from 0 to 9 inclusive but was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Field must have a fixed set of values: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/math/BigDecimal;)J
    .locals 4

    .line 8
    iget-object v0, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    invoke-interface {v0}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lk/b/a/x/n;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method private a(J)Ljava/math/BigDecimal;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    invoke-interface {v0}, Lk/b/a/x/i;->range()Lk/b/a/x/n;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    invoke-virtual {v0, p1, p2, v1}, Lk/b/a/x/n;->checkValidValue(JLk/b/a/x/i;)J

    .line 3
    invoke-virtual {v0}, Lk/b/a/x/n;->getMinimum()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lk/b/a/x/n;->getMaximum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 6
    sget-object p2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 7
    sget-object p2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public parse(Lk/b/a/v/d;Ljava/lang/CharSequence;I)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Lk/b/a/v/d;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lk/b/a/v/c$i;->f:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lk/b/a/v/d;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lk/b/a/v/c$i;->g:I

    goto :goto_1

    :cond_1
    const/16 v2, 0x9

    .line 3
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne p3, v3, :cond_3

    if-lez v0, :cond_2

    xor-int/lit8 p3, p3, -0x1

    :cond_2
    return p3

    .line 4
    :cond_3
    iget-boolean v4, p0, Lk/b/a/v/c$i;->h:Z

    if-eqz v4, :cond_6

    .line 5
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p1}, Lk/b/a/v/d;->d()Lk/b/a/v/h;

    move-result-object v5

    invoke-virtual {v5}, Lk/b/a/v/h;->a()C

    move-result v5

    if-eq v4, v5, :cond_5

    if-lez v0, :cond_4

    xor-int/lit8 p3, p3, -0x1

    :cond_4
    return p3

    :cond_5
    add-int/lit8 p3, p3, 0x1

    :cond_6
    move v8, p3

    add-int/2addr v0, v8

    if-le v0, v3, :cond_7

    xor-int/lit8 p1, v8, -0x1

    return p1

    :cond_7
    add-int/2addr v2, v8

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    move v1, v8

    const/4 v2, 0x0

    :goto_2
    if-ge v1, p3, :cond_a

    add-int/lit8 v3, v1, 0x1

    .line 7
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 8
    invoke-virtual {p1}, Lk/b/a/v/d;->d()Lk/b/a/v/h;

    move-result-object v4

    invoke-virtual {v4, v1}, Lk/b/a/v/h;->a(C)I

    move-result v1

    if-gez v1, :cond_9

    if-ge v3, v0, :cond_8

    xor-int/lit8 p1, v8, -0x1

    return p1

    :cond_8
    add-int/lit8 v3, v3, -0x1

    move v9, v3

    goto :goto_3

    :cond_9
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    move v1, v3

    goto :goto_2

    :cond_a
    move v9, v1

    .line 9
    :goto_3
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v2}, Ljava/math/BigDecimal;-><init>(I)V

    sub-int p3, v9, v8

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p2

    .line 10
    invoke-direct {p0, p2}, Lk/b/a/v/c$i;->a(Ljava/math/BigDecimal;)J

    move-result-wide v6

    .line 11
    iget-object v5, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lk/b/a/v/d;->a(Lk/b/a/x/i;JII)I

    move-result p1

    return p1
.end method

.method public print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    invoke-virtual {p1, v0}, Lk/b/a/v/f;->a(Lk/b/a/x/i;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk/b/a/v/f;->c()Lk/b/a/v/h;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lk/b/a/v/c$i;->a(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget v0, p0, Lk/b/a/v/c$i;->f:I

    if-lez v0, :cond_4

    .line 6
    iget-boolean v0, p0, Lk/b/a/v/c$i;->h:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lk/b/a/v/h;->a()C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, Lk/b/a/v/c$i;->f:I

    if-ge v1, v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lk/b/a/v/h;->d()C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget v2, p0, Lk/b/a/v/c$i;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lk/b/a/v/c$i;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lk/b/a/v/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-boolean v1, p0, Lk/b/a/v/c$i;->h:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {p1}, Lk/b/a/v/h;->a()C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk/b/a/v/c$i;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ",DecimalPoint"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fraction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/b/a/v/c$i;->e:Lk/b/a/x/i;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lk/b/a/v/c$i;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk/b/a/v/c$i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
