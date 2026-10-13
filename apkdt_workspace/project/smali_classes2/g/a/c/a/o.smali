.class public final Lg/a/c/a/o;
.super Ljava/lang/Object;
.source "StandardMethodCodec.java"

# interfaces
.implements Lg/a/c/a/l;


# static fields
.field public static final b:Lg/a/c/a/o;


# instance fields
.field private final a:Lg/a/c/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lg/a/c/a/o;

    sget-object v1, Lg/a/c/a/n;->a:Lg/a/c/a/n;

    invoke-direct {v0, v1}, Lg/a/c/a/o;-><init>(Lg/a/c/a/n;)V

    sput-object v0, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    return-void
.end method

.method public constructor <init>(Lg/a/c/a/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 37
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lg/a/c/a/j;
    .locals 3

    .line 6
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v0, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v1, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lg/a/c/a/j;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lg/a/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Method call corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lg/a/c/a/j;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    new-instance v0, Lg/a/c/a/n$a;

    invoke-direct {v0}, Lg/a/c/a/n$a;-><init>()V

    .line 2
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    iget-object v2, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    iget-object p1, p1, Lg/a/c/a/j;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0, p1}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lg/a/c/a/n$a;->a()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 3

    .line 12
    new-instance v0, Lg/a/c/a/n$a;

    invoke-direct {v0}, Lg/a/c/a/n$a;-><init>()V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 14
    iget-object v2, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v2, v0, p1}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 16
    invoke-virtual {v0}, Lg/a/c/a/n$a;->a()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 17
    new-instance v0, Lg/a/c/a/n$a;

    invoke-direct {v0}, Lg/a/c/a/n$a;-><init>()V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 19
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v1, v0, p1}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {p1, v0, p2}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 21
    instance-of p1, p3, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Lg/a/c/a/o;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {p1, v0, p3}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 24
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 25
    invoke-virtual {v0}, Lg/a/c/a/n$a;->a()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 26
    new-instance v0, Lg/a/c/a/n$a;

    invoke-direct {v0}, Lg/a/c/a/n$a;-><init>()V

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 28
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v1, v0, p1}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {p1, v0, p2}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 30
    instance-of p1, p3, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p3}, Lg/a/c/a/o;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {p1, v0, p3}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 33
    :goto_0
    iget-object p1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {p1, v0, p4}, Lg/a/c/a/n;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 35
    invoke-virtual {v0}, Lg/a/c/a/n$a;->a()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v0, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v0, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v1, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lg/a/c/a/o;->a:Lg/a/c/a/n;

    invoke-virtual {v2, p1}, Lg/a/c/a/n;->b(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    new-instance p1, Lg/a/c/a/e;

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lg/a/c/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Envelope corrupted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
