.class public Lcom/alibaba/fastjson/a/b;
.super Lcom/alibaba/fastjson/a/a/d;
.source "DefaultFieldDeserializer.java"


# instance fields
.field protected e:Lcom/alibaba/fastjson/a/a/f;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Lcom/alibaba/fastjson/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/n;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/e/a;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lcom/alibaba/fastjson/a/a/d;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/e/a;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/n;)Lcom/alibaba/fastjson/a/a/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v1, v0, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    iget-object v0, v0, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v2, v1, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v0, v0, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    .line 7
    instance-of v1, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    if-eqz v2, :cond_1

    .line 9
    iput-object p3, v2, Lcom/alibaba/fastjson/a/m;->d:Ljava/lang/reflect/Type;

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/a/a/d;->b:Ljava/lang/Class;

    invoke-static {v2, p3, v0}, Lcom/alibaba/fastjson/e/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 11
    iget-object v2, p1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    .line 12
    :cond_2
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 13
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 14
    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    .line 15
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 16
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 17
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_3

    .line 18
    check-cast v3, Ljava/lang/Class;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 20
    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    invoke-static {v2, v3, p3}, Lcom/alibaba/fastjson/e/d;->a([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 21
    new-instance v0, Lcom/alibaba/fastjson/e/c;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p3

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v0, v2, p3, v1}, Lcom/alibaba/fastjson/e/c;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 22
    :cond_3
    iget-object p3, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v1, p3, Lcom/alibaba/fastjson/e/a;->r:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    instance-of v3, v2, Lcom/alibaba/fastjson/c/k;

    if-eqz v3, :cond_4

    .line 24
    check-cast v2, Lcom/alibaba/fastjson/c/k;

    iget-object p3, p3, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v2, p1, v0, p3, v1}, Lcom/alibaba/fastjson/c/k;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 25
    :cond_4
    iget-object p3, p0, Lcom/alibaba/fastjson/a/b;->e:Lcom/alibaba/fastjson/a/a/f;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {p3, p1, v0, v1}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 26
    :goto_0
    iget v0, p1, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/c$a;

    move-result-object p2

    .line 28
    iput-object p0, p2, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/d;

    .line 29
    iget-object p3, p1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iput-object p3, p2, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/m;

    const/4 p2, 0x0

    .line 30
    iput p2, p1, Lcom/alibaba/fastjson/a/c;->n:I

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object p1, p1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    if-nez p3, :cond_8

    .line 32
    iget-object p1, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object p1, p1, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    .line 33
    sget-object p4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, p4, :cond_7

    sget-object p4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, p4, :cond_7

    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, p4, :cond_7

    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p4, :cond_8

    :cond_7
    return-void

    .line 34
    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
