.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/d;
.implements Lcom/alibaba/fastjson/g;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static final DEFAULT_TYPE_KEY:Ljava/lang/String; = "@type"

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.68"

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    .line 3
    sget-object v0, Lcom/alibaba/fastjson/a/e;->UseBigDecimal:Lcom/alibaba/fastjson/a/e;

    iget v0, v0, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/lit8 v0, v0, 0x0

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/a/e;->SortFeidFastMatch:Lcom/alibaba/fastjson/a/e;

    iget v1, v1, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v0, v1

    .line 5
    sget-object v1, Lcom/alibaba/fastjson/a/e;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

    iget v1, v1, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v0, v1

    .line 6
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 7
    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/alibaba/fastjson/c/b;->QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

    iget v0, v0, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/lit8 v0, v0, 0x0

    .line 9
    sget-object v1, Lcom/alibaba/fastjson/c/b;->SkipTransientField:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v0, v1

    .line 10
    sget-object v1, Lcom/alibaba/fastjson/c/b;->WriteEnumUsingToString:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v0, v1

    .line 11
    sget-object v1, Lcom/alibaba/fastjson/c/b;->SortField:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v0, v1

    .line 12
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {v1, p0, v2, p1}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V

    .line 3
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;
    .locals 1

    .line 12
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V

    .line 18
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 3

    .line 13
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v1, 0x0

    .line 14
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 15
    aget-object v2, p2, v1

    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 4

    .line 8
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 9
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 10
    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 2

    .line 6
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Lcom/alibaba/fastjson/f;

    const-string v0, "UTF-8 not support"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/b;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/a/e;

    .line 1
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Lcom/alibaba/fastjson/b;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Lcom/alibaba/fastjson/b;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, p1, v2

    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/a/c;

    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {p1, p0, v2, v1}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V

    .line 6
    iget-object p0, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_1

    :cond_2
    const/16 p0, 0x14

    if-ne v1, p0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 13
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;)V

    .line 14
    iget-object p0, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/f;->a()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/f;->n()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 21
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 22
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;)V

    .line 23
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/a/c;->a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 25
    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 9
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 12
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v2, Lcom/alibaba/fastjson/a/e;->SupportAutoType:Lcom/alibaba/fastjson/a/e;

    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "@type"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0

    .line 14
    :cond_3
    :goto_1
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7

    .line 1
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 5
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v2, Lcom/alibaba/fastjson/a/e;->SupportAutoType:Lcom/alibaba/fastjson/a/e;

    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 6
    array-length v4, p1

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, p1, v2

    .line 7
    sget-object v6, Lcom/alibaba/fastjson/a/e;->SupportAutoType:Lcom/alibaba/fastjson/a/e;

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@type"

    invoke-virtual {v0, p1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/j;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/j<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 15
    iget-object p1, p1, Lcom/alibaba/fastjson/j;->type:Ljava/lang/reflect/Type;

    sget-object v0, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/a/e;

    .line 49
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/a/a/g;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/a/a/g;",
            "[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 17
    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/a/g;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 21
    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/a/c;

    sget-object v0, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {p3, p0, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V

    .line 23
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/a/g;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/a/g;",
            "[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 19
    sget-object v2, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/a/g;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/n;",
            "I[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 26
    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/a/g;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;Lcom/alibaba/fastjson/a/a/g;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/n;",
            "Lcom/alibaba/fastjson/a/a/g;",
            "I[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    .line 28
    iget v2, v2, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr p4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    new-instance p5, Lcom/alibaba/fastjson/a/c;

    invoke-direct {p5, p0, p2, p4}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V

    .line 30
    instance-of p0, p3, Lcom/alibaba/fastjson/a/a/c;

    if-eqz p0, :cond_2

    .line 31
    invoke-virtual {p5}, Lcom/alibaba/fastjson/a/c;->m()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/a/a/c;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_2
    instance-of p0, p3, Lcom/alibaba/fastjson/a/a/b;

    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p5}, Lcom/alibaba/fastjson/a/c;->l()Ljava/util/List;

    move-result-object p0

    move-object p2, p3

    check-cast p2, Lcom/alibaba/fastjson/a/a/b;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_3
    instance-of p0, p3, Lcom/alibaba/fastjson/a/a/e;

    if-eqz p0, :cond_4

    .line 35
    check-cast p3, Lcom/alibaba/fastjson/a/a/e;

    iput-object p3, p5, Lcom/alibaba/fastjson/a/c;->q:Lcom/alibaba/fastjson/a/a/e;

    .line 36
    :cond_4
    invoke-virtual {p5, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 37
    invoke-virtual {p5, p0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p5}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object p0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;I[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 40
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson/f;

    const-string p1, "UTF-8 not support"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/e;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 41
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 43
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 44
    iget v3, v3, Lcom/alibaba/fastjson/a/e;->mask:I

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance p3, Lcom/alibaba/fastjson/a/c;

    sget-object v1, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-direct {p3, p0, p1, v1, v0}, Lcom/alibaba/fastjson/a/c;-><init>([CILcom/alibaba/fastjson/a/n;I)V

    .line 46
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 47
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/a/c;->c(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/c;->close()V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget-object p1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v1, :cond_1

    .line 4
    check-cast p0, Lcom/alibaba/fastjson/JSON;

    return-object p0

    .line 5
    :cond_1
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 6
    check-cast p0, Ljava/util/Map;

    .line 7
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    .line 8
    instance-of v0, p0, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v0, p0, Ljava/util/TreeMap;

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 13
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p1

    .line 19
    :cond_5
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_7

    .line 20
    check-cast p0, Ljava/util/Collection;

    .line 21
    new-instance p1, Lcom/alibaba/fastjson/b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/b;-><init>(I)V

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p1

    .line 25
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 29
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 30
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_9

    .line 31
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 32
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/b;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    return-object v0

    .line 34
    :cond_a
    invoke-static {v1}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object p0

    .line 35
    :cond_b
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object p1

    .line 36
    instance-of v1, p1, Lcom/alibaba/fastjson/c/q;

    if-eqz v1, :cond_d

    .line 37
    check-cast p1, Lcom/alibaba/fastjson/c/q;

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 39
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/c/q;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_c
    return-object v0

    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Lcom/alibaba/fastjson/f;

    const-string v0, "toJSON error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_d
    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;I[Lcom/alibaba/fastjson/c/b;)[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/c/b0;

    .line 11
    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;I[Lcom/alibaba/fastjson/c/b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;I[Lcom/alibaba/fastjson/c/b;)[B
    .locals 4

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p4}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 14
    :try_start_0
    new-instance p3, Lcom/alibaba/fastjson/c/p;

    invoke-direct {p3, v0, p1}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    if-eqz p2, :cond_7

    .line 15
    array-length p1, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_7

    aget-object v1, p2, p4

    if-nez v1, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    instance-of v2, v1, Lcom/alibaba/fastjson/c/y;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->i()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/c/y;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_1
    instance-of v2, v1, Lcom/alibaba/fastjson/c/u;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->h()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/c/u;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_2
    instance-of v2, v1, Lcom/alibaba/fastjson/c/d;

    if-eqz v2, :cond_3

    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->b()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/c/d;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_3
    instance-of v2, v1, Lcom/alibaba/fastjson/c/x;

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->j()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/c/x;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    instance-of v2, v1, Lcom/alibaba/fastjson/c/g;

    if-eqz v2, :cond_5

    .line 25
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->f()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/c/g;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_5
    instance-of v2, v1, Lcom/alibaba/fastjson/c/a;

    if-eqz v2, :cond_6

    .line 27
    invoke-virtual {p3}, Lcom/alibaba/fastjson/c/p;->g()Ljava/util/List;

    move-result-object v2

    check-cast v1, Lcom/alibaba/fastjson/c/a;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 28
    :cond_7
    invoke-virtual {p3, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 29
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/c/c0;->b(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b;)[B
    .locals 3

    .line 6
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p2}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 7
    :try_start_0
    new-instance p2, Lcom/alibaba/fastjson/c/p;

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    .line 8
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 9
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/c/c0;->b(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/c/b0;[Lcom/alibaba/fastjson/c/b;)[B
    .locals 2

    .line 12
    sget-object v0, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;I[Lcom/alibaba/fastjson/c/b;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/c/b;)[B
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 2
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/c/p;

    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    const-string p0, "UTF-8"

    .line 4
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/c/c0;->b(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    throw p0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v0, 0x0

    new-array v5, v0, [Lcom/alibaba/fastjson/c/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 3
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;Lcom/alibaba/fastjson/c/b0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/alibaba/fastjson/c/b0;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    .line 7
    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 5

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 17
    :try_start_0
    new-instance p4, Lcom/alibaba/fastjson/c/p;

    invoke-direct {p4, v0, p1}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    .line 18
    array-length p1, p5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    aget-object v4, p5, v2

    .line 19
    invoke-virtual {p4, v4, v3}, Lcom/alibaba/fastjson/c/p;->a(Lcom/alibaba/fastjson/c/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 20
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/alibaba/fastjson/c/b;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {p4, p1, v3}, Lcom/alibaba/fastjson/c/p;->a(Lcom/alibaba/fastjson/c/b;Z)V

    :cond_1
    if-eqz p2, :cond_9

    .line 23
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_9

    aget-object p3, p2, v1

    if-nez p3, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    instance-of p5, p3, Lcom/alibaba/fastjson/c/y;

    if-eqz p5, :cond_3

    .line 25
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->i()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/c/y;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_3
    instance-of p5, p3, Lcom/alibaba/fastjson/c/u;

    if-eqz p5, :cond_4

    .line 27
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->h()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/c/u;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    instance-of p5, p3, Lcom/alibaba/fastjson/c/d;

    if-eqz p5, :cond_5

    .line 29
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->b()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/c/d;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    instance-of p5, p3, Lcom/alibaba/fastjson/c/x;

    if-eqz p5, :cond_6

    .line 31
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->j()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/c/x;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_6
    instance-of p5, p3, Lcom/alibaba/fastjson/c/g;

    if-eqz p5, :cond_7

    .line 33
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->f()Ljava/util/List;

    move-result-object p5

    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/c/g;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_7
    instance-of p5, p3, Lcom/alibaba/fastjson/c/a;

    if-eqz p5, :cond_8

    .line 35
    invoke-virtual {p4}, Lcom/alibaba/fastjson/c/p;->g()Ljava/util/List;

    move-result-object p5

    check-cast p3, Lcom/alibaba/fastjson/c/a;

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_9
    invoke-virtual {p4, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 8
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 6
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/b0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/c/b0;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson/c/b;

    const/4 v0, 0x0

    .line 10
    sget-object v1, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/c/b0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 5
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 1

    .line 2
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v1, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/c/a0;[Lcom/alibaba/fastjson/c/b0;Ljava/lang/String;I[Lcom/alibaba/fastjson/c/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/a/n;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/c/b;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-direct {v0, p1, v1, p2}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 2
    :try_start_0
    new-instance p1, Lcom/alibaba/fastjson/c/p;

    sget-object p2, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-direct {p1, v0, p2}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    throw p0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 4

    .line 11
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v2, Lcom/alibaba/fastjson/c/b;->EMPTY:[Lcom/alibaba/fastjson/c/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 12
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/c/p;

    sget-object v2, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    .line 13
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    throw v1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/alibaba/fastjson/a/n;->a()Lcom/alibaba/fastjson/a/n;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/c/c0;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    sget-object v2, Lcom/alibaba/fastjson/c/b;->EMPTY:[Lcom/alibaba/fastjson/c/b;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson/c/c0;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/c/b;)V

    .line 2
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/c/p;

    sget-object v2, Lcom/alibaba/fastjson/c/a0;->d:Lcom/alibaba/fastjson/c/a0;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/c/p;-><init>(Lcom/alibaba/fastjson/c/c0;Lcom/alibaba/fastjson/c/a0;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/f;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c0;->close()V

    throw p1
.end method
