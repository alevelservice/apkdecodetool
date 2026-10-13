.class Lio/flutter/embedding/engine/e/a$d;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lg/a/c/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final e:Lio/flutter/embedding/engine/e/b;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/e/b;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/e/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/engine/e/a$d;->e:Lio/flutter/embedding/engine/e/b;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/e/b;Lio/flutter/embedding/engine/e/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/e/a$d;-><init>(Lio/flutter/embedding/engine/e/b;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a$d;->e:Lio/flutter/embedding/engine/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lio/flutter/embedding/engine/e/b;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lg/a/c/a/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a$d;->e:Lio/flutter/embedding/engine/e/b;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/e/b;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg/a/c/a/c$b;)V

    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lg/a/c/a/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/e/a$d;->e:Lio/flutter/embedding/engine/e/b;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/e/b;->setMessageHandler(Ljava/lang/String;Lg/a/c/a/c$a;)V

    return-void
.end method
