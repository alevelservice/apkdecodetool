.class public Lcom/alibaba/fastjson/a/h;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;


# instance fields
.field private final a:[Lcom/alibaba/fastjson/a/a/d;

.field private final b:[Lcom/alibaba/fastjson/a/a/d;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Lcom/alibaba/fastjson/a/i;

.field private f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient g:[J

.field private transient h:[I


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/n;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    iget-object v7, p1, Lcom/alibaba/fastjson/a/n;->d:Lcom/alibaba/fastjson/h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/h;)Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a/h;-><init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/n;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/i;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    .line 4
    iput-object p4, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    .line 5
    iget-object p3, p4, Lcom/alibaba/fastjson/a/i;->f:[Lcom/alibaba/fastjson/e/a;

    array-length v0, p3

    new-array v0, v0, [Lcom/alibaba/fastjson/a/a/d;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    .line 6
    array-length p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 7
    iget-object v3, p4, Lcom/alibaba/fastjson/a/i;->f:[Lcom/alibaba/fastjson/e/a;

    aget-object v3, v3, v1

    .line 8
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/a/n;->a(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Lcom/alibaba/fastjson/e/a;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aput-object v4, v5, v1

    .line 10
    iget-object v3, v3, Lcom/alibaba/fastjson/e/a;->t:[Ljava/lang/String;

    array-length v5, v3

    move-object v6, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v3, v2

    if-nez v6, :cond_0

    .line 11
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 12
    :cond_0
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v6

    goto :goto_0

    .line 13
    :cond_2
    iput-object v2, p0, Lcom/alibaba/fastjson/a/h;->c:Ljava/util/Map;

    .line 14
    iget-object p1, p4, Lcom/alibaba/fastjson/a/i;->e:[Lcom/alibaba/fastjson/e/a;

    array-length p2, p1

    new-array p2, p2, [Lcom/alibaba/fastjson/a/a/d;

    iput-object p2, p0, Lcom/alibaba/fastjson/a/h;->a:[Lcom/alibaba/fastjson/a/a/d;

    .line 15
    array-length p1, p1

    :goto_2
    if-ge v0, p1, :cond_3

    .line 16
    iget-object p2, p4, Lcom/alibaba/fastjson/a/i;->e:[Lcom/alibaba/fastjson/e/a;

    aget-object p2, p2, v0

    .line 17
    iget-object p2, p2, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object p2

    .line 18
    iget-object p3, p0, Lcom/alibaba/fastjson/a/h;->a:[Lcom/alibaba/fastjson/a/a/d;

    aput-object p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 21
    iget-object v2, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 22
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 23
    iget-object v4, v1, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v4, v4

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/16 v7, 0x2c

    if-ge v5, v4, :cond_31

    add-int/lit8 v9, v4, -0x1

    const/16 v10, 0x5d

    if-ne v5, v9, :cond_0

    const/16 v9, 0x5d

    goto :goto_1

    :cond_0
    const/16 v9, 0x2c

    .line 24
    :goto_1
    iget-object v11, v1, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aget-object v11, v11, v5

    .line 25
    iget-object v12, v11, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    .line 26
    iget-object v13, v12, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    .line 27
    :try_start_0
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v15, 0xf

    if-ne v13, v14, :cond_6

    .line 28
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->s()J

    move-result-wide v13

    long-to-int v9, v13

    .line 29
    iget-boolean v13, v12, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v13, :cond_1

    .line 30
    iget-object v11, v12, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_2

    .line 31
    :cond_1
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :goto_2
    iget-char v9, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v9, v7, :cond_3

    .line 33
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 34
    iget v9, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v9, :cond_2

    const/16 v8, 0x1a

    goto :goto_3

    :cond_2
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 35
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_3
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 36
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_5

    .line 37
    :cond_3
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_5

    .line 38
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 39
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_4

    const/16 v8, 0x1a

    goto :goto_4

    :cond_4
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 40
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 41
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_5

    .line 42
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_5
    move-object/from16 v14, p3

    goto/16 :goto_19

    .line 43
    :cond_6
    const-class v14, Ljava/lang/String;

    const/16 v8, 0x22

    if-ne v13, v14, :cond_f

    .line 44
    iget-char v9, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v9, v8, :cond_7

    .line 45
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/a/f;->b(C)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 46
    :cond_7
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v9, 0x6e

    if-ne v8, v9, :cond_e

    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    const-string v9, "null"

    iget v13, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 47
    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 48
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v8, v8, 0x4

    iput v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 49
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 50
    iget v9, v2, Lcom/alibaba/fastjson/a/f;->e:I

    iget v13, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v9, v13, :cond_8

    const/16 v8, 0x1a

    goto :goto_6

    :cond_8
    iget-object v9, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 51
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/4 v8, 0x0

    .line 52
    :goto_7
    iget-boolean v9, v12, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v9, :cond_9

    .line 53
    iget-object v9, v12, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 54
    :cond_9
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_8
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v7, :cond_b

    .line 56
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 57
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v8, :cond_a

    const/16 v8, 0x1a

    goto :goto_9

    :cond_a
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 58
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_9
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 59
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_5

    .line 60
    :cond_b
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_d

    .line 61
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 62
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_c

    const/16 v8, 0x1a

    goto :goto_a

    :cond_c
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 63
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_a
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 64
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_5

    .line 65
    :cond_d
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    goto/16 :goto_5

    .line 66
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not match string. feild : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v14, p3

    .line 67
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_15

    .line 68
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->s()J

    move-result-wide v8

    .line 69
    iget-boolean v13, v12, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v13, :cond_10

    .line 70
    iget-object v11, v12, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v3, v8, v9}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_b

    .line 71
    :cond_10
    new-instance v13, Ljava/lang/Long;

    invoke-direct {v13, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :goto_b
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v7, :cond_12

    .line 73
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 74
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v8, :cond_11

    const/16 v8, 0x1a

    goto :goto_c

    :cond_11
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 75
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_c
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 76
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 77
    :cond_12
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_14

    .line 78
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 79
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_13

    const/16 v8, 0x1a

    goto :goto_d

    :cond_13
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 80
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_d
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 81
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 82
    :cond_14
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    goto/16 :goto_19

    .line 83
    :cond_15
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v13, v8, :cond_1b

    .line 84
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->q()Z

    move-result v8

    .line 85
    iget-boolean v9, v12, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v9, :cond_16

    .line 86
    iget-object v9, v12, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3, v8}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_e

    .line 87
    :cond_16
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :goto_e
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v7, :cond_18

    .line 89
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 90
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v8, :cond_17

    const/16 v8, 0x1a

    goto :goto_f

    :cond_17
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 91
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_f
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 92
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 93
    :cond_18
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_1a

    .line 94
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 95
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_19

    const/16 v8, 0x1a

    goto :goto_10

    :cond_19
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 96
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_10
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 97
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 98
    :cond_1a
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    goto/16 :goto_19

    .line 99
    :cond_1b
    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 100
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_1d

    .line 101
    iget-object v8, v0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1c

    const/4 v8, 0x0

    goto :goto_11

    .line 102
    :cond_1c
    invoke-static {v13, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    goto :goto_11

    :cond_1d
    const/16 v9, 0x30

    if-lt v8, v9, :cond_22

    const/16 v9, 0x39

    if-gt v8, v9, :cond_22

    .line 103
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->s()J

    move-result-wide v8

    long-to-int v9, v8

    .line 104
    move-object v8, v11

    check-cast v8, Lcom/alibaba/fastjson/a/b;

    iget-object v13, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/a/b;->a(Lcom/alibaba/fastjson/a/n;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/a/d;

    .line 105
    iget-object v8, v8, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    aget-object v8, v8, v9

    .line 106
    :goto_11
    invoke-virtual {v11, v3, v8}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v7, :cond_1f

    .line 108
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 109
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v8, :cond_1e

    const/16 v8, 0x1a

    goto :goto_12

    :cond_1e
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_12
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 111
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 112
    :cond_1f
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_21

    .line 113
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 114
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_20

    const/16 v8, 0x1a

    goto :goto_13

    :cond_20
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 115
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_13
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 116
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 117
    :cond_21
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    goto/16 :goto_19

    .line 118
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal enum."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_23
    const-class v8, Ljava/util/Date;

    if-ne v13, v8, :cond_28

    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v13, 0x31

    if-ne v8, v13, :cond_28

    .line 120
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->s()J

    move-result-wide v8

    .line 121
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v3, v13}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v8, v7, :cond_25

    .line 123
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 124
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v7, v8, :cond_24

    const/16 v8, 0x1a

    goto :goto_14

    :cond_24
    iget-object v8, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 125
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_14
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 126
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 127
    :cond_25
    iget-char v6, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v6, v10, :cond_27

    .line 128
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 129
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_26

    const/16 v8, 0x1a

    goto :goto_15

    :cond_26
    iget-object v7, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 130
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_15
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 131
    iput v15, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto/16 :goto_19

    .line 132
    :cond_27
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_19

    .line 133
    :cond_28
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v13, 0x5b

    if-ne v8, v13, :cond_2a

    .line 134
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 135
    iget v13, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v8, v13, :cond_29

    const/16 v8, 0x1a

    goto :goto_16

    :cond_29
    iget-object v13, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 136
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_16
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v8, 0xe

    .line 137
    iput v8, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_18

    .line 138
    :cond_2a
    iget-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v13, 0x7b

    if-ne v8, v13, :cond_2c

    .line 139
    iget v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 140
    iget v13, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v8, v13, :cond_2b

    const/16 v8, 0x1a

    goto :goto_17

    :cond_2b
    iget-object v13, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 141
    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_17
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v8, 0xc

    .line 142
    iput v8, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_18

    .line 143
    :cond_2c
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 144
    :goto_18
    iget-object v8, v12, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    const/4 v13, 0x0

    invoke-virtual {v11, v0, v3, v8, v13}, Lcom/alibaba/fastjson/a/a/d;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "syntax error"

    if-ne v9, v10, :cond_2e

    .line 145
    :try_start_1
    iget v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v6, v15, :cond_2d

    goto :goto_19

    .line 146
    :cond_2d
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    if-ne v9, v7, :cond_30

    .line 147
    iget v7, v2, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v7, v6, :cond_2f

    goto :goto_19

    .line 148
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_30
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 149
    new-instance v2, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 150
    :cond_31
    iget-char v0, v2, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v0, v7, :cond_33

    .line 151
    iget v0, v2, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/alibaba/fastjson/a/f;->e:I

    .line 152
    iget v4, v2, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v0, v4, :cond_32

    const/16 v8, 0x1a

    goto :goto_1a

    :cond_32
    iget-object v4, v2, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 153
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1a
    iput-char v8, v2, Lcom/alibaba/fastjson/a/f;->d:C

    .line 154
    iput v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_1b

    .line 155
    :cond_33
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_1b
    return-object v3
.end method

.method private a(Lcom/alibaba/fastjson/a/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 169
    iget-object v12, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 170
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v2

    const/4 v13, 0x0

    if-nez v2, :cond_7

    .line 171
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/String;)J

    move-result-wide v3

    .line 172
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    if-nez v5, :cond_1

    .line 173
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v5, v5

    new-array v5, v5, [J

    const/4 v6, 0x0

    .line 174
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 175
    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v7, v7, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([J)V

    .line 177
    iput-object v5, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    .line 178
    :cond_1
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    invoke-static {v5, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "is"

    .line 179
    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    .line 180
    invoke-virtual {v10, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/String;)J

    move-result-wide v5

    .line 181
    iget-object v3, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-ltz v3, :cond_7

    .line 182
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->h:[I

    const/4 v6, -0x1

    if-nez v5, :cond_6

    .line 183
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    array-length v5, v5

    new-array v5, v5, [I

    .line 184
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v7, 0x0

    .line 185
    :goto_2
    iget-object v8, v0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v9, v8

    if-ge v7, v9, :cond_5

    .line 186
    iget-object v9, v0, Lcom/alibaba/fastjson/a/h;->g:[J

    aget-object v8, v8, v7

    iget-object v8, v8, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v8, v8, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    .line 187
    invoke-static {v8}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/String;)J

    move-result-wide v14

    .line 188
    invoke-static {v9, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    if-ltz v8, :cond_4

    .line 189
    aput v7, v5, v8

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 190
    :cond_5
    iput-object v5, v0, Lcom/alibaba/fastjson/a/h;->h:[I

    .line 191
    :cond_6
    iget-object v5, v0, Lcom/alibaba/fastjson/a/h;->h:[I

    aget v3, v5, v3

    if-eq v3, v6, :cond_7

    .line 192
    iget-object v2, v0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aget-object v2, v2, v3

    .line 193
    iget-object v3, v2, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v3, v3, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    if-eqz v4, :cond_7

    .line 194
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_7

    const-class v4, Ljava/lang/Boolean;

    if-eq v3, v4, :cond_7

    const/4 v2, 0x0

    .line 195
    :cond_7
    sget-object v3, Lcom/alibaba/fastjson/a/e;->SupportNonPublicField:Lcom/alibaba/fastjson/a/e;

    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    const/4 v14, 0x1

    if-nez v2, :cond_10

    .line 196
    iget-object v4, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v4, v4, Lcom/alibaba/fastjson/a/f;->c:I

    and-int/2addr v4, v3

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget v4, v4, Lcom/alibaba/fastjson/a/i;->l:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    .line 197
    :cond_8
    iget-object v3, v0, Lcom/alibaba/fastjson/a/h;->f:Ljava/util/concurrent/ConcurrentMap;

    if-nez v3, :cond_e

    .line 198
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v3, v14, v4, v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 199
    iget-object v4, v0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    :goto_3
    if-eqz v4, :cond_d

    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_d

    .line 200
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 201
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_c

    aget-object v8, v5, v7

    .line 202
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v15

    if-eqz v15, :cond_9

    goto :goto_5

    .line 204
    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    and-int/lit8 v16, v15, 0x10

    if-nez v16, :cond_b

    and-int/lit8 v15, v15, 0x8

    if-eqz v15, :cond_a

    goto :goto_5

    .line 205
    :cond_a
    invoke-virtual {v3, v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 206
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_3

    .line 207
    :cond_d
    iput-object v3, v0, Lcom/alibaba/fastjson/a/h;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 208
    :cond_e
    iget-object v3, v0, Lcom/alibaba/fastjson/a/h;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 209
    instance-of v2, v3, Lcom/alibaba/fastjson/a/a/d;

    if-eqz v2, :cond_f

    .line 210
    move-object v2, v3

    check-cast v2, Lcom/alibaba/fastjson/a/a/d;

    goto :goto_6

    .line 211
    :cond_f
    move-object v7, v3

    check-cast v7, Ljava/lang/reflect/Field;

    .line 212
    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 213
    new-instance v15, Lcom/alibaba/fastjson/e/a;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v15

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 214
    new-instance v2, Lcom/alibaba/fastjson/a/b;

    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object v4, v0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v15}, Lcom/alibaba/fastjson/a/b;-><init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Lcom/alibaba/fastjson/e/a;)V

    .line 215
    iget-object v3, v0, Lcom/alibaba/fastjson/a/h;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v10, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_6
    if-nez v2, :cond_11

    .line 216
    invoke-virtual {v0, v1, v11, v10}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/String;)V

    return v13

    :cond_11
    const/16 v3, 0x3a

    .line 217
    invoke-virtual {v12, v3}, Lcom/alibaba/fastjson/a/f;->a(C)V

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 218
    invoke-virtual {v2, v1, v11, v3, v4}, Lcom/alibaba/fastjson/a/a/d;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    return v14
.end method

.method private b(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 1
    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eq v0, v1, :cond_81

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3a

    .line 2
    :cond_0
    iget-object v10, v8, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 3
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x8

    const/16 v11, 0x10

    const/4 v12, 0x0

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object v12

    .line 5
    :cond_1
    iget-boolean v13, v10, Lcom/alibaba/fastjson/a/f;->t:Z

    .line 6
    iget-object v2, v8, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    if-eqz p4, :cond_2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, v2, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    :cond_2
    move-object v14, v2

    const/16 v15, 0xd

    if-ne v1, v15, :cond_4

    .line 8
    :try_start_0
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/a/f;->b(I)V

    if-nez p4, :cond_3

    .line 9
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p4

    .line 10
    :goto_0
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v6, p4

    goto/16 :goto_39

    :cond_4
    const/16 v2, 0xe

    const/4 v6, 0x0

    if-ne v1, v2, :cond_7

    .line 11
    :try_start_1
    iget-object v2, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/a/i;->i:Z

    if-nez v2, :cond_6

    iget v2, v10, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v3, Lcom/alibaba/fastjson/a/e;->SupportArrayToBean:Lcom/alibaba/fastjson/a/e;

    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_7

    .line 12
    invoke-direct/range {p0 .. p4}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v0

    :cond_7
    const/16 v2, 0xc

    const/4 v4, 0x4

    if-eq v1, v2, :cond_b

    if-eq v1, v11, :cond_b

    .line 14
    :try_start_2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->n()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    .line 15
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v12

    :cond_8
    if-ne v1, v4, :cond_9

    .line 16
    :try_start_3
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v12

    .line 20
    :cond_9
    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, ", fieldName "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/f;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :cond_b
    :try_start_5
    iget v1, v8, Lcom/alibaba/fastjson/a/c;->n:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 28
    :try_start_6
    iput v6, v8, Lcom/alibaba/fastjson/a/c;->n:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 29
    :cond_c
    :try_start_7
    iget-object v1, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v3, v1, Lcom/alibaba/fastjson/a/i;->k:Ljava/lang/String;

    .line 30
    iget-object v1, v7, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v2, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    const-wide/16 v16, 0x0

    move-object/from16 v6, p4

    move-object/from16 v20, v12

    move-object/from16 v21, v20

    move/from16 v18, v13

    move-wide/from16 v12, v16

    const/4 v1, 0x0

    :goto_4
    cmp-long v22, v12, v16

    if-eqz v22, :cond_e

    .line 31
    :try_start_8
    invoke-virtual {v7, v12, v13}, Lcom/alibaba/fastjson/a/h;->a(J)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 32
    iget-object v13, v12, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    .line 33
    iget-object v5, v13, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    goto :goto_5

    :cond_d
    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_5
    move-wide/from16 v23, v16

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-object/from16 v12, v20

    goto/16 :goto_39

    :cond_e
    move-wide/from16 v23, v12

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_7
    if-nez v12, :cond_10

    if-ge v1, v2, :cond_f

    .line 34
    iget-object v5, v7, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aget-object v12, v5, v1

    .line 35
    iget-object v13, v12, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    .line 36
    iget-object v5, v13, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    :cond_10
    move/from16 v25, v1

    const-wide/16 v26, 0x0

    if-eqz v12, :cond_35

    move/from16 v28, v2

    .line 37
    iget-wide v1, v13, Lcom/alibaba/fastjson/e/a;->s:J

    .line 38
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, -0x2

    if-eq v5, v4, :cond_32

    const-class v4, Ljava/lang/Integer;

    if-ne v5, v4, :cond_11

    goto/16 :goto_10

    .line 39
    :cond_11
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v4, :cond_2f

    const-class v4, Ljava/lang/Long;

    if-ne v5, v4, :cond_12

    goto/16 :goto_f

    .line 40
    :cond_12
    const-class v4, Ljava/lang/String;

    if-ne v5, v4, :cond_15

    .line 41
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->e(J)Ljava/lang/String;

    move-result-object v1

    .line 42
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_13

    :goto_8
    move-wide/from16 v30, v26

    :goto_9
    const/4 v2, 0x1

    const/4 v4, 0x1

    goto/16 :goto_14

    .line 43
    :cond_13
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 44
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    :cond_14
    move-wide/from16 v30, v26

    goto/16 :goto_12

    .line 45
    :cond_15
    const-class v4, Ljava/util/Date;

    if-ne v5, v4, :cond_17

    .line 46
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->f(J)Ljava/util/Date;

    move-result-object v1

    .line 47
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_16

    goto :goto_8

    .line 48
    :cond_16
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 49
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 50
    :cond_17
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v4, :cond_2d

    const-class v4, Ljava/lang/Boolean;

    if-ne v5, v4, :cond_18

    goto/16 :goto_e

    .line 51
    :cond_18
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v5, v4, :cond_2a

    const-class v4, Ljava/lang/Float;

    if-ne v5, v4, :cond_19

    goto/16 :goto_c

    .line 52
    :cond_19
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v5, v4, :cond_28

    const-class v4, Ljava/lang/Double;

    if-ne v5, v4, :cond_1a

    goto/16 :goto_b

    .line 53
    :cond_1a
    iget-boolean v4, v13, Lcom/alibaba/fastjson/e/a;->q:Z

    if-eqz v4, :cond_1d

    iget-object v4, v8, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    .line 54
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/fastjson/a/d;

    if-eqz v4, :cond_1d

    .line 55
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->n(J)J

    move-result-wide v1

    .line 56
    iget v4, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v4, :cond_1b

    .line 57
    invoke-virtual {v12, v1, v2}, Lcom/alibaba/fastjson/a/a/d;->a(J)Ljava/lang/Enum;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_a

    .line 58
    :cond_1b
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v1, v11, :cond_1c

    .line 59
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    :cond_1c
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_a
    move-wide/from16 v30, v26

    goto/16 :goto_14

    .line 60
    :cond_1d
    const-class v4, [I

    if-ne v5, v4, :cond_1f

    .line 61
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->c(J)[I

    move-result-object v1

    .line 62
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_1e

    goto :goto_8

    .line 63
    :cond_1e
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 64
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 65
    :cond_1f
    const-class v4, [F

    if-ne v5, v4, :cond_21

    .line 66
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->i(J)[F

    move-result-object v1

    .line 67
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_20

    goto/16 :goto_8

    .line 68
    :cond_20
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 69
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 70
    :cond_21
    const-class v4, [D

    if-ne v5, v4, :cond_23

    .line 71
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->l(J)[D

    move-result-object v1

    .line 72
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_22

    goto/16 :goto_8

    .line 73
    :cond_22
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 74
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 75
    :cond_23
    const-class v4, [[F

    if-ne v5, v4, :cond_25

    .line 76
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->j(J)[[F

    move-result-object v1

    .line 77
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_24

    goto/16 :goto_8

    .line 78
    :cond_24
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 79
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 80
    :cond_25
    const-class v4, [[D

    if-ne v5, v4, :cond_27

    .line 81
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->m(J)[[D

    move-result-object v1

    .line 82
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_26

    goto/16 :goto_8

    .line 83
    :cond_26
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 84
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 85
    :cond_27
    iget-wide v1, v13, Lcom/alibaba/fastjson/e/a;->s:J

    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->a(J)Z

    move-result v1

    if-eqz v1, :cond_38

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_13

    .line 86
    :cond_28
    :goto_b
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->k(J)D

    move-result-wide v26

    .line 87
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v1, :cond_29

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    goto/16 :goto_9

    .line 88
    :cond_29
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v1, v11, :cond_36

    .line 89
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto/16 :goto_11

    .line 90
    :cond_2a
    :goto_c
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->h(J)F

    move-result v1

    .line 91
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_2b

    move/from16 v29, v1

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_d
    const/4 v11, 0x0

    goto/16 :goto_16

    .line 92
    :cond_2b
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_2c

    .line 93
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto :goto_11

    :cond_2c
    move/from16 v29, v1

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_d

    .line 94
    :cond_2d
    :goto_e
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->g(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 95
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_2e

    goto/16 :goto_8

    .line 96
    :cond_2e
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_14

    .line 97
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto :goto_11

    .line 98
    :cond_2f
    :goto_f
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->d(J)J

    move-result-wide v1

    .line 99
    iget v4, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v4, :cond_30

    move-wide/from16 v30, v26

    const/4 v4, 0x1

    const/4 v11, 0x0

    const/16 v29, 0x0

    move-wide/from16 v26, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_17

    .line 100
    :cond_30
    iget v4, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v4, v11, :cond_31

    .line 101
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J

    goto :goto_11

    :cond_31
    move-wide/from16 v30, v26

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/16 v29, 0x0

    move-wide/from16 v26, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_17

    .line 102
    :cond_32
    :goto_10
    invoke-virtual {v10, v1, v2}, Lcom/alibaba/fastjson/a/f;->b(J)I

    move-result v1

    .line 103
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-lez v2, :cond_33

    move v11, v1

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_15

    .line 104
    :cond_33
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->p:I

    if-ne v2, v11, :cond_34

    .line 105
    iget-wide v12, v10, Lcom/alibaba/fastjson/a/f;->u:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_11
    move/from16 v1, v25

    move/from16 v2, v28

    const/4 v4, 0x4

    const/16 v11, 0x10

    goto/16 :goto_4

    :cond_34
    move v11, v1

    move-wide/from16 v30, v26

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_15

    :cond_35
    move/from16 v28, v2

    :cond_36
    move-wide/from16 v30, v26

    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x0

    :goto_13
    const/4 v4, 0x0

    :goto_14
    const/4 v11, 0x0

    :goto_15
    const/16 v29, 0x0

    :goto_16
    move-wide/from16 v26, v16

    :goto_17
    if-nez v2, :cond_50

    .line 106
    :try_start_9
    iget-object v15, v8, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v10, v15}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v15, :cond_39

    move-object/from16 p4, v1

    .line 107
    :try_start_a
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    move-object/from16 v32, v13

    const/16 v13, 0xd

    if-ne v1, v13, :cond_37

    const/16 v13, 0x10

    .line 108
    invoke-virtual {v10, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v1, v20

    goto/16 :goto_1a

    :cond_37
    const/16 v13, 0x10

    if-ne v1, v13, :cond_3a

    :cond_38
    move-object/from16 v1, v20

    goto/16 :goto_1b

    :cond_39
    move-object/from16 p4, v1

    move-object/from16 v32, v13

    :cond_3a
    :try_start_b
    const-string v1, "$ref"

    const/16 v13, 0x3a

    if-ne v1, v15, :cond_44

    if-eqz v14, :cond_44

    .line 109
    invoke-virtual {v10, v13}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 110
    iget v0, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    .line 111
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v1, :cond_3b

    .line 113
    :try_start_c
    iget-object v0, v14, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v6, v0

    goto :goto_19

    :cond_3b
    :try_start_d
    const-string v1, ".."

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v1, :cond_3d

    .line 115
    :try_start_e
    iget-object v1, v14, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    .line 116
    iget-object v2, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_3c

    .line 117
    iget-object v6, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_19

    .line 118
    :cond_3c
    new-instance v2, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v0, 0x1

    .line 119
    iput v0, v8, Lcom/alibaba/fastjson/a/c;->n:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_19

    :cond_3d
    :try_start_f
    const-string v1, "$"

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v1, :cond_40

    move-object v1, v14

    .line 121
    :goto_18
    :try_start_10
    iget-object v2, v1, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    if-eqz v2, :cond_3e

    .line 122
    iget-object v1, v1, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    goto :goto_18

    .line 123
    :cond_3e
    iget-object v2, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_3f

    .line 124
    iget-object v6, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_19

    .line 125
    :cond_3f
    new-instance v2, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v0, 0x1

    .line 126
    iput v0, v8, Lcom/alibaba/fastjson/a/c;->n:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_19

    .line 127
    :cond_40
    :try_start_11
    new-instance v1, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v1, v14, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v1, 0x1

    .line 128
    iput v1, v8, Lcom/alibaba/fastjson/a/c;->n:I

    :goto_19
    const/16 v0, 0xd

    .line 129
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 130
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v1, v0, :cond_42

    const/16 v0, 0x10

    .line 131
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 132
    invoke-virtual {v8, v14, v6, v9}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object/from16 v1, v20

    if-eqz v1, :cond_41

    .line 133
    iput-object v6, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 134
    :cond_41
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v6

    :cond_42
    move-object/from16 v1, v20

    .line 135
    :try_start_12
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v2, "illegal ref"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    move-object/from16 v1, v20

    .line 136
    new-instance v2, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_44
    move-object/from16 v1, v20

    if-eqz v3, :cond_45

    .line 137
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_46

    :cond_45
    const-string v13, "@type"

    if-ne v13, v15, :cond_51

    :cond_46
    const/16 v2, 0x3a

    .line 138
    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 139
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4f

    .line 140
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 141
    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 142
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_48

    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 143
    iget v2, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v4, 0xd

    if-ne v2, v4, :cond_47

    .line 144
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_1a
    move-object v12, v1

    move-object v13, v6

    move-object/from16 v1, v21

    const/16 v19, 0x0

    goto/16 :goto_30

    :cond_47
    :goto_1b
    move-object/from16 v20, v1

    move-wide/from16 v12, v23

    move/from16 v1, v25

    move/from16 v2, v28

    goto/16 :goto_38

    .line 145
    :cond_48
    iget-object v4, v8, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object v5, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    invoke-virtual {v7, v4, v5, v2}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/i;Ljava/lang/String;)Lcom/alibaba/fastjson/a/h;

    move-result-object v4

    if-nez v4, :cond_4b

    .line 146
    iget-object v4, v8, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object v5, v7, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    iget v10, v10, Lcom/alibaba/fastjson/a/f;->c:I

    invoke-virtual {v4, v2, v5, v10}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v12

    .line 147
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4a

    if-eqz v12, :cond_49

    .line 148
    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_1c

    .line 149
    :cond_49
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v2, "type not match"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_4a
    :goto_1c
    iget-object v0, v8, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v4

    goto :goto_1d

    :cond_4b
    const/4 v12, 0x0

    .line 151
    :goto_1d
    instance-of v0, v4, Lcom/alibaba/fastjson/a/h;

    if-eqz v0, :cond_4c

    .line 152
    check-cast v4, Lcom/alibaba/fastjson/a/h;

    const/4 v5, 0x0

    .line 153
    invoke-direct {v4, v8, v12, v9, v5}, Lcom/alibaba/fastjson/a/h;->b(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v3, :cond_4d

    .line 154
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v3

    .line 155
    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e

    .line 156
    :cond_4c
    invoke-interface {v4, v8, v12, v9}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :cond_4d
    :goto_1e
    if-eqz v1, :cond_4e

    .line 157
    iput-object v6, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 158
    :cond_4e
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v0

    .line 159
    :cond_4f
    :try_start_13
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v2, "syntax error"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object/from16 v1, v20

    :goto_1f
    move-object v12, v1

    goto/16 :goto_39

    :cond_50
    move-object/from16 p4, v1

    move-object/from16 v32, v13

    move-object/from16 v1, v20

    const/4 v15, 0x0

    :cond_51
    if-nez v6, :cond_54

    if-nez v21, :cond_54

    .line 160
    :try_start_14
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_52

    .line 161
    new-instance v13, Ljava/util/HashMap;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v20, v1

    :try_start_15
    iget-object v1, v7, Lcom/alibaba/fastjson/a/h;->a:[Lcom/alibaba/fastjson/a/a/d;

    array-length v1, v1

    invoke-direct {v13, v1}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_20

    :cond_52
    move-object/from16 v20, v1

    move-object/from16 v13, v21

    :goto_20
    if-nez v18, :cond_53

    .line 162
    invoke-virtual {v8, v14, v6, v9}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object/from16 v20, v1

    :cond_53
    move-object/from16 v33, v13

    move-object v13, v6

    move-object/from16 v6, v33

    goto :goto_21

    :catchall_4
    move-exception v0

    move-object/from16 v20, v1

    goto/16 :goto_6

    :cond_54
    move-object/from16 v20, v1

    move-object v13, v6

    move-object/from16 v6, v21

    :goto_21
    if-eqz v2, :cond_6d

    if-nez v4, :cond_55

    .line 163
    :try_start_16
    invoke-virtual {v12, v8, v13, v0, v6}, Lcom/alibaba/fastjson/a/a/d;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    move-object v12, v3

    move-object/from16 v21, v6

    move/from16 v11, v28

    const/4 v15, 0x1

    const/16 v19, 0x0

    goto/16 :goto_2e

    :cond_55
    if-nez v13, :cond_5e

    .line 164
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v1, :cond_5d

    const-class v1, Ljava/lang/Integer;

    if-ne v5, v1, :cond_56

    goto :goto_25

    .line 165
    :cond_56
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v1, :cond_5c

    const-class v1, Ljava/lang/Long;

    if-ne v5, v1, :cond_57

    goto :goto_24

    .line 166
    :cond_57
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v5, v1, :cond_5b

    const-class v1, Ljava/lang/Float;

    if-ne v5, v1, :cond_58

    goto :goto_23

    .line 167
    :cond_58
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v5, v1, :cond_5a

    const-class v1, Ljava/lang/Double;

    if-ne v5, v1, :cond_59

    goto :goto_22

    :cond_59
    move-object/from16 v2, p4

    goto :goto_27

    .line 168
    :cond_5a
    :goto_22
    new-instance v1, Ljava/lang/Double;

    move-wide/from16 v4, v30

    invoke-direct {v1, v4, v5}, Ljava/lang/Double;-><init>(D)V

    goto :goto_26

    .line 169
    :cond_5b
    :goto_23
    new-instance v1, Ljava/lang/Float;

    move/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    goto :goto_26

    .line 170
    :cond_5c
    :goto_24
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_26

    .line 171
    :cond_5d
    :goto_25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_26
    move-object v2, v1

    :goto_27
    move-object/from16 v1, v32

    .line 172
    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move-object/from16 v21, v3

    goto/16 :goto_2c

    :cond_5e
    move-object/from16 v21, v3

    move/from16 v2, v29

    move-wide/from16 v3, v30

    move-object/from16 v1, v32

    if-nez p4, :cond_6b

    .line 173
    :try_start_17
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v15, :cond_69

    const-class v15, Ljava/lang/Integer;

    if-ne v5, v15, :cond_5f

    goto/16 :goto_2b

    .line 174
    :cond_5f
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v11, :cond_67

    const-class v11, Ljava/lang/Long;

    if-ne v5, v11, :cond_60

    goto :goto_2a

    .line 175
    :cond_60
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v5, v11, :cond_65

    const-class v11, Ljava/lang/Float;

    if-ne v5, v11, :cond_61

    goto :goto_29

    .line 176
    :cond_61
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v5, v2, :cond_63

    const-class v2, Ljava/lang/Double;

    if-ne v5, v2, :cond_62

    goto :goto_28

    :cond_62
    move-object/from16 v2, p4

    .line 177
    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2c

    .line 178
    :cond_63
    :goto_28
    iget-boolean v2, v1, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v2, :cond_64

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v2, :cond_64

    .line 179
    invoke-virtual {v12, v13, v3, v4}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;D)V

    goto/16 :goto_2c

    .line 180
    :cond_64
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 181
    :cond_65
    :goto_29
    iget-boolean v3, v1, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v3, :cond_66

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v3, :cond_66

    .line 182
    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;F)V

    goto :goto_2c

    .line 183
    :cond_66
    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, v2}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v12, v13, v3}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 184
    :cond_67
    :goto_2a
    iget-boolean v2, v1, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v2, :cond_68

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v2, :cond_68

    move-wide/from16 v2, v26

    .line 185
    invoke-virtual {v12, v13, v2, v3}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;J)V

    goto :goto_2c

    :cond_68
    move-wide/from16 v2, v26

    .line 186
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 187
    :cond_69
    :goto_2b
    iget-boolean v2, v1, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v2, :cond_6a

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v2, :cond_6a

    .line 188
    invoke-virtual {v12, v13, v11}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;I)V

    goto :goto_2c

    .line 189
    :cond_6a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_2c

    :catch_0
    move-exception v0

    .line 190
    :try_start_18
    new-instance v2, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set property error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6b
    move-object/from16 v2, p4

    .line 191
    invoke-virtual {v12, v13, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    :goto_2c
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->p:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_6c

    move-object/from16 v21, v6

    const/16 v19, 0x0

    goto :goto_2f

    :cond_6c
    move-object/from16 v12, v21

    move/from16 v11, v28

    const/4 v15, 0x1

    const/16 v19, 0x0

    move-object/from16 v21, v6

    goto :goto_2e

    :cond_6d
    move-object/from16 v21, v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v11, v28

    move-object/from16 v2, p1

    move-object/from16 v12, v21

    move-object v3, v15

    const/4 v15, 0x4

    move-object v4, v13

    const/4 v15, 0x1

    move-object/from16 v5, p2

    move-object/from16 v21, v6

    const/16 v19, 0x0

    .line 193
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 194
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_6e

    .line 195
    invoke-virtual {v10}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_2f

    :cond_6e
    const/4 v1, 0x0

    const/16 v2, 0x10

    :goto_2d
    const/16 v3, 0xd

    goto/16 :goto_37

    .line 196
    :cond_6f
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x11

    if-eq v1, v2, :cond_7f

    .line 197
    :goto_2e
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_70

    const/4 v1, 0x0

    goto :goto_2d

    .line 198
    :cond_70
    iget v1, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7d

    .line 199
    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :goto_2f
    move-object/from16 v12, v20

    move-object/from16 v1, v21

    :goto_30
    if-nez v13, :cond_7b

    if-nez v1, :cond_73

    .line 200
    :try_start_19
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    if-nez v12, :cond_71

    .line 201
    :try_start_1a
    invoke-virtual {v8, v14, v1, v9}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    move-result-object v12
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_31

    :catchall_5
    move-exception v0

    move-object v6, v1

    goto/16 :goto_39

    :cond_71
    :goto_31
    if-eqz v12, :cond_72

    .line 202
    iput-object v1, v12, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 203
    :cond_72
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v1

    .line 204
    :cond_73
    :try_start_1b
    iget-object v0, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v0, v0, Lcom/alibaba/fastjson/a/i;->m:[Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 205
    array-length v2, v0

    goto :goto_32

    :cond_74
    iget-object v2, v7, Lcom/alibaba/fastjson/a/h;->a:[Lcom/alibaba/fastjson/a/a/d;

    array-length v2, v2

    .line 206
    :goto_32
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v2, :cond_77

    .line 207
    iget-object v5, v7, Lcom/alibaba/fastjson/a/h;->a:[Lcom/alibaba/fastjson/a/a/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    if-eqz v0, :cond_75

    .line 208
    iget-object v6, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_34

    .line 209
    :cond_75
    iget-object v6, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_34
    if-nez v6, :cond_76

    .line 210
    iget-object v5, v5, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    invoke-static {v5}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 211
    :cond_76
    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 212
    :cond_77
    iget-object v2, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v2, v2, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    if-eqz v2, :cond_7a

    .line 213
    :try_start_1c
    iget-object v2, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v2, v2, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    if-eqz v0, :cond_79

    .line 214
    :try_start_1d
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_78
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 216
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_35

    :catchall_6
    move-exception v0

    move-object v6, v2

    goto/16 :goto_39

    :cond_79
    move-object v13, v2

    goto :goto_36

    :catch_1
    move-exception v0

    .line 217
    :try_start_1e
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v3, v3, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    .line 218
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 219
    :cond_7a
    iget-object v0, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v0, v0, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    if-eqz v0, :cond_7b

    .line 220
    :try_start_1f
    iget-object v0, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v0, v0, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_2
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    goto :goto_36

    :catch_2
    move-exception v0

    .line 221
    :try_start_20
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v3, v3, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :catchall_7
    move-exception v0

    move-object v6, v13

    goto :goto_39

    :cond_7b
    :goto_36
    if-eqz v12, :cond_7c

    .line 222
    iput-object v13, v12, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 223
    :cond_7c
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    return-object v13

    :cond_7d
    const/4 v1, 0x0

    .line 224
    :try_start_21
    iget v4, v10, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7e

    iget v4, v10, Lcom/alibaba/fastjson/a/f;->a:I

    if-eq v4, v15, :cond_7e

    :goto_37
    move v2, v11

    move-object v3, v12

    move-object v6, v13

    move-wide/from16 v12, v23

    move/from16 v1, v25

    :goto_38
    const/4 v4, 0x4

    const/16 v11, 0x10

    const/16 v15, 0xd

    goto/16 :goto_4

    .line 225
    :cond_7e
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-static {v2}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_7f
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :catchall_8
    move-exception v0

    move-object v6, v13

    goto/16 :goto_6

    :catchall_9
    move-exception v0

    move-object v1, v12

    goto/16 :goto_1

    :goto_39
    if-eqz v12, :cond_80

    .line 227
    iput-object v6, v12, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 228
    :cond_80
    invoke-virtual {v8, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    throw v0

    .line 229
    :cond_81
    :goto_3a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(J)Lcom/alibaba/fastjson/a/a/d;
    .locals 5

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 157
    aget-object v1, v1, v0

    .line 158
    iget-object v2, v1, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-wide v2, v2, Lcom/alibaba/fastjson/e/a;->s:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/a/i;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 161
    aget-object v1, v1, v2

    .line 162
    iget-object v3, v1, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v3, v3, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gt v2, v1, :cond_6

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 164
    iget-object v4, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v4, v4, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    .line 165
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    if-lez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_1

    .line 166
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/a/h;->b:[Lcom/alibaba/fastjson/a/a/d;

    aget-object p1, p1, v3

    return-object p1

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->c:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 168
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/a/a/d;

    return-object p1

    :cond_7
    return-object v0
.end method

.method protected a(Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/i;Ljava/lang/String;)Lcom/alibaba/fastjson/a/h;
    .locals 6

    .line 258
    iget-object p2, p2, Lcom/alibaba/fastjson/a/i;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 259
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 260
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v3

    .line 261
    instance-of v4, v3, Lcom/alibaba/fastjson/a/h;

    if-eqz v4, :cond_2

    .line 262
    check-cast v3, Lcom/alibaba/fastjson/a/h;

    .line 263
    iget-object v4, v3, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    .line 264
    iget-object v5, v4, Lcom/alibaba/fastjson/a/i;->j:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v3

    .line 265
    :cond_1
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/i;Ljava/lang/String;)Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ljava/lang/Class;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget p1, p1, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v3, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    new-array p1, v1, [Ljava/lang/Class;

    aput-object p2, p1, v2

    .line 7
    invoke-static {v0, p1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v0, p2, Lcom/alibaba/fastjson/a/i;->a:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object p2, p2, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    if-nez p2, :cond_2

    return-object v3

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v0, p2, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget p2, p2, Lcom/alibaba/fastjson/a/i;->b:I

    if-lez p2, :cond_3

    return-object v3

    .line 10
    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object p2, p2, Lcom/alibaba/fastjson/a/i;->a:Ljava/lang/reflect/Constructor;

    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget v0, v0, Lcom/alibaba/fastjson/a/i;->b:I

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object p2, p2, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 14
    iget-object v1, p1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iget-object v1, v1, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget p1, p1, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v0, Lcom/alibaba/fastjson/a/e;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/a/e;

    iget v0, v0, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object p1, p1, Lcom/alibaba/fastjson/a/i;->e:[Lcom/alibaba/fastjson/e/a;

    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v1, p1, v2

    .line 17
    iget-object v3, v1, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_6

    const-string v3, ""

    .line 18
    invoke-virtual {v1, p2, v3}, Lcom/alibaba/fastjson/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object p2

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method

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

    .line 20
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a/h;->b(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/a/n;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v1, v0, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 239
    iget-object v2, v2, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v4, v2, Lcom/alibaba/fastjson/e/a;->f:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    .line 241
    invoke-static {v1, v2, p2}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 242
    invoke-virtual {v4, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v4, v2, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    .line 244
    iget-object v2, v2, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    .line 245
    invoke-static {v1, v2, p2}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0

    .line 247
    :cond_3
    iget-object p2, v0, Lcom/alibaba/fastjson/a/i;->e:[Lcom/alibaba/fastjson/e/a;

    .line 248
    array-length v0, p2

    .line 249
    new-array v1, v0, [Ljava/lang/Object;

    :goto_1
    if-ge v3, v0, :cond_5

    .line 250
    aget-object v4, p2, v3

    .line 251
    iget-object v5, v4, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 252
    iget-object v4, v4, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/e/d;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 253
    :cond_4
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object p1, p1, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_6

    .line 255
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 256
    new-instance p2, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/h;->e:Lcom/alibaba/fastjson/a/i;

    iget-object v1, v1, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    .line 257
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    :goto_2
    return-object v2
.end method

.method a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 219
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 220
    iget v1, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v2, Lcom/alibaba/fastjson/a/e;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/16 v1, 0x3a

    .line 221
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/f;->a(C)V

    const/4 v0, 0x0

    .line 222
    iget-object v1, p1, Lcom/alibaba/fastjson/a/c;->o:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/c;

    .line 224
    invoke-interface {v0, p2, p3}, Lcom/alibaba/fastjson/a/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 227
    :goto_1
    instance-of v1, p2, Lcom/alibaba/fastjson/a/a/a;

    if-eqz v1, :cond_2

    .line 228
    check-cast p2, Lcom/alibaba/fastjson/a/a/a;

    .line 229
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_2
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->p:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/a/a/b;

    .line 232
    invoke-interface {v1, p2, p3, v0}, Lcom/alibaba/fastjson/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 233
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setter not found, class "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
