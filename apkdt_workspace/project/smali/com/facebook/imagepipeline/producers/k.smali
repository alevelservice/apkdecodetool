.class public Lcom/facebook/imagepipeline/producers/k;
.super Lcom/facebook/imagepipeline/producers/y;
.source "DataFetchProducer.java"


# direct methods
.method public constructor <init>(Le/f/c/f/h;)V
    .locals 1

    .line 1
    invoke-static {}, Le/f/c/b/a;->a()Le/f/c/b/a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/y;-><init>(Ljava/util/concurrent/Executor;Le/f/c/f/h;)V

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 4
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/facebook/common/internal/h;->a(Z)V

    const/16 v1, 0x2c

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/k;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    const-string v0, ";"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    const-string v0, "base64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a(Le/f/i/i/b;)Le/f/i/g/e;
    .locals 1

    .line 1
    invoke-virtual {p1}, Le/f/i/i/b;->p()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/k;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/y;->a(Ljava/io/InputStream;I)Le/f/i/g/e;

    move-result-object p1

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "DataFetchProducer"

    return-object v0
.end method
