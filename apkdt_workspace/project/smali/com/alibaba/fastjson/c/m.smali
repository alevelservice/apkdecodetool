.class public final Lcom/alibaba/fastjson/c/m;
.super Ljava/lang/Object;
.source "FieldSerializer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/c/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/c/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lcom/alibaba/fastjson/e/a;

.field protected final f:Z

.field protected final g:I

.field protected final h:Ljava/lang/String;

.field protected i:[C

.field private j:Lcom/alibaba/fastjson/c/m$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/e/a;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    .line 3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/e/a;->a()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    .line 5
    sget-object v9, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    .line 9
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/c/m;->g:I

    goto :goto_2

    .line 10
    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/c/m;->g:I

    const/4 v7, 0x0

    .line 11
    :goto_2
    iput-boolean v7, p0, Lcom/alibaba/fastjson/c/m;->f:Z

    .line 12
    iput-object v1, p0, Lcom/alibaba/fastjson/c/m;->h:Ljava/lang/String;

    .line 13
    iget-object p1, p1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    .line 15
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/c/m;->i:[C

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v4, p0, Lcom/alibaba/fastjson/c/m;->i:[C

    invoke-virtual {p1, v3, v1, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 17
    iget-object p1, p0, Lcom/alibaba/fastjson/c/m;->i:[C

    const/16 v1, 0x22

    aput-char v1, p1, v3

    add-int/lit8 v2, v0, 0x1

    .line 18
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3a

    .line 19
    aput-char v1, p1, v0

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/c/m;)I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object p1, p1, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/e/a;->a(Lcom/alibaba/fastjson/e/a;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v1, v0, Lcom/alibaba/fastjson/e/a;->f:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get property error\u3002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/alibaba/fastjson/c/p;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    .line 2
    iget v0, p1, Lcom/alibaba/fastjson/c/c0;->g:I

    .line 3
    sget-object v1, Lcom/alibaba/fastjson/c/b;->QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v0, v0, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->i:[C

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/c/c0;->write([CII)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v0, v0, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->j:Lcom/alibaba/fastjson/c/m$a;

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v0, v0, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 17
    :goto_0
    iget-object v1, p1, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v1

    .line 18
    new-instance v2, Lcom/alibaba/fastjson/c/m$a;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/c/m$a;-><init>(Lcom/alibaba/fastjson/c/w;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/alibaba/fastjson/c/m;->j:Lcom/alibaba/fastjson/c/m$a;

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/c/m;->j:Lcom/alibaba/fastjson/c/m$a;

    if-nez p2, :cond_6

    .line 20
    iget p2, p0, Lcom/alibaba/fastjson/c/m;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_3

    const-class p2, Ljava/lang/Number;

    iget-object v1, v0, Lcom/alibaba/fastjson/c/m$a;->b:Ljava/lang/Class;

    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 22
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(I)V

    return-void

    .line 23
    :cond_3
    iget p2, p0, Lcom/alibaba/fastjson/c/m;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_4

    const-class p2, Ljava/lang/Boolean;

    iget-object v1, v0, Lcom/alibaba/fastjson/c/m$a;->b:Ljava/lang/Class;

    if-ne p2, v1, :cond_4

    .line 24
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string p2, "false"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_4
    iget p2, p0, Lcom/alibaba/fastjson/c/m;->g:I

    sget-object v1, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v1, v1, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr p2, v1

    if-eqz p2, :cond_5

    const-class p2, Ljava/util/Collection;

    iget-object v1, v0, Lcom/alibaba/fastjson/c/m$a;->b:Ljava/lang/Class;

    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    iget-object p1, p1, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    const-string p2, "[]"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_5
    iget-object p2, v0, Lcom/alibaba/fastjson/c/m$a;->a:Lcom/alibaba/fastjson/c/w;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v2, v2, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/fastjson/c/m$a;->b:Ljava/lang/Class;

    invoke-interface {p2, p1, v1, v2, v0}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void

    .line 29
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    iget-object v2, v0, Lcom/alibaba/fastjson/c/m$a;->b:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 31
    iget-object v0, v0, Lcom/alibaba/fastjson/c/m$a;->a:Lcom/alibaba/fastjson/c/w;

    iget-object v1, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v2, v1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void

    .line 32
    :cond_7
    iget-object v0, p1, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/c/a0;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/c/w;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v2, v1, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/alibaba/fastjson/c/w;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/alibaba/fastjson/c/m;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/c/m;->a(Lcom/alibaba/fastjson/c/m;)I

    move-result p1

    return p1
.end method
