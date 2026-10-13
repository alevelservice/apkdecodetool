.class final Lk/b/a/v/c$q;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lk/b/a/v/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation


# instance fields
.field private final e:Lk/b/a/x/i;

.field private final f:Lk/b/a/v/l;

.field private final g:Lk/b/a/v/g;

.field private volatile h:Lk/b/a/v/c$k;


# direct methods
.method constructor <init>(Lk/b/a/x/i;Lk/b/a/v/l;Lk/b/a/v/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    .line 3
    iput-object p2, p0, Lk/b/a/v/c$q;->f:Lk/b/a/v/l;

    .line 4
    iput-object p3, p0, Lk/b/a/v/c$q;->g:Lk/b/a/v/g;

    return-void
.end method

.method private a()Lk/b/a/v/c$k;
    .locals 5

    .line 1
    iget-object v0, p0, Lk/b/a/v/c$q;->h:Lk/b/a/v/c$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/b/a/v/c$k;

    iget-object v1, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    const/4 v2, 0x1

    const/16 v3, 0x13

    sget-object v4, Lk/b/a/v/j;->NORMAL:Lk/b/a/v/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lk/b/a/v/c$k;-><init>(Lk/b/a/x/i;IILk/b/a/v/j;)V

    iput-object v0, p0, Lk/b/a/v/c$q;->h:Lk/b/a/v/c$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lk/b/a/v/c$q;->h:Lk/b/a/v/c$k;

    return-object v0
.end method


# virtual methods
.method public parse(Lk/b/a/v/d;Ljava/lang/CharSequence;I)I
    .locals 10

    .line 1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ltz p3, :cond_4

    if-gt p3, v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lk/b/a/v/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk/b/a/v/c$q;->f:Lk/b/a/v/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lk/b/a/v/c$q;->g:Lk/b/a/v/g;

    iget-object v2, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-virtual {p1}, Lk/b/a/v/d;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lk/b/a/v/g;->a(Lk/b/a/x/i;Lk/b/a/v/l;Ljava/util/Locale;)Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p1

    move-object v4, v2

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lk/b/a/v/d;->a(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v5, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    add-int v9, p3, p2

    move-object v4, p1

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lk/b/a/v/d;->a(Lk/b/a/x/i;JII)I

    move-result p1

    return p1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lk/b/a/v/d;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    xor-int/lit8 p1, p3, -0x1

    return p1

    .line 10
    :cond_3
    invoke-direct {p0}, Lk/b/a/v/c$q;->a()Lk/b/a/v/c$k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lk/b/a/v/c$k;->parse(Lk/b/a/v/d;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-virtual {p1, v0}, Lk/b/a/v/f;->a(Lk/b/a/x/i;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Lk/b/a/v/c$q;->g:Lk/b/a/v/g;

    iget-object v2, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lk/b/a/v/c$q;->f:Lk/b/a/v/l;

    invoke-virtual {p1}, Lk/b/a/v/f;->b()Ljava/util/Locale;

    move-result-object v6

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lk/b/a/v/g;->a(Lk/b/a/x/i;JLk/b/a/v/l;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lk/b/a/v/c$q;->a()Lk/b/a/v/c$k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk/b/a/v/c$k;->print(Lk/b/a/v/f;Ljava/lang/StringBuilder;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lk/b/a/v/c$q;->f:Lk/b/a/v/l;

    sget-object v1, Lk/b/a/v/l;->FULL:Lk/b/a/v/l;

    const-string v2, ")"

    const-string v3, "Text("

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$q;->e:Lk/b/a/x/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/c$q;->f:Lk/b/a/v/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
