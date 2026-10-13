.class Lio/flutter/embedding/engine/c$b;
.super Ljava/lang/Object;
.source "FlutterEnginePluginRegistry.java"

# interfaces
.implements Lio/flutter/embedding/engine/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lio/flutter/embedding/engine/f/c;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/f/c;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/f/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/embedding/engine/c$b;->a:Lio/flutter/embedding/engine/f/c;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/f/c;Lio/flutter/embedding/engine/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/c$b;-><init>(Lio/flutter/embedding/engine/f/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/c$b;->a:Lio/flutter/embedding/engine/f/c;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/f/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
