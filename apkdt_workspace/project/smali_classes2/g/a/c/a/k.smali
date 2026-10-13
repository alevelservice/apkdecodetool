.class public Lg/a/c/a/k;
.super Ljava/lang/Object;
.source "MethodChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/a/c/a/k$a;,
        Lg/a/c/a/k$b;,
        Lg/a/c/a/k$d;,
        Lg/a/c/a/k$c;
    }
.end annotation


# instance fields
.field private final a:Lg/a/c/a/c;

.field private final b:Ljava/lang/String;

.field private final c:Lg/a/c/a/l;


# direct methods
.method public constructor <init>(Lg/a/c/a/c;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    invoke-direct {p0, p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V

    return-void
.end method

.method public constructor <init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/a/c/a/k;->a:Lg/a/c/a/c;

    .line 4
    iput-object p2, p0, Lg/a/c/a/k;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lg/a/c/a/k;->c:Lg/a/c/a/l;

    return-void
.end method

.method static synthetic a(Lg/a/c/a/k;)Lg/a/c/a/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/k;->c:Lg/a/c/a/l;

    return-object p0
.end method

.method static synthetic b(Lg/a/c/a/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a/c/a/k;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lg/a/c/a/k$c;)V
    .locals 3
    .param p1    # Lg/a/c/a/k$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 6
    iget-object v0, p0, Lg/a/c/a/k;->a:Lg/a/c/a/c;

    iget-object v1, p0, Lg/a/c/a/k;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lg/a/c/a/k$a;

    invoke-direct {v2, p0, p1}, Lg/a/c/a/k$a;-><init>(Lg/a/c/a/k;Lg/a/c/a/k$c;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lg/a/c/a/c;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 3
    iget-object v0, p0, Lg/a/c/a/k;->a:Lg/a/c/a/c;

    iget-object v1, p0, Lg/a/c/a/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lg/a/c/a/k;->c:Lg/a/c/a/l;

    new-instance v3, Lg/a/c/a/j;

    invoke-direct {v3, p1, p2}, Lg/a/c/a/j;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-interface {v2, v3}, Lg/a/c/a/l;->a(Lg/a/c/a/j;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lg/a/c/a/k$b;

    invoke-direct {p2, p0, p3}, Lg/a/c/a/k$b;-><init>(Lg/a/c/a/k;Lg/a/c/a/k$d;)V

    .line 5
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lg/a/c/a/c;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method
