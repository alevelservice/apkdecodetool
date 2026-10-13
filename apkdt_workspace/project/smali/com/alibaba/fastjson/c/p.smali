.class public Lcom/alibaba/fastjson/c/p;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# instance fields
.field public final a:Lcom/alibaba/fastjson/c/a0;

.field public final b:Lcom/alibaba/fastjson/c/c0;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/g;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/x;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/d;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/u;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/y;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/text/DateFormat;

.field protected l:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/c/z;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/alibaba/fastjson/c/z;

.field public n:Ljava/util/TimeZone;

.field public o:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    .line 6
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/alibaba/fastjson/c/p;->i:I

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    .line 10
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    .line 11
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->o:Ljava/util/Locale;

    .line 12
    iput-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    .line 13
    iput-object p2, p0, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    .line 14
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object p1, p0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 42
    iget-object p0, p0, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 43
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 44
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 45
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/d;

    .line 46
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Lcom/alibaba/fastjson/c/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_1
    return-object p3
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 48
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 49
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 50
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/c/u;

    .line 51
    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, p1, p2, p3}, Lcom/alibaba/fastjson/c/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public a()Ljava/text/DateFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/alibaba/fastjson/c/p;->o:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/c/b;Z)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/c/c0;->a(Lcom/alibaba/fastjson/c/b;Z)V

    return-void
.end method

.method public a(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    iget v0, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/c/z;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/c/z;-><init>(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    .line 11
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    .line 15
    iget-object v1, v0, Lcom/alibaba/fastjson/c/z;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string v0, "{\"$ref\":\"@\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson/c/z;->a:Lcom/alibaba/fastjson/c/z;

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, v1, Lcom/alibaba/fastjson/c/z;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string v0, "{\"$ref\":\"..\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson/c/z;->a:Lcom/alibaba/fastjson/c/z;

    if-nez v1, :cond_3

    .line 21
    iget-object v0, v0, Lcom/alibaba/fastjson/c/z;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    .line 22
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string v0, "{\"$ref\":\"$\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/c/z;

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/z;->toString()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 30
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object p4

    .line 33
    invoke-interface {p4, p0, p1, p2, p3}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Lcom/alibaba/fastjson/f;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 35
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/c/p;->a()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/c/p;->o:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 38
    iget-object p2, p0, Lcom/alibaba/fastjson/c/p;->n:Ljava/util/TimeZone;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 39
    :cond_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/alibaba/fastjson/c/p;->j:Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/alibaba/fastjson/c/p;->k:Ljava/text/DateFormat;

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0, p0, p1, v1, v1}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    iget v0, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 10
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c0;->i()V

    :goto_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    iget v1, v0, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v2, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v2, v2, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c0;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;CZ)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/c/y;

    if-eqz p2, :cond_2

    .line 17
    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 18
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_2
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p0, p1, v3}, Lcom/alibaba/fastjson/c/y;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 22
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/c/x;

    .line 24
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, p1, v3, p3}, Lcom/alibaba/fastjson/c/x;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/c/p;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/c/p;->i:I

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/c/p;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/c/p;->i:I

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/c/p;->i:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/u;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/c/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
