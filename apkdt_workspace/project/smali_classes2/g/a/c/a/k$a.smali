.class final Lg/a/c/a/k$a;
.super Ljava/lang/Object;
.source "MethodChannel.java"

# interfaces
.implements Lg/a/c/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/c/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lg/a/c/a/k$c;

.field final synthetic b:Lg/a/c/a/k;


# direct methods
.method constructor <init>(Lg/a/c/a/k;Lg/a/c/a/k$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/a/c/a/k$a;->b:Lg/a/c/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lg/a/c/a/k$a;->a:Lg/a/c/a/k$c;

    return-void
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lg/a/c/a/k$a;->b:Lg/a/c/a/k;

    invoke-static {v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k;)Lg/a/c/a/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lg/a/c/a/l;->a(Ljava/nio/ByteBuffer;)Lg/a/c/a/j;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/a/c/a/k$a;->a:Lg/a/c/a/k$c;

    new-instance v1, Lg/a/c/a/k$a$a;

    invoke-direct {v1, p0, p2}, Lg/a/c/a/k$a$a;-><init>(Lg/a/c/a/k$a;Lg/a/c/a/c$b;)V

    invoke-interface {v0, p1, v1}, Lg/a/c/a/k$c;->onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/a/c/a/k$a;->b:Lg/a/c/a/k;

    invoke-static {v1}, Lg/a/c/a/k;->b(Lg/a/c/a/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lg/a/c/a/k$a;->b:Lg/a/c/a/k;

    .line 5
    invoke-static {v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k;)Lg/a/c/a/l;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lg/a/c/a/k$a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error"

    .line 7
    invoke-interface {v0, v3, v1, v2, p1}, Lg/a/c/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    invoke-interface {p2, p1}, Lg/a/c/a/c$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
