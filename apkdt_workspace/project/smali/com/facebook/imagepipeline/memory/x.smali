.class public Lcom/facebook/imagepipeline/memory/x;
.super Ljava/lang/Object;
.source "MemoryPooledByteBufferFactory.java"

# interfaces
.implements Le/f/c/f/h;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Le/f/c/f/k;

.field private final b:Lcom/facebook/imagepipeline/memory/u;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/u;Le/f/c/f/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/x;->a:Le/f/c/f/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/w;
    .locals 2

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;)V

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/x;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/y;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    .line 9
    throw p1
.end method

.method public a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/w;
    .locals 2

    .line 17
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1, p2}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    .line 18
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/memory/x;->a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/y;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    .line 20
    throw p1
.end method

.method a(Ljava/io/InputStream;Lcom/facebook/imagepipeline/memory/y;)Lcom/facebook/imagepipeline/memory/w;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/x;->a:Le/f/c/f/k;

    invoke-virtual {v0, p1, p2}, Le/f/c/f/k;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 22
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/memory/y;->i()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public a([B)Lcom/facebook/imagepipeline/memory/w;
    .locals 3

    .line 10
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    const/4 v1, 0x0

    .line 11
    :try_start_0
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/memory/y;->write([BII)V

    .line 12
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->i()Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/l;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 15
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/y;->close()V

    .line 16
    throw p1
.end method

.method public a()Lcom/facebook/imagepipeline/memory/y;
    .locals 2

    .line 23
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;)V

    return-object v0
.end method

.method public a(I)Lcom/facebook/imagepipeline/memory/y;
    .locals 2

    .line 24
    new-instance v0, Lcom/facebook/imagepipeline/memory/y;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/x;->b:Lcom/facebook/imagepipeline/memory/u;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/y;-><init>(Lcom/facebook/imagepipeline/memory/u;I)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/io/InputStream;)Le/f/c/f/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->a(Ljava/io/InputStream;)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/io/InputStream;I)Le/f/c/f/g;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/memory/x;->a(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a([B)Le/f/c/f/g;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->a([B)Lcom/facebook/imagepipeline/memory/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a()Le/f/c/f/j;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/x;->a()Lcom/facebook/imagepipeline/memory/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(I)Le/f/c/f/j;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/x;->a(I)Lcom/facebook/imagepipeline/memory/y;

    move-result-object p1

    return-object p1
.end method
