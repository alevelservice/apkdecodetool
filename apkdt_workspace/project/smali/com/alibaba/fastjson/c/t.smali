.class public final Lcom/alibaba/fastjson/c/t;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/t;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/t;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/t;->a:Lcom/alibaba/fastjson/c/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 129
    iget-object v1, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object v3

    .line 132
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v2

    const/16 v5, 0xc

    const/16 v6, 0x10

    if-eq v2, v5, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v2

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v2, 0x0

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v9, 0x0

    .line 134
    :cond_3
    :goto_1
    iget-object v10, v0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xd

    if-nez v10, :cond_5

    .line 135
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v12

    if-ne v12, v11, :cond_4

    .line 136
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto/16 :goto_3

    .line 137
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v12

    if-ne v12, v6, :cond_5

    goto :goto_1

    :cond_5
    const/16 v12, 0x3a

    .line 138
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/a/f;->a(C)V

    const-string v12, "className"

    .line 139
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x4

    const-string v14, "syntax error"

    if-eqz v12, :cond_8

    .line 140
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v5

    if-ne v5, v4, :cond_6

    move-object v5, v3

    goto/16 :goto_2

    .line 141
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v5

    if-ne v5, v13, :cond_7

    .line 142
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 143
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v12, "methodName"

    .line 144
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 145
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v7

    if-ne v7, v4, :cond_9

    move-object v7, v3

    goto/16 :goto_2

    .line 146
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v7

    if-ne v7, v13, :cond_a

    .line 147
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 148
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v12, "fileName"

    .line 149
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 150
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v8

    if-ne v8, v4, :cond_c

    move-object v8, v3

    goto/16 :goto_2

    .line 151
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v8

    if-ne v8, v13, :cond_d

    .line 152
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 153
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v12, "lineNumber"

    .line 154
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 155
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v9

    if-ne v9, v4, :cond_f

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 156
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10

    .line 157
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->k()I

    move-result v9

    goto :goto_2

    .line 158
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v12, "nativeMethod"

    .line 159
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 160
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    if-ne v10, v4, :cond_12

    .line 161
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_2

    .line 162
    :cond_12
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_13

    .line 163
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_2

    .line 164
    :cond_13
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    const/4 v12, 0x7

    if-ne v10, v12, :cond_14

    .line 165
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_2

    .line 166
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v12, "syntax error : "

    const-string v15, "@type"

    if-ne v10, v15, :cond_19

    .line 167
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    if-ne v10, v13, :cond_17

    .line 168
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v10

    const-string v13, "java.lang.StackTraceElement"

    .line 169
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_2

    .line 170
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_17
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    if-ne v10, v4, :cond_18

    .line 172
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v10

    if-ne v10, v11, :cond_3

    .line 173
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 174
    :goto_3
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, v5, v7, v8, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 175
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 66
    const-class p3, Ljava/lang/StackTraceElement;

    if-ne p2, p3, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/c/t;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 69
    iget v0, p1, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 70
    iput v2, p1, Lcom/alibaba/fastjson/a/c;->n:I

    const/16 v0, 0x10

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 72
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "syntax error"

    if-ne v0, v3, :cond_2

    .line 73
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v3, "val"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->e()V

    const/16 p3, 0x11

    .line 75
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0xd

    .line 77
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->c(I)V

    goto :goto_0

    .line 78
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/f;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/f;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p3

    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 81
    :cond_4
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 82
    check-cast p3, Ljava/lang/String;

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 84
    :cond_5
    const-class v3, Ljava/util/UUID;

    if-ne p2, v3, :cond_6

    .line 85
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 86
    :cond_6
    const-class v3, Ljava/lang/Class;

    if-ne p2, v3, :cond_7

    .line 87
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object p1, p1, Lcom/alibaba/fastjson/a/n;->c:Ljava/lang/ClassLoader;

    invoke-static {p3, p1}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 88
    :cond_7
    const-class v3, Ljava/util/Locale;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_a

    const-string p1, "_"

    .line 89
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 90
    array-length p2, p1

    if-ne p2, v4, :cond_8

    .line 91
    new-instance p2, Ljava/util/Locale;

    aget-object p1, p1, v2

    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 92
    :cond_8
    array-length p2, p1

    if-ne p2, v1, :cond_9

    .line 93
    new-instance p2, Ljava/util/Locale;

    aget-object p3, p1, v2

    aget-object p1, p1, v4

    invoke-direct {p2, p3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 94
    :cond_9
    new-instance p2, Ljava/util/Locale;

    aget-object p3, p1, v2

    aget-object v0, p1, v4

    aget-object p1, p1, v1

    invoke-direct {p2, p3, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 95
    :cond_a
    const-class v1, Ljava/net/URI;

    if-ne p2, v1, :cond_b

    .line 96
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    .line 97
    :cond_b
    const-class v1, Ljava/net/URL;

    if-ne p2, v1, :cond_c

    .line 98
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Lcom/alibaba/fastjson/f;

    const-string p3, "create url error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 100
    :cond_c
    const-class v1, Ljava/util/regex/Pattern;

    if-ne p2, v1, :cond_d

    .line 101
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 102
    :cond_d
    const-class v1, Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_e

    .line 103
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 104
    :cond_e
    const-class v1, Ljava/util/Currency;

    if-ne p2, v1, :cond_f

    .line 105
    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 106
    :cond_f
    const-class v1, Ljava/text/SimpleDateFormat;

    if-ne p2, v1, :cond_10

    .line 107
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v0, v0, Lcom/alibaba/fastjson/a/f;->n:Ljava/util/Locale;

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 108
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object p1, p1, Lcom/alibaba/fastjson/a/f;->m:Ljava/util/TimeZone;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p2

    .line 109
    :cond_10
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_13

    const-class p1, Ljava/lang/Character;

    if-ne p2, p1, :cond_11

    goto :goto_1

    .line 110
    :cond_11
    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_12

    .line 111
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.Uri"

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "android.net.Uri"

    .line 113
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "parse"

    new-array v1, v4, [Ljava/lang/Class;

    .line 114
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 115
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 116
    new-instance p2, Lcom/alibaba/fastjson/f;

    const-string p3, "parse android.net.Uri error."

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 117
    :cond_12
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 118
    :cond_13
    :goto_1
    invoke-static {p3}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 119
    :cond_14
    instance-of p1, p3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_17

    .line 120
    check-cast p3, Lcom/alibaba/fastjson/JSONObject;

    .line 121
    const-class p1, Ljava/util/Currency;

    if-ne p2, p1, :cond_16

    const-string p1, "currency"

    .line 122
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 123
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    :cond_15
    const-string p1, "currencyCode"

    .line 124
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 125
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 126
    :cond_16
    const-class p1, Ljava/util/Map$Entry;

    if-ne p2, p1, :cond_17

    .line 127
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_17
    new-instance p1, Lcom/alibaba/fastjson/f;

    const-string p2, "except string value"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez p2, :cond_3

    .line 2
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_2

    const-class p2, Ljava/lang/Character;

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p2, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget p2, p2, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p4}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .line 5
    const-class p2, Ljava/util/Enumeration;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[]"

    .line 6
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, ""

    .line 8
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 9
    :cond_3
    instance-of v1, p2, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    .line 10
    check-cast p2, Ljava/util/regex/Pattern;

    .line 11
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 12
    :cond_4
    instance-of v1, p2, Ljava/util/TimeZone;

    if-eqz v1, :cond_5

    .line 13
    check-cast p2, Ljava/util/TimeZone;

    .line 14
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 15
    :cond_5
    instance-of v1, p2, Ljava/util/Currency;

    if-eqz v1, :cond_6

    .line 16
    check-cast p2, Ljava/util/Currency;

    .line 17
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 18
    :cond_6
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 19
    check-cast p2, Ljava/lang/Class;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 21
    :cond_7
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_9

    .line 22
    check-cast p2, Ljava/lang/Character;

    .line 23
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p3

    if-nez p3, :cond_8

    const-string p2, "\u0000"

    .line 24
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 25
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 26
    :cond_9
    instance-of v1, p2, Ljava/text/SimpleDateFormat;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 27
    move-object p3, p2

    check-cast p3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    .line 28
    iget v1, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v4, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v4, v4, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p4, :cond_a

    const/16 p4, 0x7b

    .line 30
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    const-string p4, "@type"

    .line 31
    invoke-virtual {v0, p4, v3}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    const-string p1, "val"

    .line 34
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    const/16 p1, 0x7d

    .line 36
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    return-void

    .line 37
    :cond_a
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 38
    :cond_b
    instance-of v1, p2, Lcom/alibaba/fastjson/g;

    if-eqz v1, :cond_c

    .line 39
    check-cast p2, Lcom/alibaba/fastjson/g;

    .line 40
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/g;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_4

    .line 41
    :cond_c
    instance-of v1, p2, Lcom/alibaba/fastjson/d;

    if-eqz v1, :cond_d

    .line 42
    check-cast p2, Lcom/alibaba/fastjson/d;

    .line 43
    invoke-interface {p2}, Lcom/alibaba/fastjson/d;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 44
    :cond_d
    instance-of v1, p2, Lcom/alibaba/fastjson/c/o;

    if-eqz v1, :cond_e

    .line 45
    check-cast p2, Lcom/alibaba/fastjson/c/o;

    .line 46
    invoke-interface {p2, p1, p3, p4}, Lcom/alibaba/fastjson/c/o;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 47
    :cond_e
    instance-of v1, p2, Ljava/util/Enumeration;

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 48
    iget v4, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 49
    instance-of v4, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_f

    .line 50
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 51
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object v1, p4, v3

    .line 52
    :cond_f
    move-object p4, p2

    check-cast p4, Ljava/util/Enumeration;

    .line 53
    iget-object v4, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    .line 54
    invoke-virtual {p1, v4, p2, p3, v3}, Lcom/alibaba/fastjson/c/p;->a(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    .line 55
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    .line 56
    :goto_2
    invoke-interface {p4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 57
    invoke-interface {p4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p3, v3, 0x1

    if-eqz v3, :cond_10

    .line 58
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_10
    if-nez p2, :cond_11

    .line 59
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_3

    .line 60
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 61
    iget-object v5, p1, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, p2, v5, v1}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_3
    move v3, p3

    goto :goto_2

    :cond_12
    const/16 p2, 0x5d

    .line 63
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iput-object v4, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    goto :goto_4

    :catchall_0
    move-exception p2

    iput-object v4, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    throw p2

    .line 65
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
