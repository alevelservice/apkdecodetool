.class Lcom/alibaba/fastjson/a/i;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/reflect/Method;

.field final e:[Lcom/alibaba/fastjson/e/a;

.field final f:[Lcom/alibaba/fastjson/e/a;

.field final g:Lcom/alibaba/fastjson/annotation/JSONType;

.field h:Z

.field final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/e/a;[Lcom/alibaba/fastjson/e/a;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/e/a;",
            "[",
            "Lcom/alibaba/fastjson/e/a;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/a/i;->h:Z

    .line 3
    iput-object p2, p0, Lcom/alibaba/fastjson/a/i;->a:Ljava/lang/reflect/Constructor;

    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson/a/i;->c:Ljava/lang/reflect/Constructor;

    .line 5
    iput-object p4, p0, Lcom/alibaba/fastjson/a/i;->d:Ljava/lang/reflect/Method;

    .line 6
    iput-object p5, p0, Lcom/alibaba/fastjson/a/i;->e:[Lcom/alibaba/fastjson/e/a;

    .line 7
    iput-object p7, p0, Lcom/alibaba/fastjson/a/i;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p3, 0x0

    if-eqz p8, :cond_0

    .line 8
    array-length v1, p8

    array-length v2, p5

    if-ne v1, v2, :cond_0

    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson/a/i;->m:[Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iput-object p8, p0, Lcom/alibaba/fastjson/a/i;->m:[Ljava/lang/String;

    :goto_0
    if-eqz p7, :cond_3

    .line 11
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p8

    .line 12
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p8

    :goto_1
    iput-object p8, p0, Lcom/alibaba/fastjson/a/i;->j:Ljava/lang/String;

    .line 13
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-lez p8, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p3

    :goto_2
    iput-object p1, p0, Lcom/alibaba/fastjson/a/i;->k:Ljava/lang/String;

    .line 15
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/a/e;

    move-result-object p1

    array-length p3, p1

    const/4 p8, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge p8, p3, :cond_4

    aget-object v2, p1, p8

    .line 16
    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v1, v2

    add-int/lit8 p8, p8, 0x1

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/a/i;->j:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/alibaba/fastjson/a/i;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 19
    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/a/i;->l:I

    if-eqz p7, :cond_6

    .line 20
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/a/e;

    move-result-object p1

    array-length p3, p1

    const/4 p7, 0x0

    const/4 p8, 0x0

    :goto_4
    if-ge p7, p3, :cond_7

    aget-object v1, p1, p7

    .line 21
    sget-object v2, Lcom/alibaba/fastjson/a/e;->SupportArrayToBean:Lcom/alibaba/fastjson/a/e;

    if-ne v1, v2, :cond_5

    const/4 p8, 0x1

    :cond_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_4

    :cond_6
    const/4 p8, 0x0

    .line 22
    :cond_7
    iput-boolean p8, p0, Lcom/alibaba/fastjson/a/i;->i:Z

    .line 23
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/a/i;->a([Lcom/alibaba/fastjson/e/a;[Lcom/alibaba/fastjson/e/a;)[Lcom/alibaba/fastjson/e/a;

    move-result-object p1

    .line 24
    invoke-static {p5, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    move-object p1, p5

    :cond_8
    iput-object p1, p0, Lcom/alibaba/fastjson/a/i;->f:[Lcom/alibaba/fastjson/e/a;

    if-eqz p2, :cond_9

    .line 25
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    .line 26
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_a
    :goto_5
    iput v0, p0, Lcom/alibaba/fastjson/a/i;->b:I

    return-void
.end method

.method public static a(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/h;)Lcom/alibaba/fastjson/a/i;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/h;",
            ")",
            "Lcom/alibaba/fastjson/a/i;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v14, p7

    .line 32
    const-class v15, Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;)Z

    move-result v1

    and-int/lit16 v2, v12, 0x400

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_3

    .line 36
    array-length v3, v0

    if-eq v3, v8, :cond_0

    if-nez v1, :cond_3

    :cond_0
    :try_start_0
    new-array v3, v7, [Ljava/lang/Class;

    .line 37
    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v3, v16

    :goto_0
    if-nez v3, :cond_2

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v4, v12, 0x8

    if-nez v4, :cond_2

    .line 39
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 40
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v18, v3

    .line 41
    array-length v3, v7

    const/16 v17, 0x0

    if-ne v3, v8, :cond_1

    aget-object v3, v7, v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v7, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v18

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v18, v3

    const/16 v17, 0x0

    move-object/from16 v7, v18

    goto :goto_2

    :cond_3
    const/16 v17, 0x0

    move-object/from16 v7, v16

    :goto_2
    const/16 v18, 0x0

    if-eqz v13, :cond_4

    move-object/from16 v23, v15

    move-object/from16 v8, v16

    move-object v15, v8

    goto/16 :goto_6

    .line 42
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v11

    move-object/from16 v5, v16

    :goto_3
    if-eqz v4, :cond_b

    if-eq v4, v15, :cond_b

    .line 43
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 44
    array-length v8, v6

    move-object/from16 v20, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v8, :cond_a

    move/from16 v21, v8

    aget-object v8, v6, v5

    move-object/from16 v22, v6

    .line 45
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/lit8 v23, v6, 0x8

    if-eqz v23, :cond_7

    .line 46
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v20, :cond_6

    move-object/from16 v20, v8

    :cond_5
    move-object/from16 v23, v15

    goto :goto_5

    .line 47
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v1, "multi-json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    and-int/lit8 v23, v6, 0x2

    if-nez v23, :cond_5

    move-object/from16 v23, v15

    and-int/lit16 v15, v6, 0x100

    if-nez v15, :cond_9

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_8

    goto :goto_5

    .line 48
    :cond_8
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v21

    move-object/from16 v6, v22

    move-object/from16 v15, v23

    goto :goto_4

    :cond_a
    move-object/from16 v23, v15

    .line 49
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v5, v20

    const/4 v8, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v23, v15

    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    .line 51
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v8, v4

    move-object v15, v5

    .line 52
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v7, :cond_f

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v26, v6

    move-object/from16 v29, v8

    move-object v14, v9

    move-object/from16 v21, v16

    const/4 v8, 0x0

    move-object v9, v7

    goto/16 :goto_21

    .line 54
    :cond_f
    :goto_9
    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_11

    aget-object v5, v0, v4

    move/from16 v20, v3

    .line 55
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v20

    goto :goto_a

    :cond_11
    move-object/from16 v5, v16

    :goto_b
    const-string v4, "illegal json creator"

    if-eqz v5, :cond_1a

    .line 56
    invoke-static {v11, v5, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 57
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    if-eqz p6, :cond_12

    .line 58
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_c

    :cond_12
    move-object/from16 v18, v3

    .line 59
    :goto_c
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    const/4 v2, 0x0

    .line 60
    :goto_d
    array-length v0, v3

    if-ge v2, v0, :cond_17

    .line 61
    aget-object v0, v20, v2

    .line 62
    array-length v1, v0

    move-object/from16 v21, v4

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_14

    move/from16 v22, v1

    aget-object v1, v0, v4

    move-object/from16 v24, v0

    .line 63
    instance-of v0, v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_13

    .line 64
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_f

    :cond_13
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v22

    move-object/from16 v0, v24

    goto :goto_e

    :cond_14
    move-object/from16 v0, v16

    :goto_f
    if-eqz v0, :cond_16

    .line 65
    aget-object v4, v3, v2

    .line 66
    aget-object v22, v18, v2

    .line 67
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v6, v9}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 68
    invoke-static {v11, v1, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 69
    :cond_15
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v24

    .line 70
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v25

    .line 71
    new-instance v14, Lcom/alibaba/fastjson/e/a;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v26

    move-object v0, v14

    move-object/from16 v27, v1

    move-object/from16 v1, v26

    move/from16 v26, v2

    move-object/from16 v2, p0

    move-object/from16 v28, v3

    move-object v3, v4

    move-object/from16 v29, v8

    move-object/from16 v8, v21

    move-object/from16 v4, v22

    move-object/from16 v21, v5

    move-object/from16 v5, v27

    move-object/from16 v22, v9

    move-object v9, v6

    move/from16 v6, v24

    move-object/from16 v30, v7

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v7, v25

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 72
    invoke-static {v10, v14, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    add-int/lit8 v2, v26, 0x1

    move-object/from16 v14, p7

    move-object v4, v8

    move-object/from16 v6, v17

    move-object/from16 v5, v21

    move-object/from16 v9, v22

    move-object/from16 v3, v28

    move-object/from16 v8, v29

    move-object/from16 v7, v30

    const/16 v17, 0x0

    goto/16 :goto_d

    :cond_16
    move-object/from16 v8, v21

    .line 73
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move-object/from16 v21, v5

    move-object/from16 v17, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object/from16 v22, v9

    const/4 v9, 0x0

    .line 74
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/e/a;

    .line 75
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/e/a;

    .line 77
    array-length v2, v0

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 79
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 80
    :cond_18
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 81
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 82
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    move-object/from16 v18, v1

    move-object/from16 v26, v17

    move-object/from16 v14, v22

    move-object/from16 v9, v30

    const/4 v8, 0x0

    goto/16 :goto_21

    :cond_1a
    move-object/from16 v21, v5

    move-object/from16 v17, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move-object/from16 v22, v9

    const/4 v9, 0x0

    move-object v8, v4

    if-eqz v15, :cond_23

    .line 83
    invoke-static {v11, v15, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 84
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 85
    array-length v0, v14

    if-lez v0, :cond_22

    if-eqz p6, :cond_1b

    .line 86
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v12, v0

    goto :goto_11

    :cond_1b
    move-object v12, v14

    .line 87
    :goto_11
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v19

    const/4 v7, 0x0

    .line 88
    :goto_12
    array-length v0, v14

    if-ge v7, v0, :cond_1f

    .line 89
    aget-object v0, v19, v7

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 91
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1c

    .line 92
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_14

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    move-object/from16 v0, v16

    :goto_14
    if-eqz v0, :cond_1e

    .line 93
    aget-object v3, v14, v7

    .line 94
    aget-object v4, v12, v7

    .line 95
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v17

    move-object/from16 v6, v22

    invoke-static {v11, v1, v5, v6}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 96
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 97
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v21

    .line 98
    new-instance v2, Lcom/alibaba/fastjson/e/a;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object v9, v2

    move-object/from16 v2, p0

    move-object/from16 v24, v14

    move-object v14, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v14

    move-object v14, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 99
    invoke-static {v10, v9, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v22, v14

    move-object/from16 v14, v24

    const/4 v9, 0x0

    goto :goto_12

    .line 100
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/e/a;

    .line 102
    invoke-interface {v10, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    array-length v0, v5

    new-array v0, v0, [Lcom/alibaba/fastjson/e/a;

    .line 104
    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 106
    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v6, v5

    goto :goto_15

    :cond_20
    move-object v6, v0

    :goto_15
    if-eqz p4, :cond_21

    .line 107
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_16

    :cond_21
    move-object/from16 v7, v16

    .line 108
    :goto_16
    new-instance v9, Lcom/alibaba/fastjson/a/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v4, v15

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/a/i;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/e/a;[Lcom/alibaba/fastjson/e/a;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9

    :cond_22
    move-object/from16 v14, v22

    goto/16 :goto_1f

    :cond_23
    move-object/from16 v14, v22

    if-nez v2, :cond_31

    const-string v2, "default constructor not found. "

    if-eqz v1, :cond_30

    .line 109
    array-length v1, v0

    if-lez v1, :cond_30

    .line 110
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/e/d;->b(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 111
    array-length v1, v0

    move-object/from16 v9, v21

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 112
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 113
    array-length v5, v4

    if-lez v5, :cond_24

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    .line 114
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_18

    :cond_24
    if-eqz v9, :cond_25

    .line 115
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_25

    goto :goto_18

    :cond_25
    move-object v9, v3

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v2, 0x1

    .line 116
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 117
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 118
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    if-eqz p6, :cond_27

    .line 119
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_19

    :cond_27
    move-object/from16 v18, v7

    .line 120
    :goto_19
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    const/4 v6, 0x0

    .line 121
    :goto_1a
    array-length v0, v7

    if-ge v6, v0, :cond_2d

    .line 122
    aget-object v0, v8, v6

    .line 123
    aget-object v1, v20, v6

    .line 124
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 125
    instance-of v5, v4, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v5, :cond_28

    .line 126
    move-object v1, v4

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_29
    move-object/from16 v1, v16

    .line 127
    :goto_1c
    aget-object v3, v7, v6

    .line 128
    aget-object v4, v18, v6

    move-object/from16 v5, v17

    .line 129
    invoke-static {v11, v0, v5, v14}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_2a

    if-nez v1, :cond_2a

    .line 130
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_2a
    if-eqz v1, :cond_2c

    .line 131
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v17

    .line 132
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v21

    .line 133
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_2b

    move-object v0, v1

    :cond_2b
    move-object v1, v0

    goto :goto_1d

    :cond_2c
    move-object v1, v0

    const/16 v17, 0x0

    const/16 v21, 0x0

    .line 135
    :goto_1d
    new-instance v0, Lcom/alibaba/fastjson/e/a;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v2, p0

    move-object/from16 v26, v5

    move-object/from16 v5, v25

    move/from16 v25, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 136
    invoke-static {v10, v0, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    add-int/lit8 v6, v25, 0x1

    move-object/from16 v7, v17

    move-object/from16 v17, v26

    goto :goto_1a

    :cond_2d
    move-object/from16 v26, v17

    .line 137
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/e/a;

    .line 138
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 139
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/e/a;

    .line 140
    array-length v2, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 142
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 143
    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 144
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    move-object/from16 v18, v1

    move-object/from16 v21, v9

    goto :goto_20

    .line 145
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_30
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_1f
    move-object/from16 v26, v17

    const/4 v8, 0x0

    :goto_20
    move-object/from16 v9, v30

    :goto_21
    if-eqz v9, :cond_32

    .line 147
    invoke-static {v11, v9, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_32
    const/4 v7, 0x3

    const/4 v6, 0x4

    if-nez v13, :cond_4a

    move-object/from16 v5, v29

    .line 148
    array-length v4, v5

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v4, :cond_49

    aget-object v2, v5, v3

    .line 149
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v6, :cond_34

    :cond_33
    :goto_23
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v28, v14

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    const/16 v27, 0x1

    move-object v15, v10

    goto/16 :goto_2c

    .line 151
    :cond_34
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 152
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v6, :cond_35

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v1, v6, :cond_33

    .line 153
    :cond_35
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_36

    goto :goto_23

    :cond_36
    if-eqz p5, :cond_37

    .line 154
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_24

    :cond_37
    move-object/from16 v1, v16

    :goto_24
    if-nez v1, :cond_38

    if-eqz p5, :cond_38

    .line 155
    invoke-static {v11, v2}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    :cond_38
    move-object/from16 v19, v1

    if-eqz v19, :cond_3b

    .line 156
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_23

    .line 157
    :cond_39
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 158
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v22

    .line 159
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3a

    .line 160
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v0, Lcom/alibaba/fastjson/e/a;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v27, v0

    move-object/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v3, v24

    move/from16 v24, v4

    move-object/from16 v4, p0

    move-object/from16 v30, v5

    move-object/from16 v5, p2

    const/16 v17, 0x1

    move/from16 v6, v20

    move/from16 v7, v22

    move-object/from16 v31, v30

    const/16 v17, 0x0

    move-object/from16 v8, v19

    move-object/from16 v17, v9

    move-object/from16 v32, v26

    move-object/from16 v9, v25

    move-object/from16 v25, v15

    move-object v15, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    move-object/from16 v10, v28

    .line 162
    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_26

    :cond_3a
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    move-object v15, v10

    move-object v10, v2

    goto :goto_25

    :cond_3b
    move/from16 v29, v3

    move/from16 v24, v4

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    move-object v15, v10

    move-object v10, v2

    const/16 v20, 0x0

    const/16 v22, 0x0

    :goto_25
    const-string v1, "set"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    :goto_26
    move-object/from16 v28, v14

    const/16 v27, 0x1

    goto/16 :goto_2c

    :cond_3d
    const/4 v9, 0x3

    .line 164
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 165
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 166
    sget-boolean v1, Lcom/alibaba/fastjson/e/d;->a:Z

    if-eqz v1, :cond_3e

    .line 167
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, v32

    const/4 v8, 0x4

    goto :goto_28

    .line 168
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_3f
    const/4 v8, 0x4

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_40

    .line 169
    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_27
    move-object/from16 v7, v32

    goto :goto_28

    :cond_40
    const/16 v2, 0x66

    if-ne v1, v2, :cond_41

    .line 170
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 171
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3c

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 172
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 173
    :goto_28
    invoke-static {v11, v0, v7, v14}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_43

    .line 174
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aget-object v2, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_42

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v11, v1, v7, v14}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_29

    :cond_42
    const/4 v5, 0x1

    goto :goto_29

    :cond_43
    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_29
    move-object v3, v1

    if-eqz v3, :cond_46

    if-eqz p5, :cond_44

    .line 178
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v26, v1

    goto :goto_2a

    :cond_44
    move-object/from16 v26, v16

    :goto_2a
    if-eqz v26, :cond_46

    .line 179
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 180
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v22

    .line 181
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 182
    invoke-interface/range {v26 .. v26}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v4, Lcom/alibaba/fastjson/e/a;

    move-object v0, v4

    move-object v2, v10

    move-object v10, v4

    move-object/from16 v4, p0

    const/16 v27, 0x1

    move-object/from16 v5, p2

    move-object/from16 v28, v14

    const/4 v14, 0x0

    move/from16 v6, v20

    move-object v14, v7

    move/from16 v7, v22

    move-object/from16 v8, v19

    move-object/from16 v9, v26

    move-object/from16 v32, v14

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    goto :goto_2c

    :cond_45
    move-object/from16 v32, v7

    move-object/from16 v28, v14

    const/16 v27, 0x1

    if-nez v19, :cond_47

    move-object/from16 v14, p7

    move/from16 v6, v20

    move/from16 v7, v22

    move-object/from16 v8, v26

    goto :goto_2b

    :cond_46
    move-object/from16 v32, v7

    move-object/from16 v28, v14

    const/16 v27, 0x1

    :cond_47
    move-object/from16 v14, p7

    move-object/from16 v8, v19

    move/from16 v6, v20

    move/from16 v7, v22

    :goto_2b
    if-eqz v14, :cond_48

    .line 184
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/h;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    move-object v1, v0

    .line 185
    new-instance v9, Lcom/alibaba/fastjson/e/a;

    const/4 v3, 0x0

    const/16 v19, 0x0

    move-object v0, v9

    move-object v2, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v33, v9

    move-object/from16 v9, v19

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v33

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    .line 186
    invoke-static {v11, v14, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :goto_2c
    add-int/lit8 v3, v29, 0x1

    move-object v10, v15

    move-object/from16 v9, v17

    move/from16 v4, v24

    move-object/from16 v15, v25

    move-object/from16 v14, v28

    move-object/from16 v5, v31

    move-object/from16 v26, v32

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto/16 :goto_22

    :cond_49
    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    goto :goto_2d

    :cond_4a
    move-object/from16 v17, v9

    move-object/from16 v25, v15

    move-object/from16 v32, v26

    move-object/from16 v31, v29

    :goto_2d
    const/16 v27, 0x1

    move-object v15, v10

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v32

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 189
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_4b

    goto :goto_31

    :cond_4b
    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4e

    .line 190
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 191
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_2f

    :cond_4c
    const/4 v5, 0x0

    goto :goto_30

    :cond_4d
    :goto_2f
    const/4 v5, 0x1

    :goto_30
    if-nez v5, :cond_4e

    goto :goto_31

    .line 192
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4f

    .line 193
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 194
    :cond_50
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_32
    if-eqz v1, :cond_57

    move-object/from16 v2, v23

    if-eq v1, v2, :cond_57

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v4, :cond_56

    aget-object v6, v3, v5

    .line 196
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_51

    goto :goto_36

    :cond_51
    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_54

    .line 197
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 198
    const-class v9, Ljava/util/Map;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_53

    const-class v9, Ljava/util/Collection;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_52

    goto :goto_34

    :cond_52
    const/4 v8, 0x0

    goto :goto_35

    :cond_53
    :goto_34
    const/4 v8, 0x1

    :goto_35
    if-nez v8, :cond_54

    goto :goto_36

    :cond_54
    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_55

    .line 199
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 200
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v23, v2

    goto :goto_32

    .line 201
    :cond_57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_37
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Field;

    .line 202
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_38
    if-ge v2, v1, :cond_59

    .line 204
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/e/a;

    .line 205
    iget-object v4, v4, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v8, 0x1

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_59
    if-eqz v8, :cond_5a

    goto :goto_37

    :cond_5a
    if-eqz p5, :cond_5b

    .line 206
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v9, v1

    goto :goto_39

    :cond_5b
    move-object/from16 v9, v16

    :goto_39
    if-eqz v9, :cond_5d

    .line 207
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 208
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v2

    .line 209
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 210
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    move-object/from16 v10, p7

    move v6, v1

    move v7, v2

    goto :goto_3a

    :cond_5d
    move-object/from16 v10, p7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3a
    if-eqz v10, :cond_5e

    .line 211
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/h;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5e
    move-object v1, v0

    .line 212
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 213
    new-instance v8, Lcom/alibaba/fastjson/e/a;

    const/4 v2, 0x0

    const/16 v19, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v34, v8

    move-object/from16 v8, v19

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v34

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    goto/16 :goto_37

    :cond_5f
    if-nez v13, :cond_66

    move-object/from16 v14, v31

    .line 214
    array-length v10, v14

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v10, :cond_66

    aget-object v8, v14, v9

    .line 215
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x4

    if-ge v1, v7, :cond_60

    goto/16 :goto_3e

    :cond_60
    const-string v1, "get"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 218
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_61

    goto/16 :goto_3e

    .line 219
    :cond_61
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 220
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_62

    const-class v2, Ljava/util/Map;

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_62
    if-eqz p5, :cond_63

    .line 222
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v19, v1

    goto :goto_3c

    :cond_63
    move-object/from16 v19, v16

    :goto_3c
    if-eqz v19, :cond_64

    .line 223
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64

    goto :goto_3d

    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 225
    :goto_3d
    new-instance v5, Lcom/alibaba/fastjson/e/a;

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v5

    move-object v2, v8

    move-object/from16 v4, p0

    move-object/from16 v35, v5

    move-object/from16 v5, p2

    const/16 v24, 0x3

    move/from16 v6, v20

    const/16 v20, 0x4

    move/from16 v7, v22

    move-object/from16 v36, v8

    move-object/from16 v8, v19

    move/from16 v19, v9

    move-object/from16 v9, v23

    move/from16 v22, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/e/a;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v35

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/a/i;->a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z

    move-object/from16 v0, v36

    .line 226
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_3f

    :cond_65
    :goto_3e
    move/from16 v19, v9

    move/from16 v22, v10

    const/16 v20, 0x4

    const/16 v24, 0x3

    :goto_3f
    add-int/lit8 v9, v19, 0x1

    move/from16 v10, v22

    goto/16 :goto_3b

    .line 227
    :cond_66
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/e/a;

    .line 228
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 229
    array-length v0, v5

    new-array v6, v0, [Lcom/alibaba/fastjson/e/a;

    .line 230
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_67

    .line 232
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_40

    :cond_67
    move-object/from16 v7, v16

    .line 233
    :goto_40
    new-instance v9, Lcom/alibaba/fastjson/a/i;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    move-object/from16 v4, v25

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/a/i;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/e/a;[Lcom/alibaba/fastjson/e/a;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9
.end method

.method static a(Ljava/util/List;Lcom/alibaba/fastjson/e/a;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/e/a;",
            ">;",
            "Lcom/alibaba/fastjson/e/a;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 28
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/e/a;

    .line 29
    iget-object v3, v2, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    iget-boolean v2, v2, Lcom/alibaba/fastjson/e/a;->n:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/fastjson/e/a;->n:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method private a([Lcom/alibaba/fastjson/e/a;[Lcom/alibaba/fastjson/e/a;)[Lcom/alibaba/fastjson/e/a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/i;->g:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3
    array-length v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    const/4 v3, 0x0

    .line 5
    :goto_1
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 6
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    return-object p2

    .line 7
    :cond_5
    array-length v2, v0

    array-length p1, p1

    if-ne v2, p1, :cond_c

    const/4 p1, 0x0

    .line 8
    :goto_4
    array-length v2, v0

    if-ge p1, v2, :cond_7

    .line 9
    aget-object v2, p2, p1

    iget-object v2, v2, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 p1, 0x0

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_8

    return-object p2

    .line 10
    :cond_8
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/e/a;

    const/4 v2, 0x0

    .line 11
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_b

    const/4 v3, 0x0

    .line 12
    :goto_7
    array-length v5, p2

    if-ge v3, v5, :cond_a

    .line 13
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 14
    aget-object v3, p2, v3

    aput-object v3, p1, v2

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 15
    :cond_b
    iput-boolean v4, p0, Lcom/alibaba/fastjson/a/i;->h:Z

    return-object p1

    .line 16
    :cond_c
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/e/a;

    const/4 v2, 0x0

    .line 17
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_f

    const/4 v3, 0x0

    .line 18
    :goto_a
    array-length v5, p2

    if-ge v3, v5, :cond_e

    .line 19
    aget-object v5, p2, v3

    iget-object v5, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 20
    aget-object v3, p2, v3

    aput-object v3, p1, v2

    goto :goto_b

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 21
    :cond_f
    array-length v0, v0

    move v2, v0

    const/4 v0, 0x0

    .line 22
    :goto_c
    array-length v3, p2

    if-ge v0, v3, :cond_13

    const/4 v3, 0x0

    .line 23
    :goto_d
    array-length v5, p1

    if-ge v3, v5, :cond_11

    if-ge v3, v2, :cond_11

    .line 24
    aget-object v5, p1, v0

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/e/a;->b(Lcom/alibaba/fastjson/e/a;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v3, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_11
    const/4 v3, 0x0

    :goto_e
    if-nez v3, :cond_12

    .line 25
    aget-object v3, p2, v0

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 26
    :cond_13
    iput-boolean v4, p0, Lcom/alibaba/fastjson/a/i;->h:Z

    :cond_14
    return-object p2
.end method
