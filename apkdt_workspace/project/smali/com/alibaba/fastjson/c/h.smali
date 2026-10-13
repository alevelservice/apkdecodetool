.class public Lcom/alibaba/fastjson/c/h;
.super Ljava/lang/Object;
.source "BigDecimalCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/h;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/h;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/h;->a:Lcom/alibaba/fastjson/c/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 12
    iget-object p3, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 13
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 14
    const-class p1, Ljava/math/BigInteger;

    if-ne p2, p1, :cond_0

    .line 15
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 17
    new-instance p2, Ljava/math/BigInteger;

    const/16 p3, 0xa

    invoke-direct {p2, p1, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object p2

    .line 18
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->u()Ljava/math/BigDecimal;

    move-result-object p1

    .line 19
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object p1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 20
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->u()Ljava/math/BigDecimal;

    move-result-object p1

    .line 21
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 22
    const-class p3, Ljava/math/BigInteger;

    if-ne p2, p3, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    :cond_2
    return-object p1

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_4
    const-class p3, Ljava/math/BigInteger;

    if-ne p2, p3, :cond_5

    .line 26
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->f(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 27
    :cond_5
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 1

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
    instance-of p3, p2, Ljava/math/BigInteger;

    if-eqz p3, :cond_2

    .line 6
    check-cast p2, Ljava/math/BigInteger;

    .line 7
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    check-cast p2, Ljava/math/BigDecimal;

    .line 9
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    .line 10
    iget p3, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v0, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v0, v0, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_3

    const-class p3, Ljava/math/BigDecimal;

    if-eq p4, p3, :cond_3

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0x2e

    .line 11
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_3
    return-void
.end method
