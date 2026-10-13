.class public Lio/flutter/embedding/engine/i/i;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/i$d;,
        Lio/flutter/embedding/engine/i/i$c;,
        Lio/flutter/embedding/engine/i/i$b;,
        Lio/flutter/embedding/engine/i/i$e;
    }
.end annotation


# instance fields
.field private final a:Lg/a/c/a/k;

.field private b:Lio/flutter/embedding/engine/i/i$e;

.field private final c:Lg/a/c/a/k$c;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/e/a;)V
    .locals 3
    .param p1    # Lio/flutter/embedding/engine/e/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/embedding/engine/i/i$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/i/i$a;-><init>(Lio/flutter/embedding/engine/i/i;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/i;->c:Lg/a/c/a/k$c;

    .line 3
    new-instance v0, Lg/a/c/a/k;

    sget-object v1, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    const-string v2, "flutter/platform_views"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/i;->a:Lg/a/c/a/k;

    .line 4
    iget-object p1, p0, Lio/flutter/embedding/engine/i/i;->a:Lg/a/c/a/k;

    iget-object v0, p0, Lio/flutter/embedding/engine/i/i;->c:Lg/a/c/a/k$c;

    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/i;)Lio/flutter/embedding/engine/i/i$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/i/i;->b:Lio/flutter/embedding/engine/i/i$e;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lio/flutter/embedding/engine/i/i;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/flutter/embedding/engine/i/i;->a:Lg/a/c/a/k;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "viewFocused"

    invoke-virtual {v0, v1, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lio/flutter/embedding/engine/i/i$e;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/i/i$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lio/flutter/embedding/engine/i/i;->b:Lio/flutter/embedding/engine/i/i$e;

    return-void
.end method
