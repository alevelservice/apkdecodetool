.class final Lcom/google/firebase/m/j/e;
.super Ljava/lang/Object;
.source "JsonValueObjectEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/m/f;
.implements Lcom/google/firebase/m/h;


# instance fields
.field private a:Lcom/google/firebase/m/j/e;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/firebase/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/m/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/m/e;Z)V
    .locals 1
    .param p1    # Ljava/io/Writer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/m/g<",
            "*>;>;",
            "Lcom/google/firebase/m/e<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/firebase/m/j/e;->a:Lcom/google/firebase/m/j/e;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/m/j/e;->b:Z

    .line 4
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/m/j/e;->d:Ljava/util/Map;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/m/j/e;->e:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Lcom/google/firebase/m/j/e;->f:Lcom/google/firebase/m/e;

    .line 8
    iput-boolean p5, p0, Lcom/google/firebase/m/j/e;->g:Z

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 9
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-nez p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/m/j/e;->b:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->a:Lcom/google/firebase/m/j/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/m/j/e;->b()V

    .line 4
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->a:Lcom/google/firebase/m/j/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/m/j/e;->b:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/m/j/e;->a:Lcom/google/firebase/m/j/e;

    .line 6
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/m/d;J)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Lcom/google/firebase/m/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/m/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;J)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(Lcom/google/firebase/m/d;Ljava/lang/Object;)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Lcom/google/firebase/m/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/m/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;I)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;I)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;J)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;J)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)Lcom/google/firebase/m/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;Z)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Lcom/google/firebase/m/h;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public bridge synthetic a(Z)Lcom/google/firebase/m/h;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/firebase/m/j/e;->a(Z)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(I)Lcom/google/firebase/m/j/e;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 24
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public a(J)Lcom/google/firebase/m/j/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 26
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    return-object p0
.end method

.method a(Lcom/google/firebase/m/e;Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/m/e<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/firebase/m/j/e;"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 84
    :cond_0
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/m/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p3, :cond_1

    .line 85
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    :cond_1
    return-object p0
.end method

.method a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    new-instance p2, Lcom/google/firebase/m/c;

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    aput-object p1, v0, v1

    const-string p1, "%s cannot be encoded inline"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/firebase/m/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-nez p1, :cond_2

    .line 35
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    return-object p0

    .line 36
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 37
    iget-object p2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    return-object p0

    .line 38
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 39
    instance-of p2, p1, [B

    if-eqz p2, :cond_4

    .line 40
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/firebase/m/j/e;->a([B)Lcom/google/firebase/m/j/e;

    return-object p0

    .line 41
    :cond_4
    iget-object p2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 42
    instance-of p2, p1, [I

    if-eqz p2, :cond_5

    .line 43
    check-cast p1, [I

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_a

    aget v0, p1, v1

    .line 44
    iget-object v2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_5
    instance-of p2, p1, [J

    if-eqz p2, :cond_6

    .line 46
    check-cast p1, [J

    array-length p2, p1

    :goto_2
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 47
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/m/j/e;->a(J)Lcom/google/firebase/m/j/e;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_6
    instance-of p2, p1, [D

    if-eqz p2, :cond_7

    .line 49
    check-cast p1, [D

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_a

    aget-wide v2, p1, v1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 51
    :cond_7
    instance-of p2, p1, [Z

    if-eqz p2, :cond_8

    .line 52
    check-cast p1, [Z

    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_a

    aget-boolean v0, p1, v1

    .line 53
    iget-object v2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    if-eqz p2, :cond_9

    .line 55
    check-cast p1, [Ljava/lang/Number;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 56
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 57
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_a

    aget-object v2, p1, v0

    .line 58
    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 59
    :cond_a
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 60
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 61
    check-cast p1, Ljava/util/Collection;

    .line 62
    iget-object p2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p2, v1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    goto :goto_7

    .line 65
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object p0

    .line 66
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 67
    check-cast p1, Ljava/util/Map;

    .line 68
    iget-object p2, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 69
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 71
    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Lcom/google/firebase/m/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 74
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/m/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 75
    :cond_e
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-object p0

    .line 76
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/m/e;

    if-eqz v0, :cond_10

    .line 77
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Lcom/google/firebase/m/e;Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    return-object p0

    .line 78
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/m/g;

    if-eqz v0, :cond_11

    .line 79
    invoke-interface {v0, p1, p0}, Lcom/google/firebase/m/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 80
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 81
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/m/j/e;->a(Ljava/lang/String;)Lcom/google/firebase/m/j/e;

    return-object p0

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->f:Lcom/google/firebase/m/e;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/m/j/e;->a(Lcom/google/firebase/m/e;Ljava/lang/Object;Z)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 22
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 11
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 12
    invoke-virtual {p0, p2}, Lcom/google/firebase/m/j/e;->a(I)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;J)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 15
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/m/j/e;->a(J)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/google/firebase/m/j/e;->g:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/m/j/e;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/m/j/e;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/m/j/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/google/firebase/m/j/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 17
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/firebase/m/j/e;->a(Z)Lcom/google/firebase/m/j/e;

    return-object p0
.end method

.method public a(Z)Lcom/google/firebase/m/j/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 28
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    return-object p0
.end method

.method public a([B)Lcom/google/firebase/m/j/e;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    if-nez p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-object p0
.end method

.method a()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/m/j/e;->b()V

    .line 88
    iget-object v0, p0, Lcom/google/firebase/m/j/e;->c:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    return-void
.end method
