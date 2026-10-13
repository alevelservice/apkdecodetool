.class Lcom/alibaba/fastjson/a/l;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;


# static fields
.field public static a:Lcom/alibaba/fastjson/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/a/l;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/l;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/l;->a:Lcom/alibaba/fastjson/a/l;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 77
    iget-object v4, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 78
    iget v5, v4, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v6, 0x10

    const/16 v7, 0xc

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    :goto_0
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v5

    .line 81
    iget-object v7, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v7

    .line 82
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 83
    iget-object v8, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 84
    :goto_1
    :try_start_0
    iget v9, v4, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_2

    .line 85
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v0

    :cond_2
    const/16 v11, 0x3a

    const/4 v13, 0x1

    const/4 v14, 0x4

    if-ne v9, v14, :cond_8

    .line 87
    :try_start_1
    iget v15, v4, Lcom/alibaba/fastjson/a/f;->h:I

    if-ne v15, v14, :cond_8

    iget-object v15, v4, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    const-string v12, "$ref"

    iget v6, v4, Lcom/alibaba/fastjson/a/f;->k:I

    add-int/2addr v6, v13

    .line 88
    invoke-virtual {v15, v12, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    .line 89
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/e;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 90
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 91
    iget v0, v4, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v0, v14, :cond_7

    .line 92
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".."

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    iget-object v0, v8, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    .line 95
    iget-object v12, v0, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v2, "$"

    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v8

    .line 97
    :goto_2
    iget-object v2, v0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    if-eqz v2, :cond_4

    .line 98
    iget-object v0, v0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    goto :goto_2

    .line 99
    :cond_4
    iget-object v12, v0, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_3

    .line 100
    :cond_5
    new-instance v2, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v2, v8, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 101
    iput v13, v1, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v12, 0x0

    .line 102
    :goto_3
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 103
    iget v0, v4, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v0, v10, :cond_6

    const/16 v0, 0x10

    .line 104
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v12

    .line 106
    :cond_6
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_a

    if-ne v9, v14, :cond_a

    const-string v6, "@type"

    .line 109
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    .line 110
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/e;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 111
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/a/f;->a(C)V

    const/16 v6, 0x10

    .line 112
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 113
    iget v6, v4, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v6, v10, :cond_9

    .line 114
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v0

    .line 116
    :cond_9
    :try_start_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->e()V

    :cond_a
    const/4 v6, 0x0

    .line 117
    invoke-interface {v5, v1, v2, v6}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 118
    iget v9, v4, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v10, 0x11

    if-ne v9, v10, :cond_d

    .line 119
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 120
    invoke-interface {v7, v1, v3, v6}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 121
    iget v10, v1, Lcom/alibaba/fastjson/a/c;->n:I

    if-ne v10, v13, :cond_b

    .line 122
    invoke-virtual {v1, v0, v6}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 123
    :cond_b
    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget v6, v4, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v9, 0x10

    if-ne v6, v9, :cond_c

    .line 125
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->e()V

    :cond_c
    const/16 v6, 0x10

    goto/16 :goto_1

    .line 126
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect :, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 127
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 21
    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    .line 22
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 24
    iget-char v2, v0, Lcom/alibaba/fastjson/a/f;->d:C

    :goto_0
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 26
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 27
    iget-char v2, v0, Lcom/alibaba/fastjson/a/f;->d:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string v3, "syntax error, "

    const/4 v4, 0x0

    const/16 v5, 0x3a

    const/16 v6, 0x22

    const/16 v7, 0x10

    if-ne v2, v6, :cond_3

    .line 28
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 30
    iget-char v8, v0, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v5, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v8, 0x7d

    if-ne v2, v8, :cond_4

    .line 32
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 33
    iput v4, v0, Lcom/alibaba/fastjson/a/f;->h:I

    .line 34
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p1

    :cond_4
    const/16 v8, 0x27

    if-ne v2, v8, :cond_6

    .line 36
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v0, v2, v8}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 38
    iget-char v8, v0, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v5, :cond_5

    goto :goto_1

    .line 39
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_6
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 42
    iget-char v3, v0, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v3, v5, :cond_e

    .line 43
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 44
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 45
    iget-char v3, v0, Lcom/alibaba/fastjson/a/f;->d:C

    .line 46
    iput v4, v0, Lcom/alibaba/fastjson/a/f;->h:I

    const-string v3, "@type"

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-ne v2, v3, :cond_9

    .line 47
    sget-object v3, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/e;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 48
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v0, v2, v6}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget v6, v0, Lcom/alibaba/fastjson/a/f;->c:I

    invoke-virtual {v3, v2, v5, v6}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 51
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 52
    iget v2, v0, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v2, v4, :cond_0

    .line 53
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p1

    .line 55
    :cond_7
    :try_start_3
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object p1

    .line 56
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p2, 0x2

    .line 57
    iput p2, p0, Lcom/alibaba/fastjson/a/c;->n:I

    if-eqz v1, :cond_8

    .line 58
    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_8

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->o()V

    .line 60
    :cond_8
    invoke-interface {p1, p0, v2, p3}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p1

    .line 62
    :cond_9
    :try_start_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 63
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    .line 64
    iget v3, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_a

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_2

    .line 66
    :cond_a
    invoke-virtual {p0, p2, v2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 67
    :goto_2
    invoke-interface {p1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v3, p0, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 69
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Map;Ljava/lang/Object;)V

    .line 70
    :cond_b
    invoke-virtual {p0, v1, v5, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    .line 71
    iget v2, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v3, 0x14

    if-eq v2, v3, :cond_d

    const/16 v3, 0xf

    if-ne v2, v3, :cond_c

    goto :goto_3

    :cond_c
    if-ne v2, v4, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p1

    :cond_d
    :goto_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p1

    .line 74
    :cond_e
    :try_start_5
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "expect \':\' at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/alibaba/fastjson/a/f;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    throw p1

    .line 76
    :cond_f
    new-instance p0, Lcom/alibaba/fastjson/f;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syntax error, expect {, actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
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

    .line 1
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->q:Lcom/alibaba/fastjson/a/a/e;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 4
    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 p1, 0x10

    .line 5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/a/l;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 8
    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    .line 9
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 10
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 11
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 12
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v3, 0x1

    aget-object p2, p2, v3

    .line 13
    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_2

    .line 14
    invoke-static {p1, v0, p2, p3}, Lcom/alibaba/fastjson/a/l;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p2

    .line 16
    :cond_2
    :try_start_1
    invoke-static {p1, v0, v2, p2, p3}, Lcom/alibaba/fastjson/a/l;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p2

    .line 18
    :cond_3
    :try_start_2
    invoke-virtual {p1, v0, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    throw p2
.end method

.method protected a(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 128
    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    .line 129
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    return-object p1

    .line 130
    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    .line 131
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-object p1

    .line 132
    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    .line 133
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p1

    .line 134
    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_d

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_3

    goto/16 :goto_2

    .line 135
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_c

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    .line 136
    :cond_4
    const-class v0, Ljava/util/Map;

    if-eq p1, v0, :cond_b

    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 137
    :cond_5
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_6

    .line 138
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 139
    :cond_6
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v0, :cond_7

    .line 140
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    return-object p1

    .line 141
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    .line 142
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 143
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 144
    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/util/EnumMap;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 147
    :cond_8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/l;->a(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 148
    :cond_9
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    const-string v2, "unsupport type "

    if-nez v1, :cond_a

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 152
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_b
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 154
    :cond_c
    :goto_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1

    .line 155
    :cond_d
    :goto_2
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1
.end method
