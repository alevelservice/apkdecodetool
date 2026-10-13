.class Li/w$a;
.super Li/g0/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/b0$a;)I
    .locals 0

    .line 8
    iget p1, p1, Li/b0$a;->c:I

    return p1
.end method

.method public a(Li/j;Li/a;Li/g0/f/g;Li/d0;)Li/g0/f/c;
    .locals 0

    .line 4
    invoke-virtual {p1, p2, p3, p4}, Li/j;->a(Li/a;Li/g0/f/g;Li/d0;)Li/g0/f/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Li/j;)Li/g0/f/d;
    .locals 0

    .line 7
    iget-object p1, p1, Li/j;->e:Li/g0/f/d;

    return-object p1
.end method

.method public a(Li/e;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 10
    check-cast p1, Li/y;

    invoke-virtual {p1, p2}, Li/y;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public a(Li/j;Li/a;Li/g0/f/g;)Ljava/net/Socket;
    .locals 0

    .line 6
    invoke-virtual {p1, p2, p3}, Li/j;->a(Li/a;Li/g0/f/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public a(Li/k;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 9
    invoke-virtual {p1, p2, p3}, Li/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Li/r$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Li/r$a;->a(Ljava/lang/String;)Li/r$a;

    return-void
.end method

.method public a(Li/r$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Li/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    return-void
.end method

.method public a(Li/a;Li/a;)Z
    .locals 0

    .line 5
    invoke-virtual {p1, p2}, Li/a;->a(Li/a;)Z

    move-result p1

    return p1
.end method

.method public a(Li/j;Li/g0/f/c;)Z
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Li/j;->a(Li/g0/f/c;)Z

    move-result p1

    return p1
.end method

.method public b(Li/j;Li/g0/f/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Li/j;->b(Li/g0/f/c;)V

    return-void
.end method
