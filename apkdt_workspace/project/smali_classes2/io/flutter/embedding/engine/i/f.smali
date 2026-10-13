.class public Lio/flutter/embedding/engine/i/f;
.super Ljava/lang/Object;
.source "MouseCursorChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/i/f$b;
    }
.end annotation


# instance fields
.field public final a:Lg/a/c/a/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lio/flutter/embedding/engine/i/f$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lg/a/c/a/k$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


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
    new-instance v0, Lio/flutter/embedding/engine/i/f$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/i/f$a;-><init>(Lio/flutter/embedding/engine/i/f;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/f;->c:Lg/a/c/a/k$c;

    .line 3
    new-instance v0, Lg/a/c/a/k;

    sget-object v1, Lg/a/c/a/o;->b:Lg/a/c/a/o;

    const-string v2, "flutter/mousecursor"

    invoke-direct {v0, p1, v2, v1}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;Lg/a/c/a/l;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/i/f;->a:Lg/a/c/a/k;

    .line 4
    iget-object p1, p0, Lio/flutter/embedding/engine/i/f;->a:Lg/a/c/a/k;

    iget-object v0, p0, Lio/flutter/embedding/engine/i/f;->c:Lg/a/c/a/k$c;

    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/engine/i/f;)Lio/flutter/embedding/engine/i/f$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/i/f;->b:Lio/flutter/embedding/engine/i/f$b;

    return-object p0
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/i/f$b;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/i/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lio/flutter/embedding/engine/i/f;->b:Lio/flutter/embedding/engine/i/f$b;

    return-void
.end method
