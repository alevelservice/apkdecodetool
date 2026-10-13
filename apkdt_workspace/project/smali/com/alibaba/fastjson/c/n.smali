.class public final Lcom/alibaba/fastjson/c/n;
.super Ljava/lang/Object;
.source "IntegerCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static a:Lcom/alibaba/fastjson/c/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/n;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/n;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/n;->a:Lcom/alibaba/fastjson/c/n;

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

    .line 19
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 20
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 21
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 22
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_2

    const-class p1, Ljava/lang/Long;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->k()I

    move-result p1

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "int value overflow, field : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->t()J

    move-result-wide p1

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 28
    :goto_1
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_4

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->u()Ljava/math/BigDecimal;

    move-result-object p1

    .line 30
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 31
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p3, :cond_5

    const-class p3, Ljava/lang/Long;

    if-ne p2, p3, :cond_4

    goto :goto_2

    .line 32
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 33
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_4

    .line 34
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    .line 35
    :try_start_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_7

    goto :goto_3

    .line 36
    :cond_7
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->k(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    .line 37
    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/alibaba/fastjson/e/d;->j(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    return-object p1

    :catch_1
    move-exception p2

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cast error, field : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", value "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    .line 2
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    if-nez p3, :cond_1

    .line 3
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/16 p2, 0x30

    .line 4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    .line 6
    :cond_1
    instance-of p2, p2, Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->d(I)V

    .line 9
    :goto_1
    iget p2, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v0, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v0, v0, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 11
    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_3

    const/16 p2, 0x42

    .line 12
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_2

    .line 13
    :cond_3
    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_4

    const/16 p2, 0x53

    .line 14
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_2

    .line 15
    :cond_4
    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_5

    .line 16
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gtz v2, :cond_5

    const-wide/32 v0, -0x80000000

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    .line 17
    const-class p2, Ljava/lang/Long;

    if-eq p4, p2, :cond_5

    const/16 p2, 0x4c

    .line 18
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_5
    :goto_2
    return-void
.end method
