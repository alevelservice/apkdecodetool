.class public final Lcom/alibaba/fastjson/c/e;
.super Ljava/lang/Object;
.source "ArrayCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/e;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/e;->a:Lcom/alibaba/fastjson/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/b;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/b;->size()I

    move-result v0

    .line 57
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 58
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/b;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p3, :cond_1

    .line 59
    invoke-static {v1, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    check-cast v3, Lcom/alibaba/fastjson/b;

    invoke-direct {p0, p1, p2, v3}, Lcom/alibaba/fastjson/c/e;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 63
    :cond_3
    iget-object v4, p1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {v3, p2, v4}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    :goto_1
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/b;->setRelatedArray(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/b;->setComponentType(Ljava/lang/reflect/Type;)V

    return-object v1
.end method


# virtual methods
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

    .line 37
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p1, 0x0

    return-object p1

    .line 40
    :cond_0
    const-class v3, [C

    const/4 v4, 0x4

    if-ne p2, v3, :cond_3

    if-ne v1, v4, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x2

    if-ne v1, p2, :cond_2

    .line 44
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->g()Ljava/lang/Number;

    move-result-object p1

    .line 45
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_3
    if-ne v1, v4, :cond_4

    .line 49
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->l()[B

    move-result-object p1

    .line 50
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object p1

    .line 51
    :cond_4
    check-cast p2, Ljava/lang/Class;

    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 54
    invoke-virtual {p1, p2, v0, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/c/e;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 9

    .line 1
    iget-object p4, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    .line 2
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    const-string v1, "[]"

    if-nez p2, :cond_1

    .line 3
    iget p1, p4, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p2, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget p2, p2, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    .line 6
    :cond_1
    array-length v2, v0

    add-int/lit8 v3, v2, -0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 7
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    return-void

    .line 8
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    const/4 v4, 0x0

    .line 9
    invoke-virtual {p1, v1, p2, p3, v4}, Lcom/alibaba/fastjson/c/p;->a(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    .line 10
    :try_start_0
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    .line 11
    iget p2, p4, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    const/16 p3, 0x5d

    const/16 v5, 0x2c

    if-eqz p2, :cond_5

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/p;->c()V

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/p;->e()V

    :goto_1
    if-ge v4, v2, :cond_4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/p;->e()V

    .line 16
    :cond_3
    aget-object p2, v0, v4

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/p;->d()V

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/p;->e()V

    .line 19
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/c/c0;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iput-object v1, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    return-void

    :cond_5
    const/4 p2, 0x0

    move-object v2, p2

    move-object v6, v2

    :goto_2
    if-ge v4, v3, :cond_9

    .line 21
    :try_start_1
    aget-object v7, v0, v4

    if-nez v7, :cond_6

    const-string v7, "null,"

    .line 22
    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    goto :goto_4

    .line 23
    :cond_6
    iget-object v8, p1, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 24
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v2, :cond_8

    .line 26
    invoke-interface {v6, p1, v7, p2, p2}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_3

    .line 27
    :cond_8
    iget-object v2, p1, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v6

    .line 28
    invoke-interface {v6, p1, v7, p2, p2}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    move-object v2, v8

    .line 29
    :goto_3
    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 30
    :cond_9
    aget-object p2, v0, v3

    if-nez p2, :cond_a

    const-string p2, "null]"

    .line 31
    invoke-virtual {p4, p2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    goto :goto_6

    .line 32
    :cond_a
    iget-object v0, p1, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    :goto_5
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/c/c0;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_6
    iput-object v1, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    return-void

    :catchall_0
    move-exception p2

    iput-object v1, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method
