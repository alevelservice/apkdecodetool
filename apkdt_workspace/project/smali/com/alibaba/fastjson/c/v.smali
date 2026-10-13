.class public Lcom/alibaba/fastjson/c/v;
.super Ljava/lang/Object;
.source "NumberCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final b:Lcom/alibaba/fastjson/c/v;


# instance fields
.field private a:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/v;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/v;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/v;->b:Lcom/alibaba/fastjson/c/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alibaba/fastjson/c/v;->a:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 30
    iget-object p3, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 31
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 32
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_8

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_0

    goto :goto_3

    .line 33
    :cond_0
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_7

    const-class p1, Ljava/lang/Float;

    if-ne p2, p1, :cond_1

    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->t()J

    move-result-wide v2

    .line 35
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 36
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_6

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_5

    const-class p1, Ljava/lang/Byte;

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const-wide/32 p1, -0x80000000

    cmp-long p3, v2, p1

    if-ltz p3, :cond_4

    const-wide/32 p1, 0x7fffffff

    cmp-long p3, v2, p1

    if-gtz p3, :cond_4

    long-to-int p1, v2

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 39
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    long-to-int p1, v2

    int-to-byte p1, p1

    .line 40
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    long-to-int p1, v2

    int-to-short p1, p1

    .line 41
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 42
    :cond_7
    :goto_2
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 44
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 45
    :cond_8
    :goto_3
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 47
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    .line 48
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_11

    const-class p1, Ljava/lang/Double;

    if-ne p2, p1, :cond_a

    goto :goto_7

    .line 49
    :cond_a
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_10

    const-class p1, Ljava/lang/Float;

    if-ne p2, p1, :cond_b

    goto :goto_6

    .line 50
    :cond_b
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->u()Ljava/math/BigDecimal;

    move-result-object p1

    .line 51
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 52
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_f

    const-class p3, Ljava/lang/Short;

    if-ne p2, p3, :cond_c

    goto :goto_5

    .line 53
    :cond_c
    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_e

    const-class p3, Ljava/lang/Byte;

    if-ne p2, p3, :cond_d

    goto :goto_4

    :cond_d
    return-object p1

    .line 54
    :cond_e
    :goto_4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 55
    :cond_f
    :goto_5
    invoke-virtual {p1}, Ljava/math/BigDecimal;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 56
    :cond_10
    :goto_6
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 58
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 59
    :cond_11
    :goto_7
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 61
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 62
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_13
    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_1b

    const-class p3, Ljava/lang/Double;

    if-ne p2, p3, :cond_14

    goto :goto_b

    .line 64
    :cond_14
    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_1a

    const-class p3, Ljava/lang/Float;

    if-ne p2, p3, :cond_15

    goto :goto_a

    .line 65
    :cond_15
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_19

    const-class p3, Ljava/lang/Short;

    if-ne p2, p3, :cond_16

    goto :goto_9

    .line 66
    :cond_16
    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_18

    const-class p3, Ljava/lang/Byte;

    if-ne p2, p3, :cond_17

    goto :goto_8

    .line 67
    :cond_17
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 68
    :cond_18
    :goto_8
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 69
    :cond_19
    :goto_9
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1a
    :goto_a
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->g(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1b
    :goto_b
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez p2, :cond_1

    .line 2
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/16 p2, 0x30

    .line 3
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    .line 5
    :cond_1
    instance-of p3, p2, Ljava/lang/Float;

    const/4 p4, 0x0

    const-string v0, ".0"

    if-eqz p3, :cond_6

    .line 6
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    .line 15
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/16 p2, 0x46

    .line 16
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_5
    :goto_1
    return-void

    .line 17
    :cond_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    .line 18
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_3

    .line 20
    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_3

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson/c/v;->a:Ljava/text/DecimalFormat;

    if-nez v1, :cond_9

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 26
    :cond_9
    invoke-virtual {v1, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    .line 27
    :cond_a
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    .line 28
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_b

    const/16 p2, 0x44

    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_b
    :goto_3
    return-void
.end method
