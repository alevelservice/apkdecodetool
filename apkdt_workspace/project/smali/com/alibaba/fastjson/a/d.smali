.class public Lcom/alibaba/fastjson/a/d;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/f;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final b:[Ljava/lang/Enum;

.field protected final c:[Ljava/lang/Enum;

.field protected d:[J


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/a/d;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    .line 4
    iget-object p1, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    array-length v0, p1

    new-array v0, v0, [J

    .line 5
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 7
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v4, v3

    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    xor-long/2addr v4, v6

    const-wide v6, 0x100000001b3L

    mul-long v4, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_0
    aput-wide v4, v0, v1

    .line 11
    iget-object v2, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 13
    iget-object v1, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Enum;

    iput-object v1, p0, Lcom/alibaba/fastjson/a/d;->b:[Ljava/lang/Enum;

    const/4 v1, 0x0

    .line 14
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x0

    .line 15
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    aget-wide v4, v3, v1

    aget-wide v6, v0, v2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 17
    iget-object v3, p0, Lcom/alibaba/fastjson/a/d;->b:[Ljava/lang/Enum;

    iget-object v4, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    aget-object v2, v4, v2

    aput-object v2, v3, v1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
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

    .line 1
    :try_start_0
    iget-object p2, p1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 2
    iget p3, p2, Lcom/alibaba/fastjson/a/f;->a:I
    :try_end_0
    .catch Lcom/alibaba/fastjson/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    const-string v1, " error, value : "

    const-string v2, "parse enum "

    const/16 v3, 0x10

    if-ne p3, v0, :cond_1

    .line 3
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->k()I

    move-result p1

    .line 4
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/a/f;->b(I)V

    if-ltz p1, :cond_0

    .line 5
    iget-object p2, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    array-length p2, p2

    if-gt p1, p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/alibaba/fastjson/a/d;->c:[Ljava/lang/Enum;

    aget-object p1, p2, p1

    return-object p1

    .line 7
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/a/d;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v0, 0x4

    const/4 v4, 0x0

    if-ne p3, v0, :cond_5

    .line 8
    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    return-object v4

    :cond_2
    const-wide p2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-long v1, v1

    xor-long/2addr p2, v1

    const-wide v1, 0x100000001b3L

    mul-long p2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/alibaba/fastjson/a/d;->d:[J

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_4

    return-object v4

    .line 14
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/a/d;->b:[Ljava/lang/Enum;

    aget-object p1, p2, p1

    return-object p1

    :cond_5
    const/16 v0, 0x8

    if-ne p3, v0, :cond_6

    .line 15
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object v4

    .line 16
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/alibaba/fastjson/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/a/d;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/f; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 18
    new-instance p2, Lcom/alibaba/fastjson/f;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 19
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
