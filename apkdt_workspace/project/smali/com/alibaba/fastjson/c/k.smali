.class public final Lcom/alibaba/fastjson/c/k;
.super Ljava/lang/Object;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/k;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/k;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/k;->a:Lcom/alibaba/fastjson/c/k;

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
    .locals 1
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

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/c/k;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p3, 0x0

    if-nez p4, :cond_0

    return-object p3

    .line 116
    :cond_0
    instance-of v0, p4, Ljava/util/Date;

    if-eqz v0, :cond_1

    return-object p4

    .line 117
    :cond_1
    instance-of v0, p4, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 118
    new-instance p1, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 119
    :cond_2
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 120
    check-cast p4, Ljava/lang/String;

    .line 121
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    return-object p3

    .line 122
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v0, p4}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/f;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    iget-object p1, v0, Lcom/alibaba/fastjson/a/f;->o:Ljava/util/Calendar;

    .line 125
    const-class p3, Ljava/util/Calendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p3, :cond_4

    .line 126
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    return-object p1

    .line 127
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    const-string p2, "0000-00-00"

    .line 129
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "0000-00-00T00:00:00"

    .line 130
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "0001-01-01T00:00:00+08:00"

    .line 131
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p5, :cond_7

    .line 132
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->i()Ljava/text/DateFormat;

    move-result-object p1

    .line 134
    :goto_0
    :try_start_2
    invoke-virtual {p1, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    .line 135
    :catch_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 136
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    :cond_8
    :goto_1
    return-object p3

    :catchall_0
    move-exception p1

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    throw p1

    .line 138
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/f;

    const-string p2, "parse error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 66
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x10

    if-ne v1, v3, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->t()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    :cond_0
    :goto_0
    move-object v7, v1

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 69
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 71
    iget v3, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v4, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    iget v4, v4, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 72
    new-instance v3, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 73
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/f;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    iget-object v1, v3, Lcom/alibaba/fastjson/a/f;->o:Ljava/util/Calendar;

    .line 75
    const-class v4, Ljava/util/Calendar;

    if-ne p2, v4, :cond_2

    .line 76
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->b()V

    return-object v1

    .line 77
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 78
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->b()V

    goto :goto_0

    :cond_4
    const/16 v6, 0x8

    if-ne v1, v6, :cond_5

    .line 79
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    move-object v7, v2

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xc

    const/16 v7, 0xd

    const/16 v8, 0x11

    const-string v9, "syntax error"

    if-ne v1, v6, :cond_a

    .line 80
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 81
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 82
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v1

    const-string v6, "@type"

    .line 83
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 85
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v6, p1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget v8, v0, Lcom/alibaba/fastjson/a/f;->c:I

    invoke-virtual {v6, v1, v2, v8}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object p2, v1

    .line 88
    :cond_6
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 89
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/a/c;->c(I)V

    :cond_7
    const/16 v1, 0x3a

    .line 90
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 92
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->t()J

    move-result-wide v3

    .line 93
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/a/c;->c(I)V

    goto/16 :goto_0

    .line 96
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syntax error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson/f;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_a
    iget v1, p1, Lcom/alibaba/fastjson/a/c;->n:I

    if-ne v1, v3, :cond_d

    const/4 v1, 0x0

    .line 99
    iput v1, p1, Lcom/alibaba/fastjson/a/c;->n:I

    .line 100
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 102
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v1

    const-string v3, "val"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 104
    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/a/c;->c(I)V

    goto/16 :goto_0

    .line 107
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/f;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/f;

    invoke-direct {p1, v9}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    .line 110
    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/c/k;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 111
    const-class p3, Ljava/util/Calendar;

    if-ne p2, p3, :cond_10

    .line 112
    instance-of p2, p1, Ljava/util/Calendar;

    if-eqz p2, :cond_e

    return-object p1

    .line 113
    :cond_e
    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_f

    return-object v2

    .line 114
    :cond_f
    iget-object p2, v0, Lcom/alibaba/fastjson/a/f;->m:Ljava/util/TimeZone;

    iget-object p3, v0, Lcom/alibaba/fastjson/a/f;->n:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p2

    :cond_10
    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/c/c0;->i()V

    return-void

    .line 3
    :cond_0
    iget v3, v2, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v4, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v4, v4, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v4, p4

    if-eq v3, v4, :cond_2

    .line 5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_1

    const-string v0, "new Date("

    .line 6
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    .line 7
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    const/16 v0, 0x29

    .line 8
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x7b

    .line 9
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    const/4 v3, 0x0

    const-string v4, "@type"

    .line 10
    invoke-virtual {v2, v4, v3}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    const/16 v0, 0x2c

    .line 12
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    const-string v0, "val"

    .line 13
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 14
    move-object v0, v1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    const/16 v0, 0x7d

    .line 15
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :goto_0
    return-void

    .line 16
    :cond_2
    instance-of v3, v1, Ljava/util/Calendar;

    if-eqz v3, :cond_3

    .line 17
    check-cast v1, Ljava/util/Calendar;

    .line 18
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    .line 19
    :cond_3
    check-cast v1, Ljava/util/Date;

    .line 20
    :goto_1
    iget v3, v2, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v4, Lcom/alibaba/fastjson/c/b;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/c/b;

    iget v4, v4, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->a()Ljava/text/DateFormat;

    move-result-object v3

    if-nez v3, :cond_4

    .line 22
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/fastjson/c/p;->o:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 23
    iget-object v0, v0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    :cond_4
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 27
    iget v1, v2, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v5, Lcom/alibaba/fastjson/c/b;->UseISO8601DateFormat:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_a

    .line 28
    sget-object v5, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v1, v5

    const/16 v5, 0x27

    const/16 v6, 0x22

    if-eqz v1, :cond_6

    .line 29
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    .line 31
    :goto_2
    iget-object v1, v0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    iget-object v0, v0, Lcom/alibaba/fastjson/c/p;->o:Ljava/util/Locale;

    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v1, 0x5

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v7, 0xb

    .line 36
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    .line 37
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    .line 38
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v11, 0xe

    .line 39
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v11, 0x10

    const/16 v12, 0x13

    const/16 v15, 0xa

    if-eqz v0, :cond_7

    const-string v16, "0000-00-00T00:00:00.000"

    .line 40
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v13, v0

    const/16 v0, 0x17

    .line 41
    invoke-static {v13, v14, v0, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v13, v10

    .line 42
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v12, v8

    .line 43
    invoke-static {v12, v13, v11, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v7, v7

    .line 44
    invoke-static {v7, v8, v9, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v1

    .line 45
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 46
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 47
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    goto :goto_3

    :cond_7
    if-nez v10, :cond_8

    if-nez v8, :cond_8

    if-nez v7, :cond_8

    const-string v0, "0000-00-00"

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v0, v1

    .line 49
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 50
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 51
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    goto :goto_3

    :cond_8
    const-string v0, "0000-00-00T00:00:00"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    int-to-long v13, v10

    .line 53
    invoke-static {v13, v14, v12, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v12, v8

    .line 54
    invoke-static {v12, v13, v11, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v7, v7

    .line 55
    invoke-static {v7, v8, v9, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v1

    .line 56
    invoke-static {v0, v1, v15, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v4

    const/4 v4, 0x7

    .line 57
    invoke-static {v0, v1, v4, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    int-to-long v0, v3

    const/4 v3, 0x4

    .line 58
    invoke-static {v0, v1, v3, v6}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    .line 59
    :goto_3
    invoke-virtual {v2, v6}, Ljava/io/Writer;->write([C)V

    .line 60
    iget v0, v2, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 61
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_4

    :cond_9
    const/16 v0, 0x22

    .line 62
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_4

    .line 63
    :cond_a
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    :goto_4
    return-void
.end method
