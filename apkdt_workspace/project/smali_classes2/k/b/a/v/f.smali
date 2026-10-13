.class final Lk/b/a/v/f;
.super Ljava/lang/Object;
.source "DateTimePrintContext.java"


# instance fields
.field private a:Lk/b/a/x/e;

.field private b:Ljava/util/Locale;

.field private c:Lk/b/a/v/h;

.field private d:I


# direct methods
.method constructor <init>(Lk/b/a/x/e;Lk/b/a/v/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lk/b/a/v/f;->a(Lk/b/a/x/e;Lk/b/a/v/b;)Lk/b/a/x/e;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    .line 3
    invoke-virtual {p2}, Lk/b/a/v/b;->c()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/f;->b:Ljava/util/Locale;

    .line 4
    invoke-virtual {p2}, Lk/b/a/v/b;->b()Lk/b/a/v/h;

    move-result-object p1

    iput-object p1, p0, Lk/b/a/v/f;->c:Lk/b/a/v/h;

    return-void
.end method

.method private static a(Lk/b/a/x/e;Lk/b/a/v/b;)Lk/b/a/x/e;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lk/b/a/v/b;->a()Lk/b/a/u/i;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lk/b/a/v/b;->d()Lk/b/a/q;

    move-result-object p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Lk/b/a/x/j;->a()Lk/b/a/x/k;

    move-result-object v1

    invoke-interface {p0, v1}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk/b/a/u/i;

    .line 4
    invoke-static {}, Lk/b/a/x/j;->g()Lk/b/a/x/k;

    move-result-object v2

    invoke-interface {p0, v2}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk/b/a/q;

    .line 5
    invoke-static {v1, v0}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v0, v4

    .line 6
    :cond_1
    invoke-static {v2, p1}, Lk/b/a/w/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v4

    :cond_2
    if-nez v0, :cond_3

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    move-object v3, v0

    goto :goto_0

    :cond_4
    move-object v3, v1

    :goto_0
    if-eqz p1, :cond_5

    move-object v2, p1

    :cond_5
    const-string v5, " "

    if-eqz p1, :cond_9

    .line 7
    sget-object v6, Lk/b/a/x/a;->INSTANT_SECONDS:Lk/b/a/x/a;

    invoke-interface {p0, v6}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    sget-object v3, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    .line 9
    :goto_1
    invoke-static {p0}, Lk/b/a/e;->from(Lk/b/a/x/e;)Lk/b/a/e;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Lk/b/a/u/i;->zonedDateTime(Lk/b/a/e;Lk/b/a/q;)Lk/b/a/u/g;

    move-result-object p0

    return-object p0

    .line 10
    :cond_7
    invoke-virtual {p1}, Lk/b/a/q;->normalized()Lk/b/a/q;

    move-result-object v6

    .line 11
    invoke-static {}, Lk/b/a/x/j;->d()Lk/b/a/x/k;

    move-result-object v7

    invoke-interface {p0, v7}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk/b/a/r;

    .line 12
    instance-of v8, v6, Lk/b/a/r;

    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Lk/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    new-instance v0, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override zone for temporal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    if-eqz v0, :cond_e

    .line 14
    sget-object p1, Lk/b/a/x/a;->EPOCH_DAY:Lk/b/a/x/a;

    invoke-interface {p0, p1}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 15
    invoke-virtual {v3, p0}, Lk/b/a/u/i;->date(Lk/b/a/x/e;)Lk/b/a/u/b;

    move-result-object v4

    goto :goto_5

    .line 16
    :cond_a
    sget-object p1, Lk/b/a/u/n;->INSTANCE:Lk/b/a/u/n;

    if-ne v0, p1, :cond_b

    if-eqz v1, :cond_e

    .line 17
    :cond_b
    invoke-static {}, Lk/b/a/x/a;->values()[Lk/b/a/x/a;

    move-result-object p1

    array-length v1, p1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_e

    aget-object v7, p1, v6

    .line 18
    invoke-virtual {v7}, Lk/b/a/x/a;->isDateBased()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {p0, v7}, Lk/b/a/x/e;->isSupported(Lk/b/a/x/i;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_4

    .line 19
    :cond_c
    new-instance p1, Lk/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid override chronology for temporal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 20
    :cond_e
    :goto_5
    new-instance p1, Lk/b/a/v/f$a;

    invoke-direct {p1, v4, p0, v3, v2}, Lk/b/a/v/f$a;-><init>(Lk/b/a/u/b;Lk/b/a/x/e;Lk/b/a/u/i;Lk/b/a/q;)V

    return-object p1
.end method


# virtual methods
.method a(Lk/b/a/x/i;)Ljava/lang/Long;
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->getLong(Lk/b/a/x/i;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Lk/b/a/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 26
    iget v0, p0, Lk/b/a/v/f;->d:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_0
    throw p1
.end method

.method a(Lk/b/a/x/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lk/b/a/x/k<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    invoke-interface {v0, p1}, Lk/b/a/x/e;->query(Lk/b/a/x/k;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 23
    iget v0, p0, Lk/b/a/v/f;->d:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lk/b/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to extract value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lk/b/a/b;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method a()V
    .locals 1

    .line 21
    iget v0, p0, Lk/b/a/v/f;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lk/b/a/v/f;->d:I

    return-void
.end method

.method b()Ljava/util/Locale;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f;->b:Ljava/util/Locale;

    return-object v0
.end method

.method c()Lk/b/a/v/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f;->c:Lk/b/a/v/h;

    return-object v0
.end method

.method d()Lk/b/a/x/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    return-object v0
.end method

.method e()V
    .locals 1

    .line 1
    iget v0, p0, Lk/b/a/v/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/b/a/v/f;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/b/a/v/f;->a:Lk/b/a/x/e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
