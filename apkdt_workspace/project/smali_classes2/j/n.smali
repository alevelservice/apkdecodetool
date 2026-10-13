.class public final Lj/n;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lj/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lj/n;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lj/t;)Lj/d;
    .locals 1

    .line 2
    new-instance v0, Lj/o;

    invoke-direct {v0, p0}, Lj/o;-><init>(Lj/t;)V

    return-object v0
.end method

.method public static a(Lj/u;)Lj/e;
    .locals 1

    .line 1
    new-instance v0, Lj/p;

    invoke-direct {v0, p0}, Lj/p;-><init>(Lj/u;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lj/v;)Lj/t;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lj/n$a;

    invoke-direct {v0, p1, p0}, Lj/n$a;-><init>(Lj/v;Ljava/io/OutputStream;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/net/Socket;)Lj/t;
    .locals 1

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p0}, Lj/n;->c(Ljava/net/Socket;)Lj/a;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lj/n;->a(Ljava/io/OutputStream;Lj/v;)Lj/t;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lj/a;->a(Lj/t;)Lj/t;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/File;)Lj/u;
    .locals 1

    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lj/n;->a(Ljava/io/InputStream;)Lj/u;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/InputStream;)Lj/u;
    .locals 1

    .line 12
    new-instance v0, Lj/v;

    invoke-direct {v0}, Lj/v;-><init>()V

    invoke-static {p0, v0}, Lj/n;->a(Ljava/io/InputStream;Lj/v;)Lj/u;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Lj/v;)Lj/u;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 13
    new-instance v0, Lj/n$b;

    invoke-direct {v0, p1, p0}, Lj/n$b;-><init>(Lj/v;Ljava/io/InputStream;)V

    return-object v0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 18
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/net/Socket;)Lj/u;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lj/n;->c(Ljava/net/Socket;)Lj/a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lj/n;->a(Ljava/io/InputStream;Lj/v;)Lj/u;

    move-result-object p0

    .line 4
    invoke-virtual {v0, p0}, Lj/a;->a(Lj/u;)Lj/u;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Ljava/net/Socket;)Lj/a;
    .locals 1

    .line 1
    new-instance v0, Lj/n$c;

    invoke-direct {v0, p0}, Lj/n$c;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method
