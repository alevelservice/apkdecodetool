.class public Lio/flutter/embedding/engine/i/j;
.super Ljava/lang/Object;
.source "RestorationChannel.java"


# instance fields
.field public final a:Z

.field private b:[B

.field private c:Lg/a/c/a/k;

.field private d:Lg/a/c/a/k$d;

.field private e:Z

.field private f:Z

.field private final g:Lg/a/c/a/k$c;


# direct methods
.method constructor <init>(Lg/a/c/a/k;Z)V
    .locals 1
    .param p2    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/flutter/embedding/engine/i/j;->e:Z

    .line 4
    iput-boolean v0, p0, Lio/flutter/embedding/engine/i/j;->f:Z

    .line 5
    new-instance v0, Lio/flutter/embedding/engine/i/j$b;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/i/j$b;-><init>(Lio/flutter/embedding/engine/i/j;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/j;->g:Lg/a/c/a/k$c;

    .line 6
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j;->c:Lg/a/c/a/k;

    .line 7
    iput-boolean p2, p0, Lio/flutter/embedding/engine/i/j;->a:Z

    .line 8
    iget-object p2, p0, Lio/flutter/embedding/engine/i/j;->g:Lg/a/c/a/k$c;

    invoke-virtual {p1, p2}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/e/a;Z)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Z
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lg/a/c/a/k;

    sget-object v1, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    const-string v2, "flutter/restoration"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V

    invoke-direct {p0, v0, p2}, Lio/flutter/embedding/engine/i/j;-><init>(Lg/a/c/a/k;Z)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/j;Lg/a/c/a/k$d;)Lg/a/c/a/k$d;
    .locals 0

    .line 4
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j;->d:Lg/a/c/a/k$d;

    return-object p1
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/j;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lio/flutter/embedding/engine/i/j;->f:Z

    return p1
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/j;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    return-object p0
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/j;[B)[B
    .locals 0

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    return-object p1
.end method

.method static synthetic b(Lio/flutter/embedding/engine/i/j;[B)Ljava/util/Map;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/i/j;->b([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private b([B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lio/flutter/embedding/engine/i/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/embedding/engine/i/j;->e:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    return-void
.end method

.method public a([B)V
    .locals 3

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lio/flutter/embedding/engine/i/j;->e:Z

    .line 6
    iget-object v0, p0, Lio/flutter/embedding/engine/i/j;->d:Lg/a/c/a/k$d;

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/i/j;->b([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lio/flutter/embedding/engine/i/j;->d:Lg/a/c/a/k$d;

    .line 9
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/i/j;->f:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lio/flutter/embedding/engine/i/j;->c:Lg/a/c/a/k;

    .line 12
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/i/j;->b([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lio/flutter/embedding/engine/i/j$a;

    invoke-direct {v2, p0, p1}, Lio/flutter/embedding/engine/i/j$a;-><init>(Lio/flutter/embedding/engine/i/j;[B)V

    const-string p1, "push"

    .line 13
    invoke-virtual {v0, p1, v1, v2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    goto :goto_0

    .line 14
    :cond_1
    iput-object p1, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    :goto_0
    return-void
.end method

.method public b()[B
    .locals 1

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/i/j;->b:[B

    return-object v0
.end method
