.class public Lcom/alibaba/fastjson/c/j;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field public static final a:Lcom/alibaba/fastjson/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/j;

    invoke-direct {v0}, Lcom/alibaba/fastjson/c/j;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/j;->a:Lcom/alibaba/fastjson/c/j;

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
    .locals 2
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
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 31
    iget-object p1, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_0
    const-class v0, Lcom/alibaba/fastjson/b;

    if-ne p2, v0, :cond_1

    .line 33
    new-instance p2, Lcom/alibaba/fastjson/b;

    invoke-direct {p2}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 34
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Collection;)V

    return-object p2

    :cond_1
    move-object v0, p2

    .line 35
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_a

    .line 36
    check-cast v0, Ljava/lang/Class;

    .line 37
    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_2

    goto/16 :goto_2

    .line 38
    :cond_2
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_3

    .line 40
    :cond_3
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_3

    .line 42
    :cond_4
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_3

    .line 44
    :cond_5
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 46
    :cond_6
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 47
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 48
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    .line 49
    :cond_7
    const-class v0, Ljava/lang/Object;

    .line 50
    :goto_1
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_3

    .line 51
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_3

    .line 52
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "create instane error, class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_9
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :goto_3
    invoke-static {p2}, Lcom/alibaba/fastjson/e/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2, v0, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 56
    :cond_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_b

    .line 57
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto/16 :goto_0

    .line 58
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/f;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez p2, :cond_1

    .line 2
    iget p1, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p2, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget p2, p2, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const-string p1, "[]"

    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    iget v2, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v3, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v3, v3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 6
    invoke-static {p4}, Lcom/alibaba/fastjson/e/d;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 7
    :cond_2
    move-object p4, p2

    check-cast p4, Ljava/util/Collection;

    .line 8
    iget-object v2, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/alibaba/fastjson/c/p;->a(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 10
    iget p2, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object p3, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget p3, p3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    .line 11
    const-class p2, Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_3

    const-string p2, "Set"

    .line 12
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    goto :goto_1

    .line 13
    :cond_3
    const-class p2, Ljava/util/TreeSet;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    if-ne p2, p3, :cond_4

    const-string p2, "TreeSet"

    .line 14
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/c/c0;

    :cond_4
    :goto_1
    const/16 p2, 0x5b

    .line 15
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    .line 16
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 p4, v3, 0x1

    if-eqz v3, :cond_5

    const/16 v3, 0x2c

    .line 17
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    :cond_5
    if-nez p3, :cond_6

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_3

    .line 19
    :cond_6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 20
    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_7

    .line 21
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/c/c0;->d(I)V

    goto :goto_3

    .line 22
    :cond_7
    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_8

    .line 23
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    .line 24
    iget p3, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v3, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v3, v3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p3, v3

    if-eqz p3, :cond_9

    const/16 p3, 0x4c

    .line 25
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    goto :goto_3

    .line 26
    :cond_8
    iget-object v4, p1, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v3

    add-int/lit8 v4, p4, -0x1

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, p3, v4, v1}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :cond_9
    :goto_3
    move v3, p4

    goto :goto_2

    :cond_a
    const/16 p2, 0x5d

    .line 28
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-object v2, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    return-void

    :catchall_0
    move-exception p2

    iput-object v2, p1, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method
